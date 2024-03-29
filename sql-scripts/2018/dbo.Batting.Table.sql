USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Batting]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batting](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
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
 CONSTRAINT [PK_Batting] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Batting]  WITH CHECK ADD  CONSTRAINT [FK_Batting_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Batting] CHECK CONSTRAINT [FK_Batting_People]
GO
ALTER TABLE [dbo].[Batting]  WITH CHECK ADD  CONSTRAINT [FK_Batting_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Batting] CHECK CONSTRAINT [FK_Batting_Teams]
GO
