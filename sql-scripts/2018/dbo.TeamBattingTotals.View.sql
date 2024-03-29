USE [BaseballStats]
GO
/****** Object:  View [dbo].[TeamBattingTotals]    Script Date: 1/9/2019 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamBattingTotals]
AS
SELECT     TOP (100) PERCENT teamID, yearID, lgID, SUM(G) AS G, SUM(AB) AS AB, SUM(R) AS R, SUM(H) AS H, SUM([2B]) AS _2B, SUM([3B]) AS _3B, SUM(HR) 
                      AS HR, SUM(RBI) AS RBI, SUM(SB) AS SB, SUM(CS) AS CS, SUM(BB) AS BB, SUM(SO) AS SO, SUM(IBB) AS IBB, SUM(HBP) AS HPB, SUM(SH) AS SH, SUM(SF) AS SF, 
                      SUM(GIDP) AS GIDP
FROM         dbo.Batting
GROUP BY teamID, yearID, lgID
ORDER BY teamID, yearID, lgID
GO
