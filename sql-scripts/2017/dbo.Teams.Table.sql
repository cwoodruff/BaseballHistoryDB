USE [BaseballStats]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 7/19/2018 5:46:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[franchID] [nvarchar](3) NULL,
	[divID] [nvarchar](1) NULL,
	[Rank] [smallint] NULL,
	[G] [smallint] NULL,
	[Ghome] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[DivWin] [nvarchar](1) NULL,
	[WCWin] [nvarchar](1) NULL,
	[LgWin] [nvarchar](1) NULL,
	[WSWin] [nvarchar](1) NULL,
	[R] [smallint] NULL,
	[AB] [smallint] NULL,
	[H] [smallint] NULL,
	[2B] [smallint] NULL,
	[3B] [smallint] NULL,
	[HR] [smallint] NULL,
	[BB] [smallint] NULL,
	[SO] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[HBP] [smallint] NULL,
	[SF] [smallint] NULL,
	[RA] [smallint] NULL,
	[ER] [smallint] NULL,
	[ERA] [float] NULL,
	[CG] [smallint] NULL,
	[SHO] [smallint] NULL,
	[SV] [smallint] NULL,
	[IPouts] [int] NULL,
	[HA] [smallint] NULL,
	[HRA] [smallint] NULL,
	[BBA] [smallint] NULL,
	[SOA] [smallint] NULL,
	[E] [int] NULL,
	[DP] [int] NULL,
	[FP] [smallint] NULL,
	[name] [nvarchar](50) NULL,
	[park] [nvarchar](255) NULL,
	[attendance] [int] NULL,
	[BPF] [int] NULL,
	[PPF] [int] NULL,
	[teamIDBR] [nvarchar](3) NULL,
	[teamIDlahman45] [nvarchar](3) NULL,
	[teamIDretro] [nvarchar](3) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_TeamsFranchises] FOREIGN KEY([franchID])
REFERENCES [dbo].[TeamsFranchises] ([franchID])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_TeamsFranchises]
GO
