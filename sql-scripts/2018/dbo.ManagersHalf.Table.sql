USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[ManagersHalf]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagersHalf](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[inseason] [smallint] NOT NULL,
	[half] [smallint] NOT NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[rank] [smallint] NULL,
 CONSTRAINT [PK_ManagersHalf_1] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[inseason] ASC,
	[half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ManagersHalf]  WITH CHECK ADD  CONSTRAINT [FK_ManagersHalf_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[ManagersHalf] CHECK CONSTRAINT [FK_ManagersHalf_People]
GO
ALTER TABLE [dbo].[ManagersHalf]  WITH CHECK ADD  CONSTRAINT [FK_ManagersHalf_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[ManagersHalf] CHECK CONSTRAINT [FK_ManagersHalf_Teams]
GO
