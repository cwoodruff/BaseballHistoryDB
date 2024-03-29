USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[Parks]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parks](
	[parkID] [nvarchar](6) NOT NULL,
	[name] [varchar](50) NULL,
	[alias] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
 CONSTRAINT [PK_Parks] PRIMARY KEY CLUSTERED 
(
	[parkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
