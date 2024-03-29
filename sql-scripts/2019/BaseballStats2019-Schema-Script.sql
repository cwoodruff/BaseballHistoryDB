USE [master]
GO
/****** Object:  Database [BaseballStats2019]    Script Date: 10/18/2020 7:04:18 PM ******/
CREATE DATABASE [BaseballStats2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseballStats2019', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BaseballStats2019.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BaseballStats2019_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BaseballStats2019_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BaseballStats2019] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseballStats2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseballStats2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaseballStats2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaseballStats2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaseballStats2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaseballStats2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaseballStats2019] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BaseballStats2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaseballStats2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaseballStats2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaseballStats2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaseballStats2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaseballStats2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaseballStats2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaseballStats2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaseballStats2019] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BaseballStats2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaseballStats2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaseballStats2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaseballStats2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaseballStats2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaseballStats2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaseballStats2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaseballStats2019] SET RECOVERY FULL 
GO
ALTER DATABASE [BaseballStats2019] SET  MULTI_USER 
GO
ALTER DATABASE [BaseballStats2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaseballStats2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaseballStats2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaseballStats2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BaseballStats2019] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BaseballStats2019', N'ON'
GO
ALTER DATABASE [BaseballStats2019] SET QUERY_STORE = OFF
GO
USE [BaseballStats2019]
GO
/****** Object:  Table [dbo].[Fielding]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fielding](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[POS] [nvarchar](2) NOT NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[InnOuts] [smallint] NULL,
	[PO] [smallint] NULL,
	[A] [smallint] NULL,
	[E] [smallint] NULL,
	[DP] [smallint] NULL,
	[PB] [smallint] NULL,
	[WP] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[ZR] [float] NULL,
 CONSTRAINT [PK_Fielding] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TeamFieldingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamFieldingTotals]
AS
SELECT     TOP (100) PERCENT teamID, yearID, lgID, SUM(G) AS G, SUM(GS) AS GS, SUM(InnOuts) AS InnOuts, SUM(PO) AS PO, SUM(A) AS A, SUM(E) AS E, SUM(DP) AS DP, SUM(PB) 
                      AS PB, SUM(WP) AS WP, SUM(SB) AS SB, SUM(CS) AS CS, SUM(ZR) AS ZR
FROM         dbo.Fielding
GROUP BY teamID, yearID, lgID
ORDER BY teamID, yearID, lgID
GO
/****** Object:  Table [dbo].[Pitching]    Script Date: 10/18/2020 7:04:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TeamPitchingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamPitchingTotals]
AS
SELECT     TOP (100) PERCENT teamID, yearID, lgID, SUM(W) AS W, SUM(L) AS L, SUM(G) AS G, SUM(GS) AS GS, SUM(CG) AS CG, SUM(SHO) AS SHO, SUM(SV) AS SV, SUM(IPouts) 
                      AS IPouts, SUM(H) AS H, SUM(ER) AS ER, SUM(HR) AS HR, SUM(BB) AS BB, SUM(SO) AS SO, SUM(BAOpp) AS BAOpp, SUM(IBB) AS IBB, SUM(WP) AS WP, SUM(HBP) 
                      AS HBP, SUM(BK) AS BK, SUM(BFP) AS BFP, SUM(GF) AS GF, SUM(R) AS R, SUM(SH) AS SH, SUM(SF) AS SF, SUM(GIDP) AS GIDP
FROM         dbo.Pitching
GROUP BY teamID, yearID, lgID
ORDER BY teamID, yearID, lgID
GO
/****** Object:  Table [dbo].[Batting]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batting](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[G] [smallint] NULL,
	[AB] [smallint] NULL,
	[R] [smallint] NULL,
	[H] [smallint] NULL,
	[2B] [smallint] NULL,
	[3B] [smallint] NULL,
	[HR] [smallint] NULL,
	[RBI] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[BB] [smallint] NULL,
	[SO] [smallint] NULL,
	[IBB] [smallint] NULL,
	[HBP] [smallint] NULL,
	[SH] [smallint] NULL,
	[SF] [smallint] NULL,
	[GIDP] [smallint] NULL,
 CONSTRAINT [PK_Batting] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TeamBattingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamBattingTotals]
AS
SELECT     TOP (100) PERCENT teamID, yearID, lgID, SUM(G) AS G, SUM(AB) AS AB, SUM(R) AS R, SUM(H) AS H, SUM([2B]) AS [2B], SUM([3B]) AS [3B], SUM(HR) 
                      AS HR, SUM(RBI) AS RBI, SUM(SB) AS SB, SUM(CS) AS CS, SUM(BB) AS BB, SUM(SO) AS SO, SUM(IBB) AS IBB, SUM(HBP) AS HPB, SUM(SH) AS SH, SUM(SF) AS SF, 
                      SUM(GIDP) AS GIDP
FROM         dbo.Batting
GROUP BY teamID, yearID, lgID
ORDER BY teamID, yearID, lgID
GO
/****** Object:  View [dbo].[PlayerBattingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerBattingTotals]
AS
SELECT     TOP (100) PERCENT playerID, SUM(G) AS G, SUM(AB) AS AB, SUM(R) AS R, SUM(H) AS H, SUM([2B]) AS [2B], SUM([3B]) AS [3B], SUM(HR) 
                      AS HR, SUM(RBI) AS RBI, SUM(SB) AS SB, SUM(CS) AS CS, SUM(BB) AS BB, SUM(SO) AS SO, SUM(IBB) AS IBB, SUM(HBP) AS HPB, SUM(SH) AS SH, SUM(SF) AS SF, 
                      SUM(GIDP) AS GIDP
FROM         dbo.Batting
GROUP BY playerID
ORDER BY playerID
GO
/****** Object:  View [dbo].[PlayerFieldingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerFieldingTotals]
AS
SELECT     TOP (100) PERCENT playerID, POS, SUM(G) AS G, SUM(GS) AS GS, SUM(InnOuts) AS InnOuts, SUM(PO) AS PO, SUM(A) AS A, SUM(E) AS E, SUM(DP) AS DP, SUM(PB) 
                      AS PB, SUM(WP) AS WP, SUM(SB) AS SB, SUM(CS) AS CS, SUM(ZR) AS ZR
FROM         dbo.Fielding
GROUP BY playerID, POS
ORDER BY playerID
GO
/****** Object:  View [dbo].[PlayerPitchingTotals]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PlayerPitchingTotals]
AS
SELECT     TOP (100) PERCENT playerID, SUM(W) AS W, SUM(L) AS L, SUM(G) AS G, SUM(GS) AS GS, SUM(CG) AS CG, SUM(SHO) AS SHO, SUM(SV) AS SV, SUM(IPouts) 
                      AS IPouts, SUM(H) AS H, SUM(ER) AS ER, SUM(HR) AS HR, SUM(BB) AS BB, SUM(SO) AS SO, SUM(BAOpp) AS BAOpp, SUM(IBB) AS IBB, SUM(WP) AS WP, SUM(HBP) 
                      AS HBP, SUM(BK) AS BK, SUM(BFP) AS BFP, SUM(GF) AS GF, SUM(R) AS R, SUM(SH) AS SH, SUM(SF) AS SF, SUM(GIDP) AS GIDP
FROM         dbo.Pitching
GROUP BY playerID
ORDER BY playerID
GO
/****** Object:  Table [dbo].[AllstarFull]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllstarFull](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[gameID] [nvarchar](12) NOT NULL,
	[gameNum] [smallint] NULL,
	[GP] [smallint] NULL,
	[startingPos] [smallint] NULL,
 CONSTRAINT [PK_AllstarFull] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC,
	[gameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appearances]    Script Date: 10/18/2020 7:04:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AwardsManagers]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsManagers](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[awardID] [nvarchar](75) NOT NULL,
	[tie] [nvarchar](1) NULL,
	[notes] [nvarchar](100) NULL,
 CONSTRAINT [PK_AwardsManagers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AwardsPlayers]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsPlayers](
	[playerID] [nvarchar](9) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[awardID] [nvarchar](25) NOT NULL,
	[tie] [nvarchar](50) NULL,
	[notes] [nvarchar](100) NULL,
 CONSTRAINT [PK_AwardsPlayers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AwardsShareManagers]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsShareManagers](
	[playerID] [nvarchar](9) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[awardID] [nvarchar](25) NOT NULL,
	[pointsWon] [smallint] NULL,
	[pointsMax] [smallint] NULL,
	[votesFirst] [smallint] NULL,
 CONSTRAINT [PK_AwardsShareManagers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AwardsSharePlayers]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AwardsSharePlayers](
	[playerID] [nvarchar](9) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[awardID] [nvarchar](25) NOT NULL,
	[pointsWon] [float] NULL,
	[pointsMax] [smallint] NULL,
	[votesFirst] [float] NULL,
 CONSTRAINT [PK_AwardsSharePlayers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[awardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BattingPost]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BattingPost](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](10) NOT NULL,
	[G] [smallint] NULL,
	[AB] [smallint] NULL,
	[R] [smallint] NULL,
	[H] [smallint] NULL,
	[2B] [smallint] NULL,
	[3B] [smallint] NULL,
	[HR] [smallint] NULL,
	[RBI] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[BB] [smallint] NULL,
	[SO] [smallint] NULL,
	[IBB] [smallint] NULL,
	[HBP] [smallint] NULL,
	[SH] [smallint] NULL,
	[SF] [smallint] NULL,
	[GIDP] [smallint] NULL,
 CONSTRAINT [PK_BattingPost] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollegePlaying]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollegePlaying](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[schoolID] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_CollegePlaying] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[schoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldingOF]    Script Date: 10/18/2020 7:04:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldingOFsplit]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldingOFsplit](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[stint] [smallint] NOT NULL,
	[POS] [nvarchar](2) NOT NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[InnOuts] [smallint] NULL,
	[PO] [smallint] NULL,
	[A] [smallint] NULL,
	[E] [smallint] NULL,
	[DP] [smallint] NULL,
	[PB] [smallint] NULL,
	[WP] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
	[ZR] [float] NULL,
 CONSTRAINT [PK_FieldingOFsplit] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[stint] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldingPost]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldingPost](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](10) NOT NULL,
	[POS] [nvarchar](2) NOT NULL,
	[G] [smallint] NULL,
	[GS] [smallint] NULL,
	[InnOuts] [smallint] NULL,
	[PO] [smallint] NULL,
	[A] [smallint] NULL,
	[E] [smallint] NULL,
	[DP] [smallint] NULL,
	[TP] [smallint] NULL,
	[PB] [smallint] NULL,
	[SB] [smallint] NULL,
	[CS] [smallint] NULL,
 CONSTRAINT [PK_FieldingPost] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[round] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HallOfFame]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HallOfFame](
	[playerID] [nvarchar](9) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[votedBy] [nvarchar](64) NOT NULL,
	[ballots] [smallint] NULL,
	[needed] [smallint] NULL,
	[votes] [smallint] NULL,
	[inducted] [nvarchar](1) NULL,
	[category] [nvarchar](20) NULL,
	[needed_note] [nvarchar](25) NULL,
 CONSTRAINT [PK_HallOfFame] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[votedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeGames]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeGames](
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[parkID] [nvarchar](6) NOT NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[games] [smallint] NULL,
	[openings] [smallint] NULL,
	[attendance] [int] NULL,
 CONSTRAINT [PK_HomeGames] PRIMARY KEY CLUSTERED 
(
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[parkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[inseason] [smallint] NOT NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[rank] [smallint] NULL,
	[plyrMgr] [nvarchar](1) NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[inseason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagersHalf]    Script Date: 10/18/2020 7:04:18 PM ******/
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
 CONSTRAINT [PK_ManagersHalf] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[inseason] ASC,
	[half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parks]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parks](
	[parkID] [nvarchar](6) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[alias] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Parks] PRIMARY KEY CLUSTERED 
