USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Fielding]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fielding](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[POS] [nvarchar](2) NOT NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[InnOuts] [smallint] NULL,
	[PO] [smallint] NULL,
	[A] [smallint] NULL,
	[E] [smallint] NULL,
	[DP] [smallint] NULL,
	[PB] [smallint] NULL,
	[WP] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[ZR] [float] NULL,
 CONSTRAINT [PK_Fielding] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fielding]  WITH CHECK ADD  CONSTRAINT [FK_Fielding_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Fielding] CHECK CONSTRAINT [FK_Fielding_People]
GO
ALTER TABLE [dbo].[Fielding]  WITH CHECK ADD  CONSTRAINT [FK_Fielding_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Fielding] CHECK CONSTRAINT [FK_Fielding_Teams]
GO
