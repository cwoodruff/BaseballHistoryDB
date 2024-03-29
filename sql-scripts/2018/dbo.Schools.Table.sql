USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[schoolID] [nvarchar](15) NOT NULL,
	[name_full] [nvarchar](255) NULL,
	[city] [nvarchar](55) NULL,
	[state] [nvarchar](55) NULL,
	[country] [nvarchar](55) NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[schoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