(
	[parkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 10/18/2020 7:04:18 PM ******/
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
	[debutYear] [smallint] NULL,
	[debutMonth] [smallint] NULL,
	[debutDay] [smallint] NULL,
	[finalYear] [smallint] NULL,
	[finalMonth] [smallint] NULL,
	[finalDay] [smallint] NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PitchingPost]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PitchingPost](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[round] [nvarchar](10) NOT NULL,
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
 CONSTRAINT [PK_PitchingPost] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salaries]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salaries](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[salary] [float] NULL,
 CONSTRAINT [PK_Salaries] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 10/18/2020 7:04:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeriesPost]    Script Date: 10/18/2020 7:04:18 PM ******/
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
 CONSTRAINT [PK_SeriesPost_1] PRIMARY KEY CLUSTERED 
(
	[teamIDwinner] ASC,
	[yearID] ASC,
	[lgIDwinner] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 10/18/2020 7:04:18 PM ******/
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
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[teamID] ASC,
	[lgID] ASC,
	[yearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamsFranchises]    Script Date: 10/18/2020 7:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsFranchises](
	[franchID] [nvarchar](3) NOT NULL,
	[franchName] [nvarchar](50) NULL,
	[active] [nvarchar](2) NULL,
	[NAassoc] [nvarchar](3) NULL,
 CONSTRAINT [PK_TeamsFranchises] PRIMARY KEY CLUSTERED 
(
	[franchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamsHalf]    Script Date: 10/18/2020 7:04:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SeriesPost]    Script Date: 10/18/2020 7:04:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_SeriesPost] ON [dbo].[SeriesPost]
