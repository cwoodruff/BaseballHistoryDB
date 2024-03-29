USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[AllstarFull]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllstarFull](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[gameID] [nvarchar](12) NOT NULL,
	[gameNum] [smallint] NULL,
	[GP] [smallint] NULL,
	[startingPos] [smallint] NULL,
 CONSTRAINT [PK_AllstarFull] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC,
	[gameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AllstarFull]  WITH CHECK ADD  CONSTRAINT [FK_AllstarFull_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AllstarFull] CHECK CONSTRAINT [FK_AllstarFull_People]
GO
ALTER TABLE [dbo].[AllstarFull]  WITH CHECK ADD  CONSTRAINT [FK_AllstarFull_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[AllstarFull] CHECK CONSTRAINT [FK_AllstarFull_Teams]
GO
