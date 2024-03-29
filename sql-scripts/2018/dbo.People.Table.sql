USE [BaseballStats2018]
GO
/****** Object:  Table [dbo].[People]    Script Date: 1/6/2019 6:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[playerID] [nvarchar](9) NOT NULL,
	[birthYear] [smallint] NULL,
	[birthMonth] [smallint] NULL,
	[birthDay] [smallint] NULL,
	[birthCountry] [nvarchar](255) NULL,
	[birthState] [nvarchar](255) NULL,
	[birthCity] [nvarchar](255) NULL,
	[deathYear] [smallint] NULL,
	[deathMonth] [smallint] NULL,
	[deathDay] [smallint] NULL,
	[deathCountry] [nvarchar](255) NULL,
	[deathState] [nvarchar](255) NULL,
	[deathCity] [nvarchar](255) NULL,
	[nameFirst] [nvarchar](255) NULL,
	[nameLast] [nvarchar](255) NULL,
	[nameGiven] [nvarchar](255) NULL,
	[weight] [smallint] NULL,
	[height] [smallint] NULL,
	[bats] [nvarchar](255) NULL,
	[throws] [nvarchar](255) NULL,
	[debut] [nvarchar](255) NULL,
	[finalGame] [nvarchar](255) NULL,
	[retroID] [nvarchar](255) NULL,
	[bbrefID] [nvarchar](255) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
