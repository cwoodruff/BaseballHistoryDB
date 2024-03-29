USE [BaseballStats]
GO
/****** Object:  Table [dbo].[ManagersHalf]    Script Date: 3/13/2021 11:07:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagersHalf](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[inseason] [smallint] NOT NULL,
	[half] [smallint] NOT NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[rank] [smallint] NULL,
 CONSTRAINT [PK_ManagersHalf] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC,
	[inseason] ASC,
	[half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'amalfjo01', N'CHN', N'NL', 1981, 1, 1, 54, 15, 37, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'amalfjo01', N'CHN', N'NL', 1981, 1, 2, 52, 23, 28, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'andersp01', N'DET', N'AL', 1981, 1, 1, 57, 31, 26, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'andersp01', N'DET', N'AL', 1981, 1, 2, 52, 29, 23, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'ansonca01', N'CHN', N'NL', 1892, 1, 1, 71, 31, 39, 8)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'ansonca01', N'CHN', N'NL', 1892, 1, 2, 76, 39, 37, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'barnibi01', N'WAS', N'NL', 1892, 1, 1, 2, 0, 2, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'buckeal99', N'PIT', N'NL', 1892, 1, 1, 29, 15, 14, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'buckeal99', N'PIT', N'NL', 1892, 3, 2, 66, 38, 27, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'burnsto01', N'PIT', N'NL', 1892, 2, 1, 47, 22, 25, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'burnsto01', N'PIT', N'NL', 1892, 2, 2, 13, 5, 7, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'carutbo01', N'SLN', N'NL', 1892, 5, 2, 50, 16, 32, 11)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'chapmja01', N'LS3', N'NL', 1892, 1, 1, 54, 21, 33, 11)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'comisch01', N'CIN', N'NL', 1892, 1, 1, 77, 44, 31, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'comisch01', N'CIN', N'NL', 1892, 1, 2, 78, 38, 37, 8)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'coxbo01', N'ATL', N'NL', 1981, 1, 1, 55, 25, 29, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'coxbo01', N'ATL', N'NL', 1981, 1, 2, 52, 25, 27, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'crookja01', N'SLN', N'NL', 1892, 3, 1, 47, 24, 22, 9)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'crookja01', N'SLN', N'NL', 1892, 3, 2, 15, 3, 11, 11)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'fanniji01', N'MON', N'NL', 1981, 2, 2, 27, 16, 11, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'fregoji01', N'CAL', N'AL', 1981, 1, 1, 47, 22, 25, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'freyji99', N'KCA', N'AL', 1981, 1, 1, 50, 20, 30, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'freyji99', N'KCA', N'AL', 1981, 1, 2, 20, 10, 10, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'garcida99', N'CLE', N'AL', 1981, 1, 1, 50, 26, 24, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'garcida99', N'CLE', N'AL', 1981, 1, 2, 53, 26, 27, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'gardnbi02', N'MIN', N'AL', 1981, 2, 1, 20, 6, 14, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'gardnbi02', N'MIN', N'AL', 1981, 2, 2, 53, 24, 29, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'glassja01', N'SLN', N'NL', 1892, 1, 1, 4, 1, 3, 9)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'gorege01', N'SLN', N'NL', 1892, 4, 2, 16, 6, 9, 11)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'goryljo01', N'MIN', N'AL', 1981, 1, 1, 37, 11, 25, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'greenda02', N'PHI', N'NL', 1981, 1, 1, 55, 34, 21, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'greenda02', N'PHI', N'NL', 1981, 1, 2, 52, 25, 27, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'hanlone01', N'BLN', N'NL', 1892, 3, 1, 56, 17, 39, 12)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'hanlone01', N'BLN', N'NL', 1892, 3, 2, 77, 26, 46, 10)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'herzowh01', N'SLN', N'NL', 1981, 1, 1, 51, 30, 20, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'herzowh01', N'SLN', N'NL', 1981, 1, 2, 52, 29, 23, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'houkra01', N'BOS', N'AL', 1981, 1, 1, 56, 30, 26, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'houkra01', N'BOS', N'AL', 1981, 1, 2, 52, 29, 23, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'howarfr01', N'SDN', N'NL', 1981, 1, 1, 56, 23, 33, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'howarfr01', N'SDN', N'NL', 1981, 1, 2, 54, 18, 36, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'howsedi01', N'KCA', N'AL', 1981, 2, 2, 33, 20, 13, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'irwinar01', N'WAS', N'NL', 1892, 2, 1, 74, 35, 39, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'irwinar01', N'WAS', N'NL', 1892, 2, 2, 34, 11, 21, 12)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'lachere01', N'SEA', N'AL', 1981, 2, 1, 33, 15, 18, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'lachere01', N'SEA', N'AL', 1981, 2, 2, 52, 23, 29, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'larusto01', N'CHA', N'AL', 1981, 1, 1, 53, 31, 22, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'larusto01', N'CHA', N'AL', 1981, 1, 2, 53, 23, 30, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'lasorto01', N'LAN', N'NL', 1981, 1, 1, 57, 36, 21, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'lasorto01', N'LAN', N'NL', 1981, 1, 2, 53, 27, 26, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'lemonbo01', N'NYA', N'AL', 1981, 2, 2, 25, 11, 14, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'martibi02', N'OAK', N'AL', 1981, 1, 1, 60, 37, 23, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'martibi02', N'OAK', N'AL', 1981, 1, 2, 49, 27, 22, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mattibo01', N'TOR', N'AL', 1981, 1, 1, 58, 16, 42, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mattibo01', N'TOR', N'AL', 1981, 1, 2, 48, 21, 27, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mauchge01', N'CAL', N'AL', 1981, 2, 1, 13, 9, 4, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mauchge01', N'CAL', N'AL', 1981, 2, 2, 50, 20, 30, 7)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mcnamjo99', N'CIN', N'NL', 1981, 1, 1, 56, 35, 21, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'mcnamjo99', N'CIN', N'NL', 1981, 1, 2, 52, 31, 21, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'michage01', N'NYA', N'AL', 1981, 1, 1, 56, 34, 22, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'michage01', N'NYA', N'AL', 1981, 1, 2, 26, 14, 12, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'pfefffr01', N'LS3', N'NL', 1892, 2, 1, 23, 9, 14, 11)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'pfefffr01', N'LS3', N'NL', 1892, 2, 2, 77, 33, 42, 9)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'powerpa99', N'NY1', N'NL', 1892, 1, 1, 74, 31, 43, 10)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'powerpa99', N'NY1', N'NL', 1892, 1, 2, 79, 40, 37, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'richada01', N'WAS', N'NL', 1892, 3, 2, 43, 12, 31, 12)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'robinfr02', N'SFN', N'NL', 1981, 1, 1, 59, 27, 32, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'robinfr02', N'SFN', N'NL', 1981, 1, 2, 52, 29, 23, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'rodgebu01', N'ML4', N'AL', 1981, 1, 1, 56, 31, 25, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'rodgebu01', N'ML4', N'AL', 1981, 1, 2, 53, 31, 22, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'seleefr99', N'BSN', N'NL', 1892, 1, 1, 75, 52, 22, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'seleefr99', N'BSN', N'NL', 1892, 1, 2, 77, 50, 26, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'striccu01', N'SLN', N'NL', 1892, 2, 1, 23, 6, 17, 9)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'tannech01', N'PIT', N'NL', 1981, 1, 1, 49, 25, 23, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'tannech01', N'PIT', N'NL', 1981, 1, 2, 54, 21, 33, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'tebeapa01', N'CL4', N'NL', 1892, 1, 1, 74, 40, 33, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'tebeapa01', N'CL4', N'NL', 1892, 1, 2, 79, 53, 23, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'torrejo01', N'NYN', N'NL', 1981, 1, 1, 52, 17, 34, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'torrejo01', N'NYN', N'NL', 1981, 1, 2, 53, 24, 28, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'vanhage01', N'BLN', N'NL', 1892, 1, 1, 11, 1, 10, 12)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'virdobi01', N'HOU', N'NL', 1981, 1, 1, 57, 28, 29, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'virdobi01', N'HOU', N'NL', 1981, 1, 2, 53, 33, 20, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'waltzjo99', N'BLN', N'NL', 1892, 2, 1, 8, 2, 6, 12)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'wardjo01', N'BRO', N'NL', 1892, 1, 1, 78, 51, 26, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'wardjo01', N'BRO', N'NL', 1892, 1, 2, 80, 44, 33, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'weaveea99', N'BAL', N'AL', 1981, 1, 1, 54, 31, 23, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'weaveea99', N'BAL', N'AL', 1981, 1, 2, 51, 28, 23, 4)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'willidi02', N'MON', N'NL', 1981, 1, 1, 55, 30, 25, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'willidi02', N'MON', N'NL', 1981, 1, 2, 26, 14, 12, 1)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'willsma01', N'SEA', N'AL', 1981, 1, 1, 25, 6, 18, 6)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'wrighha01', N'PHI', N'NL', 1892, 1, 1, 77, 46, 30, 3)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'wrighha01', N'PHI', N'NL', 1892, 1, 2, 78, 41, 36, 5)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'zimmedo01', N'TEX', N'AL', 1981, 1, 1, 55, 33, 22, 2)
INSERT [dbo].[ManagersHalf] ([playerID], [teamID], [lgID], [yearID], [inseason], [half], [G], [W], [L], [rank]) VALUES (N'zimmedo01', N'TEX', N'AL', 1981, 1, 2, 50, 24, 26, 3)
GO
ALTER TABLE [dbo].[ManagersHalf]  WITH CHECK ADD  CONSTRAINT [FK_ManagersHalf_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[ManagersHalf] CHECK CONSTRAINT [FK_ManagersHalf_People]
GO
ALTER TABLE [dbo].[ManagersHalf]  WITH CHECK ADD  CONSTRAINT [FK_ManagersHalf_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[ManagersHalf] CHECK CONSTRAINT [FK_ManagersHalf_Teams]
GO
