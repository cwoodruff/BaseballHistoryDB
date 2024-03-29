USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Appearances]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appearances](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[G_all] [smallint] NULL,
	[GS] [smallint] NULL,
	[G_batting] [smallint] NULL,
	[G_defense] [smallint] NULL,
	[G_p] [smallint] NULL,
	[G_c] [smallint] NULL,
	[G_1b] [smallint] NULL,
	[G_2b] [smallint] NULL,
	[G_3b] [smallint] NULL,
	[G_ss] [smallint] NULL,
	[G_lf] [smallint] NULL,
	[G_cf] [smallint] NULL,
	[G_rf] [smallint] NULL,
	[G_of] [smallint] NULL,
	[G_dh] [smallint] NULL,
	[G_ph] [smallint] NULL,
	[G_pr] [smallint] NULL,
 CONSTRAINT [PK_Appearances] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appearances]  WITH CHECK ADD  CONSTRAINT [FK_Appearances_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Appearances] CHECK CONSTRAINT [FK_Appearances_People]
GO
ALTER TABLE [dbo].[Appearances]  WITH CHECK ADD  CONSTRAINT [FK_Appearances_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Appearances] CHECK CONSTRAINT [FK_Appearances_Teams]
GO