(
	[teamIDloser] ASC,
	[yearID] ASC,
	[lgIDloser] ASC,
	[round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AllstarFull]  WITH CHECK ADD  CONSTRAINT [FK_AllstarFull_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AllstarFull] CHECK CONSTRAINT [FK_AllstarFull_People]
GO
ALTER TABLE [dbo].[AllstarFull]  WITH CHECK ADD  CONSTRAINT [FK_AllstarFull_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[AllstarFull] CHECK CONSTRAINT [FK_AllstarFull_Teams]
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
ALTER TABLE [dbo].[AwardsManagers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsManagers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsManagers] CHECK CONSTRAINT [FK_AwardsManagers_People]
GO
ALTER TABLE [dbo].[AwardsPlayers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsPlayers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsPlayers] CHECK CONSTRAINT [FK_AwardsPlayers_People]
GO
ALTER TABLE [dbo].[AwardsShareManagers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsShareManagers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsShareManagers] CHECK CONSTRAINT [FK_AwardsShareManagers_People]
GO
ALTER TABLE [dbo].[AwardsSharePlayers]  WITH CHECK ADD  CONSTRAINT [FK_AwardsSharePlayers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[AwardsSharePlayers] CHECK CONSTRAINT [FK_AwardsSharePlayers_People]
GO
ALTER TABLE [dbo].[Batting]  WITH CHECK ADD  CONSTRAINT [FK_Batting_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Batting] CHECK CONSTRAINT [FK_Batting_People]
GO
ALTER TABLE [dbo].[Batting]  WITH CHECK ADD  CONSTRAINT [FK_Batting_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Batting] CHECK CONSTRAINT [FK_Batting_Teams]
GO
ALTER TABLE [dbo].[BattingPost]  WITH CHECK ADD  CONSTRAINT [FK_BattingPost_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[BattingPost] CHECK CONSTRAINT [FK_BattingPost_People]
GO
ALTER TABLE [dbo].[BattingPost]  WITH CHECK ADD  CONSTRAINT [FK_BattingPost_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[BattingPost] CHECK CONSTRAINT [FK_BattingPost_Teams]
GO
ALTER TABLE [dbo].[CollegePlaying]  WITH CHECK ADD  CONSTRAINT [FK_CollegePlaying_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[CollegePlaying] CHECK CONSTRAINT [FK_CollegePlaying_People]
GO
ALTER TABLE [dbo].[CollegePlaying]  WITH NOCHECK ADD  CONSTRAINT [FK_CollegePlaying_Schools] FOREIGN KEY([schoolID])
REFERENCES [dbo].[Schools] ([schoolID])
GO
ALTER TABLE [dbo].[CollegePlaying] CHECK CONSTRAINT [FK_CollegePlaying_Schools]
GO
ALTER TABLE [dbo].[Fielding]  WITH CHECK ADD  CONSTRAINT [FK_Fielding_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Fielding] CHECK CONSTRAINT [FK_Fielding_People]
GO
ALTER TABLE [dbo].[Fielding]  WITH CHECK ADD  CONSTRAINT [FK_Fielding_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Fielding] CHECK CONSTRAINT [FK_Fielding_Teams]
GO
ALTER TABLE [dbo].[FieldingOF]  WITH CHECK ADD  CONSTRAINT [FK_FieldingOF_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[FieldingOF] CHECK CONSTRAINT [FK_FieldingOF_People]
GO
ALTER TABLE [dbo].[FieldingOFsplit]  WITH CHECK ADD  CONSTRAINT [FK_FieldingOFsplit_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[FieldingOFsplit] CHECK CONSTRAINT [FK_FieldingOFsplit_People]
GO
ALTER TABLE [dbo].[FieldingOFsplit]  WITH CHECK ADD  CONSTRAINT [FK_FieldingOFsplit_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[FieldingOFsplit] CHECK CONSTRAINT [FK_FieldingOFsplit_Teams]
GO
ALTER TABLE [dbo].[FieldingPost]  WITH CHECK ADD  CONSTRAINT [FK_FieldingPost_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[FieldingPost] CHECK CONSTRAINT [FK_FieldingPost_People]
GO
ALTER TABLE [dbo].[FieldingPost]  WITH CHECK ADD  CONSTRAINT [FK_FieldingPost_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[FieldingPost] CHECK CONSTRAINT [FK_FieldingPost_Teams]
GO
ALTER TABLE [dbo].[HallOfFame]  WITH CHECK ADD  CONSTRAINT [FK_HallOfFame_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[HallOfFame] CHECK CONSTRAINT [FK_HallOfFame_People]
GO
ALTER TABLE [dbo].[HomeGames]  WITH CHECK ADD  CONSTRAINT [FK_HomeGames_Parks] FOREIGN KEY([parkID])
REFERENCES [dbo].[Parks] ([parkID])
GO
ALTER TABLE [dbo].[HomeGames] CHECK CONSTRAINT [FK_HomeGames_Parks]
GO
ALTER TABLE [dbo].[HomeGames]  WITH CHECK ADD  CONSTRAINT [FK_HomeGames_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[HomeGames] CHECK CONSTRAINT [FK_HomeGames_Teams]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_People]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Teams]
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
ALTER TABLE [dbo].[PitchingPost]  WITH CHECK ADD  CONSTRAINT [FK_PitchingPost_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[PitchingPost] CHECK CONSTRAINT [FK_PitchingPost_People]
GO
ALTER TABLE [dbo].[PitchingPost]  WITH CHECK ADD  CONSTRAINT [FK_PitchingPost_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[PitchingPost] CHECK CONSTRAINT [FK_PitchingPost_Teams]
GO
ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD  CONSTRAINT [FK_Salaries_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Salaries] CHECK CONSTRAINT [FK_Salaries_People]
GO
ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD  CONSTRAINT [FK_Salaries_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Salaries] CHECK CONSTRAINT [FK_Salaries_Teams]
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
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_TeamsFranchises] FOREIGN KEY([franchID])
REFERENCES [dbo].[TeamsFranchises] ([franchID])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_TeamsFranchises]
GO
ALTER TABLE [dbo].[TeamsHalf]  WITH CHECK ADD  CONSTRAINT [FK_TeamsHalf_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[TeamsHalf] CHECK CONSTRAINT [FK_TeamsHalf_Teams]
GO
USE [master]
GO
ALTER DATABASE [BaseballStats2019] SET  READ_WRITE 
GO
