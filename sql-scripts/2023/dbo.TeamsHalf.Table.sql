USE [BaseballStats2022]
GO
/****** Object:  Table [dbo].[TeamsHalf]    Script Date: 7/2/2023 11:30:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsHalf](
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[Half] [nvarchar](1) NOT NULL,
	[divID] [nvarchar](1) NULL,
	[DivWin] [nvarchar](1) NULL,
	[Rank] [smallint] NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
 CONSTRAINT [PK_TeamsHalf] PRIMARY KEY CLUSTERED 
(
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC,
	[Half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'ATL', N'NL', 1981, N'1', N'W', N'N', 4, 54, 25, 29)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'ATL', N'NL', 1981, N'2', N'W', N'N', 5, 52, 25, 27)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'BAL', N'AL', 1981, N'1', N'E', N'N', 2, 54, 31, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'BAL', N'AL', 1981, N'2', N'E', N'N', 4, 51, 28, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'BOS', N'AL', 1981, N'1', N'E', N'N', 5, 56, 30, 26)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'BOS', N'AL', 1981, N'2', N'E', N'N', 2, 52, 29, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CAL', N'AL', 1981, N'1', N'W', N'N', 4, 60, 31, 29)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CAL', N'AL', 1981, N'2', N'W', N'N', 6, 50, 20, 30)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CHA', N'AL', 1981, N'1', N'W', N'N', 3, 53, 31, 22)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CHA', N'AL', 1981, N'2', N'W', N'N', 6, 53, 23, 30)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CHN', N'NL', 1981, N'1', N'E', N'N', 6, 52, 15, 37)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CHN', N'NL', 1981, N'2', N'E', N'N', 5, 51, 23, 28)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CIN', N'NL', 1981, N'1', N'W', N'N', 2, 56, 35, 21)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CIN', N'NL', 1981, N'2', N'W', N'N', 2, 52, 31, 21)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CLE', N'AL', 1981, N'1', N'E', N'N', 6, 50, 26, 24)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'CLE', N'AL', 1981, N'2', N'E', N'N', 5, 53, 26, 27)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'DET', N'AL', 1981, N'1', N'E', N'N', 4, 57, 31, 26)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'DET', N'AL', 1981, N'2', N'E', N'N', 2, 52, 29, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'HOU', N'NL', 1981, N'1', N'W', N'N', 3, 57, 28, 29)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'HOU', N'NL', 1981, N'2', N'W', N'N', 1, 53, 33, 20)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'KCA', N'AL', 1981, N'1', N'W', N'N', 5, 50, 20, 30)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'KCA', N'AL', 1981, N'2', N'W', N'N', 1, 53, 30, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'LAN', N'NL', 1981, N'1', N'W', N'N', 1, 57, 36, 21)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'LAN', N'NL', 1981, N'2', N'W', N'N', 4, 53, 27, 26)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'MIN', N'AL', 1981, N'1', N'W', N'N', 7, 56, 17, 39)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'MIN', N'AL', 1981, N'2', N'W', N'N', 4, 53, 24, 29)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'ML4', N'AL', 1981, N'1', N'E', N'N', 3, 56, 31, 25)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'ML4', N'AL', 1981, N'2', N'E', N'N', 1, 53, 31, 22)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'MON', N'NL', 1981, N'1', N'E', N'N', 3, 55, 30, 25)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'MON', N'NL', 1981, N'2', N'E', N'N', 1, 53, 30, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'NYA', N'AL', 1981, N'1', N'E', N'N', 1, 56, 34, 22)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'NYA', N'AL', 1981, N'2', N'E', N'N', 5, 51, 25, 26)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'NYN', N'NL', 1981, N'1', N'E', N'N', 5, 51, 17, 34)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'NYN', N'NL', 1981, N'2', N'E', N'N', 4, 52, 24, 28)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'OAK', N'AL', 1981, N'1', N'W', N'N', 1, 60, 37, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'OAK', N'AL', 1981, N'2', N'W', N'N', 2, 49, 27, 22)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'PHI', N'NL', 1981, N'1', N'E', N'N', 1, 55, 34, 21)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'PHI', N'NL', 1981, N'2', N'E', N'N', 3, 52, 25, 27)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'PIT', N'NL', 1981, N'1', N'E', N'N', 4, 48, 25, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'PIT', N'NL', 1981, N'2', N'E', N'N', 6, 54, 21, 33)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SDN', N'NL', 1981, N'1', N'W', N'N', 6, 56, 23, 33)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SDN', N'NL', 1981, N'2', N'W', N'N', 6, 54, 18, 36)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SEA', N'AL', 1981, N'1', N'W', N'N', 6, 57, 21, 36)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SEA', N'AL', 1981, N'2', N'W', N'N', 5, 52, 23, 29)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SFN', N'NL', 1981, N'1', N'W', N'N', 5, 59, 27, 32)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SFN', N'NL', 1981, N'2', N'W', N'N', 3, 52, 29, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SLN', N'NL', 1981, N'1', N'E', N'N', 2, 50, 30, 20)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'SLN', N'NL', 1981, N'2', N'E', N'N', 2, 52, 29, 23)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'TEX', N'AL', 1981, N'1', N'W', N'N', 2, 55, 33, 22)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'TEX', N'AL', 1981, N'2', N'W', N'N', 3, 50, 24, 26)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'TOR', N'AL', 1981, N'1', N'E', N'N', 7, 58, 16, 42)
INSERT [dbo].[TeamsHalf] ([teamID], [lgID], [yearID], [Half], [divID], [DivWin], [Rank], [G], [W], [L]) VALUES (N'TOR', N'AL', 1981, N'2', N'E', N'N', 6, 48, 21, 27)
GO
ALTER TABLE [dbo].[TeamsHalf]  WITH CHECK ADD  CONSTRAINT [FK_TeamsHalf_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[TeamsHalf] CHECK CONSTRAINT [FK_TeamsHalf_Teams]
GO
