USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[HomeGames]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeGames](
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[parkID] [nvarchar](6) NOT NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[games] [smallint] NULL,
	[openings] [smallint] NULL,
	[attendance] [int] NULL,
 CONSTRAINT [PK_HomeGames] PRIMARY KEY CLUSTERED 
(
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[parkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HomeGames]  WITH CHECK ADD  CONSTRAINT [FK_HomeGames_Parks] FOREIGN KEY([parkID])
REFERENCES [dbo].[Parks] ([parkID])
GO
ALTER TABLE [dbo].[HomeGames] CHECK CONSTRAINT [FK_HomeGames_Parks]
GO
ALTER TABLE [dbo].[HomeGames]  WITH CHECK ADD  CONSTRAINT [FK_HomeGames_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[HomeGames] CHECK CONSTRAINT [FK_HomeGames_Teams]
GO
