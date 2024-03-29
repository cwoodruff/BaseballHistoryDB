USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[SeriesPost]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeriesPost](
	[teamIDwinner] [nvarchar](3) NOT NULL,
	[lgIDwinner] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](5) NOT NULL,
	[teamIDloser] [nvarchar](3) NULL,
	[lgIDloser] [nvarchar](2) NULL,
	[wins] [smallint] NULL,
	[losses] [smallint] NULL,
	[ties] [smallint] NULL,
 CONSTRAINT [PK_SeriesPost] PRIMARY KEY CLUSTERED 
(
	[teamIDwinner] ASC,
	[yearID] ASC,
	[lgIDwinner] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SeriesPost]  WITH CHECK ADD  CONSTRAINT [FK_SeriesPost_Teams] FOREIGN KEY([teamIDwinner], [lgIDwinner], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[SeriesPost] CHECK CONSTRAINT [FK_SeriesPost_Teams]
GO
ALTER TABLE [dbo].[SeriesPost]  WITH CHECK ADD  CONSTRAINT [FK_SeriesPost_Teams1] FOREIGN KEY([teamIDloser], [lgIDloser], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[SeriesPost] CHECK CONSTRAINT [FK_SeriesPost_Teams1]
GO
