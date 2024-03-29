USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[CollegePlaying]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollegePlaying](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[schoolID] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_CollegePlaying] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[schoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CollegePlaying]  WITH CHECK ADD  CONSTRAINT [FK_CollegePlaying_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[CollegePlaying] CHECK CONSTRAINT [FK_CollegePlaying_People]
GO
ALTER TABLE [dbo].[CollegePlaying]  WITH NOCHECK ADD  CONSTRAINT [FK_CollegePlaying_Schools] FOREIGN KEY([schoolID])
REFERENCES [dbo].[Schools] ([schoolID])
GO
ALTER TABLE [dbo].[CollegePlaying] CHECK CONSTRAINT [FK_CollegePlaying_Schools]
GO
