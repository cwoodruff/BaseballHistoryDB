USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[TeamsHalf]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsHalf](
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[Half] [nvarchar](1) NOT NULL,
	[divID] [nvarchar](1) NULL,
	[DivWin] [nvarchar](1) NULL,
	[Rank] [smallint] NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
 CONSTRAINT [PK_TeamsHalf] PRIMARY KEY CLUSTERED 
(
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[Half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeamsHalf]  WITH CHECK ADD  CONSTRAINT [FK_TeamsHalf_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[TeamsHalf] CHECK CONSTRAINT [FK_TeamsHalf_Teams]
GO
