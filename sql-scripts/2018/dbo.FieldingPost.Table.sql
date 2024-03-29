USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[FieldingPost]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldingPost](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](10) NOT NULL,
	[POS] [nvarchar](2) NOT NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[InnOuts] [smallint] NULL,
	[PO] [smallint] NULL,
	[A] [smallint] NULL,
	[E] [smallint] NULL,
	[DP] [smallint] NULL,
	[TP] [smallint] NULL,
	[PB] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
 CONSTRAINT [PK_FieldingPost] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[round] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FieldingPost]  WITH CHECK ADD  CONSTRAINT [FK_FieldingPost_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[FieldingPost] CHECK CONSTRAINT [FK_FieldingPost_People]
GO
ALTER TABLE [dbo].[FieldingPost]  WITH CHECK ADD  CONSTRAINT [FK_FieldingPost_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[FieldingPost] CHECK CONSTRAINT [FK_FieldingPost_Teams]
GO
