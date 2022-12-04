USE [BaseballStats]
GO
/****** Object:  Table [dbo].[TeamsFranchises]    Script Date: 12/4/2022 8:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsFranchises](
	[franchID] [nvarchar](3) NOT NULL,
	[franchName] [nvarchar](50) NULL,
	[active] [nvarchar](2) NULL,
	[NAassoc] [nvarchar](3) NULL,
 CONSTRAINT [PK_TeamsFranchises] PRIMARY KEY CLUSTERED 
(
	[franchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ALT', N'Altoona Mountain City', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ANA', N'Los Angeles Angels of Anaheim', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ARI', N'Arizona Diamondbacks', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ATH', N'Philadelphia Athletics', N'N', N'PNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ATL', N'Atlanta Braves', N'Y', N'BNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BAL', N'Baltimore Orioles', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BFB', N'Buffalo Bisons', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BFL', N'Buffalo Bisons', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BLC', N'Baltimore Canaries', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BLO', N'Baltimore Orioles', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BLT', N'Baltimore Terrapins', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BLU', N'Baltimore Monumentals', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BNA', N'Boston Red Stockings', N'NA', N'ATL')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BOS', N'Boston Red Sox', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BRA', N'Brooklyn Atlantics', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BRD', N'Boston Reds', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BRG', N'Brooklyn Gladiators', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BRS', N'Boston Reds', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BTT', N'Brooklyn Tip-Tops', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BUF', N'Buffalo Bisons', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'BWW', N'Brooklyn Ward''s Wonders', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CBK', N'Columbus Buckeyes', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CBL', N'Cleveland Blues', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CEN', N'Philadelphia Centennials', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CFC', N'Cleveland Forest Citys', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CHC', N'Chicago Cubs', N'Y', N'CNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CHH', N'Chicago Whales', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CHP', N'Chicago Pirates', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CHW', N'Chicago White Sox', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CIN', N'Cincinnati Reds', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CKK', N'Cincinnati Kelly''s Killers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CLE', N'Cleveland Indians', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CLI', N'Cleveland Infants', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CLS', N'Columbus Solons', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CLV', N'Cleveland Spiders', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CNA', N'Chicago White Stockings', N'NA', N'CHC')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CNR', N'Cincinnati Reds', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'COL', N'Colorado Rockies', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'COR', N'Cincinnati Outlaw Reds', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'CPI', N'Chicago/Pittsburgh (Union League)', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'DET', N'Detroit Tigers', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'DTN', N'Detroit Wolverines', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ECK', N'Brooklyn Eckfords', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'FLA', N'Florida Marlins', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'HAR', N'Hartford Dark Blues', N'N', N'HNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'HNA', N'Hartford Dark Blues', N'NA', N'HAR')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'HOU', N'Houston Astros', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'IBL', N'Indianapolis Blues', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'IHO', N'Indianapolis Hoosiers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'IND', N'Indianapolis Hoosiers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KCC', N'Kansas City Cowboys', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KCN', N'Kansas City Cowboys', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KCP', N'Kansas City Packers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KCR', N'Kansas City Royals', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KCU', N'Kansas City Cowboys', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'KEK', N'Fort Wayne Kekiongas', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'LAD', N'Los Angeles Dodgers', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'LGR', N'Louisville Grays', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'LOU', N'Louisville Colonels', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MAN', N'Middletown Mansfields', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MAR', N'Baltimore Marylands', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MIL', N'Milwaukee Brewers', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MIN', N'Minnesota Twins', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MLA', N'Milwaukee Brewers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MLG', N'Milwaukee Grays', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'MLU', N'Milwaukee Brewers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NAT', N'Washington Nationals', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NEW', N'Newark Pepper', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NHV', N'New Haven Elm Citys', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NNA', N'New York Mutuals', N'NA', N'NYU')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NYI', N'New York Giants', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NYM', N'New York Mets', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NYP', N'New York Metropolitans', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NYU', N'New York Mutuals', N'N', N'NNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'NYY', N'New York Yankees', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'OAK', N'Oakland Athletics', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'OLY', N'Washington Olympics', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PBB', N'Pittsburgh Burghers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PBS', N'Pittsburgh Rebels', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PHA', N'Philadelphia Athletics', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PHI', N'Philadelphia Phillies', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PHK', N'Philadelphia Keystones', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PHQ', N'Philadelphia Athletics', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PIT', N'Pittsburgh Pirates', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PNA', N'Philadelphia Athletics', N'NA', N'ATH')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PRO', N'Providence Grays', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'PWS', N'Philadelphia White Stockings', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'RES', N'Elizabeth Resolutes', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'RIC', N'Richmond Virginians', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ROC', N'Rochester Broncos', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'ROK', N'Rockford Forest Citys', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SBS', N'St. Louis Brown Stockings', N'N', N'SNA')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SDP', N'San Diego Padres', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SEA', N'Seattle Mariners', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SFG', N'San Francisco Giants', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SLI', N'St. Louis Terriers', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SLM', N'St. Louis Maroons', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SLR', N'St. Louis Red Stockings', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SNA', N'St. Louis Brown Stockings', N'NA', N'SBS')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'STL', N'St. Louis Cardinals', N'Y', N'')
GO
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'STP', N'St. Paul Apostles', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SYR', N'Syracuse Stars', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'SYS', N'Syracuse Stars', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TBD', N'Tampa Bay Rays', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TEX', N'Texas Rangers', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TLM', N'Toledo Maumees', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TOL', N'Toledo Blue Stockings', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TOR', N'Toronto Blue Jays', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TRO', N'Troy Haymakers', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'TRT', N'Troy Trojans', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WAS', N'Washington Senators', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WBL', N'Washington Blue Legs', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WES', N'Keokuk Westerns', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WIL', N'Wilmington Quicksteps', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WNA', N'Washington Nationals', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WNL', N'Washington Nationals', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WNT', N'Washington Nationals', N'NA', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WOR', N'Worcester Ruby Legs', N'N', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WSN', N'Washington Nationals', N'Y', N'')
INSERT [dbo].[TeamsFranchises] ([franchID], [franchName], [active], [NAassoc]) VALUES (N'WST', N'Washington Statesmen', N'N', N'')
GO
