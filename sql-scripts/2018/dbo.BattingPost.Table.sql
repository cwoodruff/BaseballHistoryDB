USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[BattingPost]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BattingPost](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](10) NOT NULL,
	[G] [smallint] NULL,
	[AB] [smallint] NULL,
	[R] [smallint] NULL,
	[H] [smallint] NULL,
	[2B] [smallint] NULL,
	[3B] [smallint] NULL,
	[HR] [smallint] NULL,
	[RBI] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[BB] [smallint] NULL,
	[SO] [smallint] NULL,
	[IBB] [smallint] NULL,
	[HBP] [smallint] NULL,
	[SH] [smallint] NULL,
	[SF] [smallint] NULL,
	[GIDP] [smallint] NULL,
 CONSTRAINT [PK_BattingPost] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BattingPost]  WITH CHECK ADD  CONSTRAINT [FK_BattingPost_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[BattingPost] CHECK CONSTRAINT [FK_BattingPost_People]
GO
ALTER TABLE [dbo].[BattingPost]  WITH CHECK ADD  CONSTRAINT [FK_BattingPost_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[BattingPost] CHECK CONSTRAINT [FK_BattingPost_Teams]
GO
