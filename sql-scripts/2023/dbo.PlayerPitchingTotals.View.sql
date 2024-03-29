USE [BaseballStats2022]
GO
/****** Object:  View [dbo].[PlayerPitchingTotals]    Script Date: 7/3/2023 12:29:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerPitchingTotals]
AS
SELECT     TOP (100) PERCENT playerID, SUM(W) AS W, SUM(L) AS L, SUM(G) AS G, SUM(GS) AS GS, SUM(CG) AS CG, SUM(SHO) AS SHO, SUM(SV) AS SV, SUM(IPouts) 
                      AS IPouts, SUM(H) AS H, SUM(ER) AS ER, SUM(HR) AS HR, SUM(BB) AS BB, SUM(SO) AS SO, SUM(BAOpp) AS BAOpp, SUM(IBB) AS IBB, SUM(WP) AS WP, SUM(HBP) 
                      AS HBP, SUM(BK) AS BK, SUM(BFP) AS BFP, SUM(GF) AS GF, SUM(R) AS R, SUM(SH) AS SH, SUM(SF) AS SF, SUM(GIDP) AS GIDP
FROM         dbo.Pitching
GROUP BY playerID
ORDER BY playerID
GO
