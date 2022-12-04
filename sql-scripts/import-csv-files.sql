CREATE TABLE ALLFILENAMES
(
             WHICHPATH VARCHAR(255)
            ,WHICHFILE VARCHAR(255)
)

DECLARE @filename VARCHAR(255),
        @path     VARCHAR(255),
        @sql      VARCHAR(8000),
        @cmd      VARCHAR(1000)

SET @path = 'C:\projects\BaseballStats\'
SET @cmd = 'dir ' + @path + '*.csv /b'

INSERT INTO ALLFILENAMES(WHICHFILE)
EXEC Master..xp_cmdShell @cmd

UPDATE ALLFILENAMES
  SET WHICHPATH = @path
WHERE WHICHPATH IS NULL

DECLARE c1 CURSOR
FOR SELECT WHICHPATH
          ,WHICHFILE
    FROM ALLFILENAMES
    WHERE WHICHFILE LIKE '%.csv%'

OPEN c1

FETCH NEXT FROM c1 INTO @path,
                        @filename

WHILE @@fetch_status <> -1
BEGIN
    CREATE TABLE #Header
    (
                 HeadString NVARCHAR(MAX)
    )
    DECLARE @Columns NVARCHAR(MAX) = ''
    DECLARE @Query NVARCHAR(MAX) = ''
    DECLARE @QUERY2 NVARCHAR(MAX) = ''
    DECLARE @HeaderQuery NVARCHAR(MAX) = ''

    SELECT @HeaderQuery = @HeaderQuery + 'bulk insert #Header from ''' + @path + @filename + '''  
        with(firstrow=1,lastrow=1)'
    EXEC (@HeaderQuery)

    SELECT @Columns = (SELECT QUOTENAME(value) + ' nvarchar(max)' + ','
                       FROM #Header
                            CROSS APPLY STRING_SPLIT(HeadString,',') FOR xml PATH(''))
    IF ISNULL(@Columns,'') <> ''
    BEGIN
        SET @Columns = LEFT(@Columns,LEN(@Columns) - 1)

        SELECT @Query = @Query + 'CREATE TABLE ' + Replace(@filename,'.csv','') + ' (' + replace(@Columns,'"','') + ')'
        PRINT @Query
        EXEC (@QUERY)
    END

    SELECT @QUERY2 = @QUERY2 + 'bulk insert ' + replace(Replace(@filename,'.csv',''),'.TPS','') + ' from ''' + @path + @filename + '''  
        with(firstrow=2,FORMAT=''csv'',FIELDTERMINATOR='','',ROWTERMINATOR=''\n'')'
    EXEC (@QUERY2)

    DROP TABLE #Header
    FETCH NEXT FROM c1 INTO @path,
                            @filename
END

CLOSE c1

DEALLOCATE c1