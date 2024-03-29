USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[AwardsShareManagers]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsShareManagers](
	[playerID] [nvarchar](9) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[awardID] [nvarchar](25) NOT NULL,
	[pointsWon] [smallint] NULL,
	[pointsMax] [smallint] NULL,
	[votesFirst] [smallint] NULL,
 CONSTRAINT [PK_AwardsShareManagers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AwardsShareManagers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsShareManagers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsShareManagers] CHECK CONSTRAINT [FK_AwardsShareManagers_People]
GO
