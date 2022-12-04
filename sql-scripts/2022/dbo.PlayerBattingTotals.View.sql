USE [BaseballStats]
GO
/****** Object:  View [dbo].[PlayerBattingTotals]    Script Date: 12/4/2022 8:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerBattingTotals]
AS
SELECT     TOP (100) PERCENT playerID, SUM(G) AS G, SUM(AB) AS AB, SUM(R) AS R, SUM(H) AS H, SUM([2B]) AS [2B], SUM([3B]) AS [3B], SUM(HR) 
                      AS HR, SUM(RBI) AS RBI, SUM(SB) AS SB, SUM(CS) AS CS, SUM(BB) AS BB, SUM(SO) AS SO, SUM(IBB) AS IBB, SUM(HBP) AS HPB, SUM(SH) AS SH, SUM(SF) AS SF, 
                      SUM(GIDP) AS GIDP
FROM         dbo.Batting
GROUP BY playerID
ORDER BY playerID
GO
