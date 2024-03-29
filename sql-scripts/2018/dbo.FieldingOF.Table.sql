USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[FieldingOF]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldingOF](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[Glf] [smallint] NULL,
	[Gcf] [smallint] NULL,
	[Grf] [smallint] NULL,
 CONSTRAINT [PK_FieldingOF] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FieldingOF]  WITH CHECK ADD  CONSTRAINT [FK_FieldingOF_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[FieldingOF] CHECK CONSTRAINT [FK_FieldingOF_People]
GO
