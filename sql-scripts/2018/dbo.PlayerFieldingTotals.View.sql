USE [BaseballStats]
GO
/****** Object:  View [dbo].[PlayerFieldingTotals]    Script Date: 1/9/2019 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerFieldingTotals]
AS
SELECT     TOP (100) PERCENT playerID, POS, SUM(G) AS G, SUM(GS) AS GS, SUM(InnOuts) AS InnOuts, SUM(PO) AS PO, SUM(A) AS A, SUM(E) AS E, SUM(DP) AS DP, SUM(PB) 
                      AS PB, SUM(WP) AS WP, SUM(SB) AS SB, SUM(CS) AS CS, SUM(ZR) AS ZR
FROM         dbo.Fielding
GROUP BY playerID, POS
ORDER BY playerID
GO
