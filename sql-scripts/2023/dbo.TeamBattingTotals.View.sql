USE [BaseballStats2022]
GO
/****** Object:  View [dbo].[TeamBattingTotals]    Script Date: 7/2/2023 11:30:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamBattingTotals]
AS
SELECT     TOP (100) PERCENT teamID, yearID, lgID, SUM(G) AS G, SUM(AB) AS AB, SUM(R) AS R, SUM(H) AS H, SUM([2B]) AS [2B], SUM([3B]) AS [3B], SUM(HR) 
                      AS HR, SUM(RBI) AS RBI, SUM(SB) AS SB, SUM(CS) AS CS, SUM(BB) AS BB, SUM(SO) AS SO, SUM(IBB) AS IBB, SUM(HBP) AS HPB, SUM(SH) AS SH, SUM(SF) AS SF, 
                      SUM(GIDP) AS GIDP
FROM         dbo.Batting
GROUP BY teamID, yearID, lgID
ORDER BY teamID, yearID, lgID
GO
