USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[HallOfFame]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HallOfFame](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[votedBy] [nvarchar](64) NOT NULL,
	[ballots] [smallint] NULL,
	[needed] [smallint] NULL,
	[votes] [smallint] NULL,
	[inducted] [nvarchar](1) NULL,
	[category] [nvarchar](20) NULL,
	[needed_note] [nvarchar](25) NULL,
 CONSTRAINT [PK_HallOfFame] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[votedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HallOfFame]  WITH CHECK ADD  CONSTRAINT [FK_HallOfFame_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[HallOfFame] CHECK CONSTRAINT [FK_HallOfFame_People]
GO
