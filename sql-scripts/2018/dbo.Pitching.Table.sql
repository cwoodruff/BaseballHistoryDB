USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Pitching]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pitching](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[CG] [smallint] NULL,
	[SHO] [smallint] NULL,
	[SV] [smallint] NULL,
	[IPouts] [int] NULL,
	[H] [smallint] NULL,
	[ER] [smallint] NULL,
	[HR] [smallint] NULL,
	[BB] [smallint] NULL,
	[SO] [smallint] NULL,
	[BAOpp] [float] NULL,
	[ERA] [float] NULL,
	[IBB] [smallint] NULL,
	[WP] [smallint] NULL,
	[HBP] [smallint] NULL,
	[BK] [smallint] NULL,
	[BFP] [smallint] NULL,
	[GF] [smallint] NULL,
	[R] [smallint] NULL,
	[SH] [smallint] NULL,
	[SF] [smallint] NULL,
	[GIDP] [smallint] NULL,
 CONSTRAINT [PK_Pitching] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pitching]  WITH CHECK ADD  CONSTRAINT [FK_Pitching_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Pitching] CHECK CONSTRAINT [FK_Pitching_People]
GO
ALTER TABLE [dbo].[Pitching]  WITH CHECK ADD  CONSTRAINT [FK_Pitching_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Pitching] CHECK CONSTRAINT [FK_Pitching_Teams]
GO
