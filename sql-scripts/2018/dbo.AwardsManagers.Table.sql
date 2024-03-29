USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[AwardsManagers]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsManagers](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[awardID] [nvarchar](75) NOT NULL,
	[tie] [nvarchar](1) NULL,
	[notes] [nvarchar](100) NULL,
 CONSTRAINT [PK_AwardsManagers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AwardsManagers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsManagers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsManagers] CHECK CONSTRAINT [FK_AwardsManagers_People]
GO
