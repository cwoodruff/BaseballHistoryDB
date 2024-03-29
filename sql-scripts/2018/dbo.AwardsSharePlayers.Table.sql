USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[AwardsSharePlayers]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsSharePlayers](
	[playerID] [nvarchar](9) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[awardID] [nvarchar](25) NOT NULL,
	[pointsWon] [float] NULL,
	[pointsMax] [smallint] NULL,
	[votesFirst] [float] NULL,
 CONSTRAINT [PK_AwardsSharePlayers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AwardsSharePlayers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsSharePlayers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsSharePlayers] CHECK CONSTRAINT [FK_AwardsSharePlayers_People]
GO
