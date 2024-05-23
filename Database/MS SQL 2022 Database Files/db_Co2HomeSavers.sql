USE [master]
GO
/****** Object:  Database [db_Co2HomeSavers]    Script Date: 05/11/2023 3:06:27 pm ******/
CREATE DATABASE [db_Co2HomeSavers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Co2HomeSavers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_Co2HomeSavers.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Co2HomeSavers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_Co2HomeSavers_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_Co2HomeSavers] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Co2HomeSavers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Co2HomeSavers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_Co2HomeSavers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Co2HomeSavers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Co2HomeSavers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_Co2HomeSavers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Co2HomeSavers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_Co2HomeSavers] SET  MULTI_USER 
GO
ALTER DATABASE [db_Co2HomeSavers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Co2HomeSavers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Co2HomeSavers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Co2HomeSavers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Co2HomeSavers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_Co2HomeSavers] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_Co2HomeSavers] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_Co2HomeSavers] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_Co2HomeSavers]
GO
/****** Object:  Table [dbo].[tbl_AffilaiteLink]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AffilaiteLink](
	[AfflilateLinkID] [int] IDENTITY(1,1) NOT NULL,
	[Appliance] [nvarchar](150) NULL,
	[Link] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[AfflilateLinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Barbecue]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Barbecue](
	[BarbecueID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfBarbecues] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[BarbecueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bathtubr]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bathtubr](
	[BathtubID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfBathtubs] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[BathtubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bidet]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bidet](
	[BidetID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfBidets] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[BidetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Computer]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Computer](
	[ComputerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfComputers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ComputerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cooktop]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cooktop](
	[CooktopID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfCooktops] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CooktopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Dishwashere]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Dishwashere](
	[DishwasherID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfDishwasher] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Dish__B1433B42FB59383C] PRIMARY KEY CLUSTERED 
(
	[DishwasherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Dryer]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Dryer](
	[DryerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfDryer] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Drye__44D1D6286E27352C] PRIMARY KEY CLUSTERED 
(
	[DryerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Electriccarcharger]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Electriccarcharger](
	[ElectriccarchargerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfElectriccarchargers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ElectriccarchargerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Faucet]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Faucet](
	[FaucetID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfFaucets] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[FaucetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fireplace]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fireplace](
	[FireplaceID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfFireplace] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[FireplaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Freezer]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Freezer](
	[FreezerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfFreezers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Free__44D1D6284459561E] PRIMARY KEY CLUSTERED 
(
	[FreezerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Furnance]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Furnance](
	[FurnanceID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfFurnance] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[FurnanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GamingConsole]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GamingConsole](
	[GamingConsoleID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfGamingConsoles] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[GamingConsoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GasDryer]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GasDryer](
	[GasDryerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfGasDryers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[GasDryerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GasOven]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GasOven](
	[GasOvenID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfGasOvens] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[GasOvenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Generator]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Generator](
	[GeneratorID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfGenerators] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[GeneratorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_healthiestlightbulbs]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_healthiestlightbulbs](
	[ElectriccarchargerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfhealthiestlightbulbs] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ElectriccarchargerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Humidifier]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Humidifier](
	[HumidifierID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfHumidifiers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[HumidifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Jacuzzi]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Jacuzzi](
	[JacuzziID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfJacuzzis] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[JacuzziID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Laptop]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Laptop](
	[LaptopID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfLaptops] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[LaptopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Lawnsprinklersystem]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Lawnsprinklersystem](
	[LawnsprinklersystemID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfLawnsprinklersystems] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[LawnsprinklersystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Microwave]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Microwave](
	[MicrowaveID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfMicrowaves] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Micr__DAE82B4905D25585] PRIMARY KEY CLUSTERED 
(
	[MicrowaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Modem]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Modem](
	[ModemID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfModems] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ModemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Outdoorsprinklersystem]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Outdoorsprinklersystem](
	[OutdoorsprinklersystemID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfOutdoorsprinklersystems] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[OutdoorsprinklersystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Oven]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Oven](
	[OvenID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfOvens] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Oven__6F7A61D03F2942C0] PRIMARY KEY CLUSTERED 
(
	[OvenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Pool]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Pool](
	[PoolID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfPools] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[PoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Programmablethermostat]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Programmablethermostat](
	[ProgrammablethermostatID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfProgrammablethermostats] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgrammablethermostatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Refrigilator]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Refrigilator](
	[RefrigilatorID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfRefrigilators] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Refr__51794084677DD123] PRIMARY KEY CLUSTERED 
(
	[RefrigilatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ResutImages]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ResutImages](
	[ResutImagesID] [int] IDENTITY(1,1) NOT NULL,
	[Appliance] [nvarchar](150) NULL,
	[ImageAddress] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResutImagesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Router]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Router](
	[RouterID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfRouters] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[RouterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Shower]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Shower](
	[ShowerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfShowers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Showerhead]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Showerhead](
	[ShowerheadID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfShowerheads] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShowerheadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Sink]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sink](
	[SinkID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfSinks] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[SinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Smartphone]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Smartphone](
	[SmartphoneID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfSmartphones] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[SmartphoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Smartpowerstrip]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Smartpowerstrip](
	[SmartpowerstripID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfSmartpowerstrips] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[SmartpowerstripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SmartSpeaker]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SmartSpeaker](
	[SmartSpeakerID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfSmartSpeakers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[SmartSpeakerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Solarpanels]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Solarpanels](
	[SolarpanelstID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfSolarpanels] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[SolarpanelstID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Stove]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Stove](
	[StoveID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfStoves] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Stov__9C626AC4916132C7] PRIMARY KEY CLUSTERED 
(
	[StoveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Television]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Television](
	[TelevisionID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfTelevisions] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[TelevisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Toilet]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Toilet](
	[ToiletID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfToilets] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ToiletID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WashingMachine]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_WashingMachine](
	[WashingMachineID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfWashingMachine] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
 CONSTRAINT [PK__tbl_Wash__43E43D3190F6B49D] PRIMARY KEY CLUSTERED 
(
	[WashingMachineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WaterAC]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_WaterAC](
	[WaterACID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfWaterACs] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[WaterACID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Waterdispenser]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Waterdispenser](
	[WaterdispenserID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfWaterdispensers] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[WaterdispenserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WaterHeater]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_WaterHeater](
	[RefrigilatorID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfWaterHeaters] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[RefrigilatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WRefrigilator]    Script Date: 05/11/2023 3:06:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_WRefrigilator](
	[WRefrigilatorID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Usernme] [nvarchar](150) NULL,
	[NoOfWRefrigilators] [int] NULL,
	[Appliance] [nvarchar](150) NULL,
	[Make1] [nvarchar](150) NULL,
	[Make2] [nvarchar](150) NULL,
	[Make3] [nvarchar](150) NULL,
	[Model1] [nvarchar](150) NULL,
	[Model2] [nvarchar](150) NULL,
	[Model3] [nvarchar](150) NULL,
	[Tip1] [nvarchar](150) NULL,
	[Tip2] [nvarchar](150) NULL,
	[Tip3] [nvarchar](150) NULL,
	[Wallt1] [nvarchar](150) NULL,
	[Wallt2] [nvarchar](150) NULL,
	[Wallt3] [nvarchar](150) NULL,
	[TotalWatts] [decimal](18, 0) NULL,
	[AffilaiteLink] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[WRefrigilatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_AffilaiteLink] ON 

INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (1, N'Refrigerator', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (2, N'Freezer', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (3, N'Microwave', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (4, N'Oven', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (5, N'Stove', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (6, N'Dishwasher', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (7, N'Washing machine', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (8, N'Dryer', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (9, N'Water heater', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (10, N'Air conditioner with a water collection tray', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (11, N'Gas furnace or heating system', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (12, N'Gas fireplace', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (13, N'Television', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (14, N'Computer', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (15, N'Laptop', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (16, N'Smartphone', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (17, N'Smart Speaker', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (18, N'Gaming Console', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (19, N'Router', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (20, N'Modem', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (21, N'Shower', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (22, N'Bathtub', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (23, N'Sink', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (24, N'Toilet', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (25, N'Water dispenser', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (26, N'Humidifier', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (27, N'Outdoor sprinkler system', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (28, N'Pool', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (29, N'Jacuzzi', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (30, N'Bidet', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (31, N'Showerhead', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (32, N'Faucet', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (33, N'Lawn sprinkler system', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (34, N'Water Refrigerator', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (35, N'Cooktop', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (36, N'Gas Dryer', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (37, N'Barbecue', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (38, N'Generator', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (39, N'Gas Oven', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (40, N'Programmable thermostat', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (41, N'Solar panels', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (42, N'Smart power strip', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (43, N'Electric car charger', N'https://www.shopify.com')
INSERT [dbo].[tbl_AffilaiteLink] ([AfflilateLinkID], [Appliance], [Link]) VALUES (44, N'Healthiest light bulbs', N'https://www.shopify.com')
SET IDENTITY_INSERT [dbo].[tbl_AffilaiteLink] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Barbecue] ON 

INSERT [dbo].[tbl_Barbecue] ([BarbecueID], [CategoryID], [Usernme], [NoOfBarbecues], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 5, N'60', 1, N'Barbecue', N' Nuvo Eco', NULL, NULL, N' Nuvo EcoElectric Smoker Grill', NULL, NULL, NULL, NULL, NULL, N'22021', NULL, NULL, CAST(22021 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Barbecue] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Bathtubr] ON 

INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'15', 2, N'Bathtub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 4, N'16', 1, N'Bathtub', NULL, NULL, NULL, N' LunaSoaker™ LED Illuminated Infiniti Spa™ Corner Bathtub  ', NULL, NULL, NULL, NULL, NULL, N'151', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 4, N'17', 3, N'Bathtub', N' KOHLER', N' Aqua Bath', N' Jacuzzi', N' Elster™ 5-Foot Freestanding Luxury Whirlpool Bathtub with Heated Bubbles', N' Neptune Power Space Saver Bathtub – a modern bathtub with hidden electric control for hydromassage, temperature control and air jets', N' Alcove Jetted Electric Soaking Bathtub', NULL, NULL, NULL, N'168', N'202', N'214', CAST(584 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (4, 4, N'18', 1, N'Bathtub', N' Aquatic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (5, 4, N'20', 1, N'Bathtub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (6, 4, N'21', 1, N'Bathtub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Bathtubr] ([BathtubID], [CategoryID], [Usernme], [NoOfBathtubs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (7, 4, N'22', 1, N'Bathtub', N' Ella''s Bubbles', NULL, NULL, N' Ella''s Bubbles Imperium Elite Elite Electric Walk-in Tub with Right Drain and Dual Incline', NULL, NULL, NULL, NULL, NULL, N'222', NULL, NULL, CAST(222 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Bathtubr] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Bidet] ON 

INSERT [dbo].[tbl_Bidet] ([BidetID], [CategoryID], [Usernme], [NoOfBidets], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Bidet', N' Toto', NULL, NULL, N' Toto Washlet G400 with Premist Toilet', NULL, NULL, NULL, NULL, NULL, N'214', NULL, NULL, CAST(214 AS Decimal(18, 0)), N'', N'bidet')
SET IDENTITY_INSERT [dbo].[tbl_Bidet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (1, N'Kitchen appliances')
INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (2, N'Heating & Cooling')
INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (3, N'Home Entertainment')
INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (4, N'Water Appliances')
INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (5, N'Gas Appliances')
INSERT [dbo].[tbl_Category] ([CategoryID], [Category]) VALUES (6, N'Alternate Electricity')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Computer] ON 

INSERT [dbo].[tbl_Computer] ([ComputerID], [CategoryID], [Usernme], [NoOfComputers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'11', 2, N'Computer', N' Apple', N' Dell', NULL, N' Apple Mac Mini', N' Dell Inspiron 15 5500 Laptop', NULL, NULL, NULL, NULL, N'128', N'145', NULL, CAST(273 AS Decimal(18, 0)), N'com', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Computer] ([ComputerID], [CategoryID], [Usernme], [NoOfComputers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'14', 2, N'Computer', N' Apple', N' Samsung', NULL, N' Apple Mac Pro (M1 Chip, 8-Core CPU, 16GB RAM, 512GB SSD)', N' Samsung X30 Business Series Laptop', NULL, NULL, NULL, NULL, N'208', N'233', NULL, CAST(441 AS Decimal(18, 0)), N'com', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
SET IDENTITY_INSERT [dbo].[tbl_Computer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Cooktop] ON 

INSERT [dbo].[tbl_Cooktop] ([CooktopID], [CategoryID], [Usernme], [NoOfCooktops], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 5, N'58', 2, N'Cooktop', N' GE', N' GE', NULL, N' GE 30-inch Radiant Electric Cooktop', N' 30" 5 Zone Smooth Surface Radiant Electric Cooktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Cooktop] ([CooktopID], [CategoryID], [Usernme], [NoOfCooktops], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 5, N'59', 1, N'Cooktop', N' GE Appliances', NULL, NULL, N' GE Profile® 30" Electric Induction Cooktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Cooktop] ([CooktopID], [CategoryID], [Usernme], [NoOfCooktops], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 5, N'60', 1, N'Cooktop', N' KitchenAid', NULL, NULL, N' KitchenAid KECC604BSS 6-Burner Electric Cooktop ', NULL, NULL, NULL, NULL, NULL, N'3445', NULL, NULL, CAST(3445 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Cooktop] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Dishwashere] ON 

INSERT [dbo].[tbl_Dishwashere] ([DishwasherID], [CategoryID], [Usernme], [NoOfDishwasher], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'2', 1, N'Dishwasher', N' LG', NULL, NULL, N' LG Smart ThinQ Stainless Steel Dishwasher', NULL, NULL, NULL, NULL, NULL, N'2063', NULL, NULL, CAST(2063 AS Decimal(18, 0)), N'Dishwasherhttps://www.youtube.com/', N'dishwasher')
SET IDENTITY_INSERT [dbo].[tbl_Dishwashere] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Dryer] ON 

INSERT [dbo].[tbl_Dryer] ([DryerID], [CategoryID], [Usernme], [NoOfDryer], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'3', 1, N'Dryer', N' Electrolux', NULL, NULL, N' Electrolux EDC2086MS Dryer', NULL, NULL, NULL, NULL, NULL, N'4598', NULL, NULL, CAST(4598 AS Decimal(18, 0)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Dryer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Electriccarcharger] ON 

INSERT [dbo].[tbl_Electriccarcharger] ([ElectriccarchargerID], [CategoryID], [Usernme], [NoOfElectriccarchargers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 6, N'22', 1, N'Electric car charger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Electriccarcharger] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Faucet] ON 

INSERT [dbo].[tbl_Faucet] ([FaucetID], [CategoryID], [Usernme], [NoOfFaucets], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'22', 1, N'Faucet', N' Lo Flow by D-flow', NULL, NULL, N' PowerFlow Electric Faucet', NULL, NULL, NULL, NULL, NULL, N'212', NULL, NULL, CAST(212 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Faucet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Fireplace] ON 

INSERT [dbo].[tbl_Fireplace] ([FireplaceID], [CategoryID], [Usernme], [NoOfFireplace], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 2, N'4', 3, N'Fireplace', N' Northwest', N' Heat-N-Glow ', N' Dimplex ', N' Minerva 52" Northwest Electric Fireplace, Espresso Finish', N' GFK4 25" Luxury Series Freestanding Fireplace ', N' Dimplex Fieldstone Fireplace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Fireplace] ([FireplaceID], [CategoryID], [Usernme], [NoOfFireplace], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 2, N'5', 3, N'Fireplace', N' Dimplex', N' Dimplex', N' Dimplex', N' Dimplex Celeste Electric Fireplace with Mantel', N'	Opti-myst Stove', N' Dimplex Electric Fireplace Insert', NULL, NULL, NULL, N'171', N'196', N'178', CAST(545 AS Decimal(18, 0)), N'Gas fireplace', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Fireplace] ([FireplaceID], [CategoryID], [Usernme], [NoOfFireplace], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 2, N'6', 3, N'Fireplace', N' Touchstone', N' Real Flame', N' Dimplex', N' Grandville Contemporary Recessed Wall Mounted Electric Fireplace', N' Altra Farmington Electric Fireplace TV Console with Glass Doors', N' Dimplex Winston Electric Fireplace with Mantel', NULL, NULL, NULL, N'201', N'168', N'192', CAST(561 AS Decimal(18, 0)), N'Gas fireplace', N'fireplace')
SET IDENTITY_INSERT [dbo].[tbl_Fireplace] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Freezer] ON 

INSERT [dbo].[tbl_Freezer] ([FreezerID], [CategoryID], [Usernme], [NoOfFreezers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'9', 3, N'Freezer', N' Haier', N' Magic Chef', N' EdgeStar', N' Haier French Door Bottom-Mount Freezer ', N' Magic Chef 7-Cubic-Foot Frostless Upright Freezer', N' EdgeStar 10', NULL, NULL, NULL, N'690', N'502', N'745', CAST(1937 AS Decimal(18, 0)), N'https://www.shopify.com', N'Freezer')
INSERT [dbo].[tbl_Freezer] ([FreezerID], [CategoryID], [Usernme], [NoOfFreezers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'10', 2, N'Freezer', N' Frigidaire', N' Frigidaire', NULL, N' Frigidaire 12', N' Frigidaire Upright Freezer with Deluxe Temperature Control ', NULL, NULL, NULL, NULL, N'544', N'889', NULL, CAST(1433 AS Decimal(18, 0)), N'https://www.shopify.com', N'Freezer')
INSERT [dbo].[tbl_Freezer] ([FreezerID], [CategoryID], [Usernme], [NoOfFreezers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 1, N'14', 3, N'Freezer', N' Frigidaire', N' Avanti CF64UPS - Avanti', N' Sharp SJ-FT55A-ZZ - Sharp', N' Frigidaire French Door Freezer ', N' Avanti CF64UPS Upright Freezer – Comes with an adjustable temperature control and a removable shelf for convenience', N' Sharp SJ-FT55A-ZZ 36-inch Smart Built-In Panel Ready Refrigerator', NULL, NULL, NULL, N'606', N'838', N'508', CAST(1952 AS Decimal(18, 0)), N'https://www.shopify.com', N'Freezer')
SET IDENTITY_INSERT [dbo].[tbl_Freezer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Furnance] ON 

INSERT [dbo].[tbl_Furnance] ([FurnanceID], [CategoryID], [Usernme], [NoOfFurnance], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 2, N'4', 2, N'Gas furnace or heating system', N' Trane', N' Carrier / UTC', NULL, N' Trane XR95 Gas Furnace', N' Carrier Comfort 80 Gas Furnace ', NULL, NULL, NULL, NULL, N'188', N'154', NULL, CAST(342 AS Decimal(18, 0)), N'Gas furnace or heating system', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Furnance] ([FurnanceID], [CategoryID], [Usernme], [NoOfFurnance], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 2, N'6', 3, N'Gas furnace or heating system', N' Lennox', N' Carrier', N' Goodman', N' Lennox Merit® Series ML195 Gas Furnace', N' Carrier Infinity Series Air Furnace', N' Goodman GMSS96 Single-Stage 17', NULL, NULL, NULL, N'150', N'151', N'216', CAST(517 AS Decimal(18, 0)), N'Gas furnace or heating system', N'furnace')
INSERT [dbo].[tbl_Furnance] ([FurnanceID], [CategoryID], [Usernme], [NoOfFurnance], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 2, N'23', 1, N'Gas furnace or heating system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Gas furnace or heating system', N'furnace')
SET IDENTITY_INSERT [dbo].[tbl_Furnance] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_GamingConsole] ON 

INSERT [dbo].[tbl_GamingConsole] ([GamingConsoleID], [CategoryID], [Usernme], [NoOfGamingConsoles], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'14', 1, N'Gaming Console', N' Microsoft Corporation', NULL, NULL, N' Xbox Series X ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gc', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_GamingConsole] ([GamingConsoleID], [CategoryID], [Usernme], [NoOfGamingConsoles], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 3, N'51', 1, N'Gaming Console', N' Sony', NULL, NULL, N' Sony PlayStation 4 Pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_GamingConsole] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_GasDryer] ON 

INSERT [dbo].[tbl_GasDryer] ([GasDryerID], [CategoryID], [Usernme], [NoOfGasDryers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 5, N'60', 1, N'Gas Dryer', N' GE', NULL, NULL, N' High-Capacity 10-Cycle Gas Clothes Dryer', NULL, NULL, NULL, NULL, NULL, N'225', NULL, NULL, CAST(225 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_GasDryer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_GasOven] ON 

INSERT [dbo].[tbl_GasOven] ([GasOvenID], [CategoryID], [Usernme], [NoOfGasOvens], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 5, N'63', 1, N'Gas Oven', N' Whirlpool', NULL, NULL, N' Whirlpool WGO320M2DG 24-inch Stainless Steel Gas Oven', NULL, NULL, NULL, NULL, NULL, N'20747', NULL, NULL, CAST(20747 AS Decimal(18, 0)), N'', N'oven')
SET IDENTITY_INSERT [dbo].[tbl_GasOven] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Generator] ON 

INSERT [dbo].[tbl_Generator] ([GeneratorID], [CategoryID], [Usernme], [NoOfGenerators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 5, N'63', 1, N'Generator', N' Caterpillar', NULL, NULL, N' Cat C9 ACERT Generator Set', NULL, NULL, NULL, NULL, NULL, N'3339', NULL, NULL, CAST(3339 AS Decimal(18, 0)), N'', N'generator')
SET IDENTITY_INSERT [dbo].[tbl_Generator] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Humidifier] ON 

INSERT [dbo].[tbl_Humidifier] ([HumidifierID], [CategoryID], [Usernme], [NoOfHumidifiers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Humidifier', N' Honeywell', NULL, NULL, N' Honeywell HEV320BC QuietCareUCool Moisture Assist Console Humidifier ', NULL, NULL, NULL, NULL, NULL, N'128', NULL, NULL, CAST(128 AS Decimal(18, 0)), N'', N'humidifier')
SET IDENTITY_INSERT [dbo].[tbl_Humidifier] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Jacuzzi] ON 

INSERT [dbo].[tbl_Jacuzzi] ([JacuzziID], [CategoryID], [Usernme], [NoOfJacuzzis], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Jacuzzi', N' Dimension One Spas', NULL, NULL, N' Cal Spas Hampshire', NULL, NULL, NULL, NULL, NULL, N'116', NULL, NULL, CAST(116 AS Decimal(18, 0)), N'', N'jacuzzi')
SET IDENTITY_INSERT [dbo].[tbl_Jacuzzi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Laptop] ON 

INSERT [dbo].[tbl_Laptop] ([LaptopID], [CategoryID], [Usernme], [NoOfLaptops], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'11', 2, N'Laptop', N' Dell ', N' Toshiba ', NULL, N' Dell Inspiron 15 5578 Laptop', N' Toshiba Satellite Radius 14" ', NULL, NULL, NULL, NULL, N'210', N'148', NULL, CAST(358 AS Decimal(18, 0)), N'lap', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Laptop] ([LaptopID], [CategoryID], [Usernme], [NoOfLaptops], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 3, N'14', 3, N'Laptop', N' Apple ', N' Sony', N' Microsoft', N' Apple MacBook 12-inch', N' Sony VAIO Flip 14A', N' Microsoft Surface Laptop Go', NULL, NULL, NULL, N'206', N'173', N'232', CAST(611 AS Decimal(18, 0)), N'lap', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
SET IDENTITY_INSERT [dbo].[tbl_Laptop] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Lawnsprinklersystem] ON 

INSERT [dbo].[tbl_Lawnsprinklersystem] ([LawnsprinklersystemID], [CategoryID], [Usernme], [NoOfLawnsprinklersystems], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Lawn sprinkler system', N' Rain Bird', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Lawnsprinklersystem] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Microwave] ON 

INSERT [dbo].[tbl_Microwave] ([MicrowaveID], [CategoryID], [Usernme], [NoOfMicrowaves], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'9', 3, N'Microwave', N' Sharp', N' Russell Hobbs', N' Smeg', N' Sharp R-1874 900W Over-the-Range Convection Microwave', N' Russell Hobbs Spotless Steel Digital 900W Microwave', N'SmegMCR330X 30L Combi 900W 3in1 Microwave', NULL, NULL, NULL, N'1031', N'1119', N'740', CAST(2890 AS Decimal(18, 0)), N'https://www.shopify.com', N'Microwave')
INSERT [dbo].[tbl_Microwave] ([MicrowaveID], [CategoryID], [Usernme], [NoOfMicrowaves], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'10', 3, N'Microwave', N' GE', N' Mitsubishi MSC-24DS (M', N' LG LCRT2010ST (LG)', N' GEMicrowave Countertop Oven with Browning Feature', N' Mitsubishi MSC-24DS Microwave Oven with Digital Touch Control Panel and LED Display', N' LG LCRT2010ST 900-Watt Counter Top Microwave Oven with Easy Clean Interior', NULL, NULL, NULL, N'755', N'805', N'1066', CAST(2626 AS Decimal(18, 0)), N'https://www.shopify.com', N'Microwave')
INSERT [dbo].[tbl_Microwave] ([MicrowaveID], [CategoryID], [Usernme], [NoOfMicrowaves], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 1, N'14', 3, N'Microwave', N' LG', N' Sona SFB', N' Toshiba EM130A5C-BS (Toshiba)', N' LG NeoChef 32L Smart Inverter Microwave with Smart ThinQ', N' Sona SFB3000 Compact Microwave with Digital Interface ', N' Toshiba EM130A5C-BS 900W 1', NULL, NULL, NULL, N'726', N'961', N'809', CAST(2496 AS Decimal(18, 0)), N'https://www.shopify.com', N'Microwave')
SET IDENTITY_INSERT [dbo].[tbl_Microwave] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Modem] ON 

INSERT [dbo].[tbl_Modem] ([ModemID], [CategoryID], [Usernme], [NoOfModems], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'14', 1, N'Modem', N' NETGEAR', NULL, NULL, N' Nighthawk AX8 8-Stream WiFi 6 Mesh Extender (EAX80)', NULL, NULL, NULL, NULL, NULL, N'127', NULL, NULL, CAST(127 AS Decimal(18, 0)), N'md', N'modem')
SET IDENTITY_INSERT [dbo].[tbl_Modem] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Outdoorsprinklersystem] ON 

INSERT [dbo].[tbl_Outdoorsprinklersystem] ([OutdoorsprinklersystemID], [CategoryID], [Usernme], [NoOfOutdoorsprinklersystems], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Outdoor sprinkler systems', N' Orbit', NULL, NULL, N' Orbit 6-zone Battery-operated Sprinkler system', NULL, NULL, NULL, NULL, NULL, N'176', NULL, NULL, CAST(176 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Outdoorsprinklersystem] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Oven] ON 

INSERT [dbo].[tbl_Oven] ([OvenID], [CategoryID], [Usernme], [NoOfOvens], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'9', 3, N'Oven', N' KitchenAid ', N' Dacor ', N' True', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Oven] ([OvenID], [CategoryID], [Usernme], [NoOfOvens], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'10', 2, N'Oven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Oven] ([OvenID], [CategoryID], [Usernme], [NoOfOvens], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 1, N'14', 3, N'Oven', N' Bosch', N' Haier', N' Aroma Professional Plus 6-Slice Toaster Oven (Aroma)', N' Bosch 800 Series 30" Stainless Steel Slide-in Electric Range ', N' Haier 36L Built-In Oven with Rotisserie (HB46T1000UB)', N' Aroma Professional Plus 6-Slice Toaster Oven with Stay Cool Exterior and 4-Way Heating Element for Even Baking and Broiling', NULL, NULL, NULL, N'1375', N'1063', N'909', CAST(3347 AS Decimal(18, 0)), N'https://www.shopify.com', N'oven')
SET IDENTITY_INSERT [dbo].[tbl_Oven] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Pool] ON 

INSERT [dbo].[tbl_Pool] ([PoolID], [CategoryID], [Usernme], [NoOfPools], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Pool', N' Master Pools guild', NULL, NULL, N' Natural Infinity Pool with Minimalist Deck', NULL, NULL, NULL, NULL, NULL, N'162', NULL, NULL, CAST(162 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Pool] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Programmablethermostat] ON 

INSERT [dbo].[tbl_Programmablethermostat] ([ProgrammablethermostatID], [CategoryID], [Usernme], [NoOfProgrammablethermostats], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 6, N'64', 1, N'Programmable thermostat', N' Honeywell Home', NULL, NULL, N' Honeywell RTH9585WF Wi-Fi Smart Color Programmable Thermostat', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, CAST(3 AS Decimal(18, 0)), N'', N'thermostats')
SET IDENTITY_INSERT [dbo].[tbl_Programmablethermostat] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Refrigilator] ON 

INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'2', 3, N'Refrigilator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'3', 3, N'Refrigilator', N' Samsung ', N' Frigidaire ', N' LG ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 1, N'5', 3, N'Refrigilator', N' Haier', N' Panasonic NR-BY602XSSG (Panasonic)', N' Liebherr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (4, 1, N'6', 3, N'Refrigilator', N' Sumsung', N' MSF-430BSDW (Panasonic)  ', N' HCE-F152AWK (Sharp) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (5, 1, N'7', 3, N'Refrigilator', N' GE', N' Haier HRF-651ITES-E - Haier', N' LG RN-4292JL - LG', N' GE GSS23HSHSS Side-by-Side Refrigerator', N' Haier HRF-651ITES-E Top Mount Refrigerator with MultiAirFlow ', N' LG RN-4292JL Counter-Depth French-Door Smart Refrigerator with InstaView Door-In-Door', NULL, NULL, NULL, N'724', N'768', N'138', CAST(1630 AS Decimal(18, 0)), N'https://www.shopify.com', N'Refeigerator')
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (7, 1, N'9', 3, N'Refrigilator', N' Summit', N' LG GSL760PZBV (LG)', N' Mitsubishi MR-V45C (Mitsubishi)', N' Summit CPFF28 Black 28" Freestanding Compact Refrigerator with', N' LG GSL760PZBV 27 cu ft 4-Door French Door Refrigerator with Door-in-Door Technology ', N' Mitsubishi MR-V45C Single Door Refrigerator ', NULL, NULL, NULL, N'701', N'286', N'187', CAST(1174 AS Decimal(18, 0)), N'https://www.shopify.com', N'Refeigerator')
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (11, 1, N'10', 3, N'Refrigilator', N' Beko', N' Sharp SJ-PT47BRS - Sharp', N' Haier HRF-619D - Haier', N' Beko Under Cabinet Refrigerator ', N' Sharp SJ-PT47BRS French Door Refrigerator with Digital Controls and Dual Cooling', N' Haier HRF-619D Single Door Refrigerator with Tribostatic Antibacterial Removable Shelves And Honey Comb Mo', NULL, NULL, NULL, N'403', N'268', N'509', CAST(1180 AS Decimal(18, 0)), N'https://www.shopify.com', N'Refeigerator')
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (15, 1, N'14', 2, N'Refrigilator', N' Frigidaire', N'Toshiba GR-S775WEP, ', NULL, N' Frigidaire Gallery 22', N' Toshiba GR-S775WEP Refrigerator with Spill Proof Shelves and Stainless Steel Exterior', NULL, NULL, NULL, NULL, N'105', N'298', NULL, CAST(403 AS Decimal(18, 0)), N'https://www.shopify.com', N'Refeigerator')
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (20, 1, N'15', 3, N'Refrigilator', N' LG', N' Samsung RT50K6330S8 (Samsung)', N' Samsung', N' LG LFXS28626S 28 cu', N') Samsung RT50K6330S8 French Door Refrigerator with Twin Cooling Plus and Twin Frozen Cooling System ', N' Samsung 28 cu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (21, 1, N'16', 3, N'Refrigilator', N' LG', N' LG', N' LG', N' LG GTM403SILF 420 Liters Frost-free Double-door Refrigerator', N' LG 26 Cu', N' LG 24 cu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (22, 1, N'17', 2, N'Refrigilator', N' Samsung ', NULL, NULL, N' Samsung 4-Door Counter Depth, French Door Refrigerator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (23, 1, N'19', 1, N'Refrigilator', N' LG', NULL, NULL, N' LG InstaView ThinQ Smart WiFi Enabled French Door Refrigerator', NULL, NULL, NULL, NULL, NULL, N'419', NULL, NULL, CAST(419 AS Decimal(18, 0)), NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (24, 1, N'20', 1, N'Refrigilator', N' LG Electronics', NULL, NULL, N'  LG 24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (25, 1, N'21', 2, N'Refrigilator', N' GE Appliances', N' GE Appliances', NULL, N' GE Profile™ Series French-Door Refrigerator with Advanced Water Filtration and Ice Dispenser', N'GE Cafe Series French-Door Refrigerator ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (26, 1, N'22', 1, N'Refrigilator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (27, 1, N'24', 1, N'Refrigilator', N' Samsung', NULL, NULL, N' Samsung Family Hub RF220NCTAWW/AA Refrigerator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (28, 1, N'25', 2, N'Refrigilator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (29, 1, N'26', 1, N'Refrigilator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Refrigilator] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (30, 1, N'27', 3, N'Refrigilator', N' LG Electronics ', N' LG Electronics ', N' LG Electronics ', N' LG GMA6200SL 605L French Door Refrigerator ', N' LG Electronics 515L InstaView Door-in-Door Refrigerator', N' LG LFXS26973S 26 cu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Refrigilator] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ResutImages] ON 

INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (1, N'Refrigerator', N'Refeigerator')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (2, N'Freezer', N'Freezer')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (3, N'Microwave', N'Microwave')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (4, N'Oven', N'oven')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (5, N'Stove', N'stove')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (6, N'Dishwasher', N'dishwasher')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (7, N'Washing machine', N'washingmachine')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (8, N'Dryer', N'dryer')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (9, N'Water heater', N'waterheater')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (10, N'Air conditioner with a water collection tray', N'ac')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (11, N'Gas furnace or heating system', N'furnace')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (12, N'Gas fireplace', N'fireplace')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (13, N'Television', N'tv')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (14, N'Computer', N'computer')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (15, N'Laptop', N'laptop')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (16, N'Smartphone', N'smartphone')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (17, N'Smart Speaker', N'speaker')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (18, N'Gaming Console', N'gamingconsole')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (19, N'Router', N'router')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (20, N'Modem', N'modem')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (21, N'Shower', N'shower')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (22, N'Bathtub', N'bathtub')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (23, N'Sink', N'sink')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (24, N'Toilet', N'toilet')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (25, N'Water dispenser', N'waterdispenser')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (26, N'Humidifier', N'humidifier')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (27, N'Outdoor sprinkler system', N'sprinklersystem')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (28, N'Pool', N'pool')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (29, N'Jacuzzi', N'jacuzzi')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (30, N'Bidet', N'bidet')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (31, N'Showerhead', N'Showerhead')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (32, N'Faucet', N'faucet')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (33, N'Lawn sprinkler system', N'sprinklersystem')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (34, N'Water Refrigerator', N'Refeigerator')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (35, N'Cooktop', N'cooktop')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (36, N'Gas Dryer', N'dryer')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (37, N'Barbecue', N'barbecue')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (38, N'Generator', N'generator')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (39, N'Gas Oven', N'oven')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (40, N'Programmable thermostat', N'thermostats')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (41, N'Solar panels', N'solarpanel')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (42, N'Smart power strip', N'powerstrip')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (43, N'Electric car charger', N'charger')
INSERT [dbo].[tbl_ResutImages] ([ResutImagesID], [Appliance], [ImageAddress]) VALUES (44, N'healthiest light bulbs', N'lightbulb')
SET IDENTITY_INSERT [dbo].[tbl_ResutImages] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Router] ON 

INSERT [dbo].[tbl_Router] ([RouterID], [CategoryID], [Usernme], [NoOfRouters], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'14', 3, N'Router', N' Cisco', N' Huawei Technologies', N' TP-Link', N' Cisco 800 Series', N' Huawei AR650', N' TP-Link Archer AX6000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Router] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Shower] ON 

INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'15', 3, N'Shower', N' Triton', N' Bathstore Elite ', N' Puricare ', N' Triton Electric 8', N' Bathstore Elite Power Shower', N' Puricare Storm X Electric Shower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 4, N'16', 3, N'Shower', N' Triton', N' Saneux ', N' Grohe ', N' Triton Electric Lumiere Shower ', N' Saneux Electric Showers Tembo', N' Grandera Electric Shower', NULL, NULL, NULL, N'216', N'161', N'240', CAST(617 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 4, N'17', 2, N'Shower', N' Redring', N' Master Plumber', NULL, N' Redring Expression XS 9', N' Radiant Non-Pressurized Digital Heat Electric Shower ', NULL, NULL, NULL, NULL, N'163', N'237', NULL, CAST(400 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (4, 4, N'18', 2, N'Shower', N' Mira Showers', N' Kartell', NULL, N' Mira Discord Electric Shower', N' Kartell Swissline Electric Shower', NULL, NULL, NULL, NULL, N'113', N'212', NULL, CAST(325 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (5, 4, N'20', 3, N'Shower', N' Mira Showers', N' Respecting Water', N' AquaVantage', N' Mira Vigour 4 Electric Shower', N' Low-flow showerheads ', N' Aquavantage FlowSensor Electric Shower', NULL, NULL, NULL, N'164', N'212', N'160', CAST(536 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (6, 4, N'21', 1, N'Shower', N' Aqualisa ', NULL, NULL, N' Aqualisa ShowerDream Electronica 9', NULL, NULL, NULL, NULL, NULL, N'180', NULL, NULL, CAST(180 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (7, 4, N'22', 1, N'Shower', N' Mira Showers', NULL, NULL, N' Mira Sprint Electric Shower', NULL, NULL, NULL, NULL, NULL, N'154', NULL, NULL, CAST(154 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (8, 4, N'25', 1, N'Shower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (9, 4, N'26', 1, N'Shower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Shower] ([ShowerID], [CategoryID], [Usernme], [NoOfShowers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (10, 4, N'27', 1, N'Shower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Shower] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Showerhead] ON 

INSERT [dbo].[tbl_Showerhead] ([ShowerheadID], [CategoryID], [Usernme], [NoOfShowerheads], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Showerhead', N' Speakman', NULL, NULL, N' Speakman Icon S-2252-PB Retrofit Polished Brass Electric Showerhead ', NULL, NULL, NULL, NULL, NULL, N'169', NULL, NULL, CAST(169 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Showerhead] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Sink] ON 

INSERT [dbo].[tbl_Sink] ([SinkID], [CategoryID], [Usernme], [NoOfSinks], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'17', 3, N'Sink', N' Delta Faucet ', N'Wessan ', N' Kohler ', N' Delta Corrente Single-Handle Pull-Down Sprayer Kitchen Faucet with Touch2O Technology in Arctic Stainless', N' Wessan 40/20 Stainless Steel Electric Sink', N' Iron Plains Smart Divide Self-Rimming Sink ', NULL, NULL, NULL, N'110', N'136', N'214', CAST(460 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_Sink] ([SinkID], [CategoryID], [Usernme], [NoOfSinks], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 4, N'22', 1, N'Sink', N' Kraus', NULL, NULL, N' Kraus KGDS33336 Electric Sink with Small Basin and Self-trimming Rim', NULL, NULL, NULL, NULL, NULL, N'130', NULL, NULL, CAST(130 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Sink] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Smartphone] ON 

INSERT [dbo].[tbl_Smartphone] ([SmartphoneID], [CategoryID], [Usernme], [NoOfSmartphones], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'11', 3, N'Smartphone', N' Apple', N' Huawei', N' Realme', N' Apple iPhone X ', N' Huawei P30 Pro', N' Realme 5 Pro', NULL, NULL, NULL, N'151', N'169', N'184', CAST(504 AS Decimal(18, 0)), N'sm', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Smartphone] ([SmartphoneID], [CategoryID], [Usernme], [NoOfSmartphones], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 3, N'14', 1, N'Smartphone', N' Samsung ', NULL, NULL, N' Samsung Galaxy S20 Ultra', NULL, NULL, NULL, NULL, NULL, N'195', NULL, NULL, CAST(195 AS Decimal(18, 0)), N'sm', N'smartphone')
SET IDENTITY_INSERT [dbo].[tbl_Smartphone] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Smartpowerstrip] ON 

INSERT [dbo].[tbl_Smartpowerstrip] ([SmartpowerstripID], [CategoryID], [Usernme], [NoOfSmartpowerstrips], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 6, N'64', 1, N'Smart power strip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200 AS Decimal(18, 0)), NULL, N'powerstrip')
SET IDENTITY_INSERT [dbo].[tbl_Smartpowerstrip] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SmartSpeaker] ON 

INSERT [dbo].[tbl_SmartSpeaker] ([SmartSpeakerID], [CategoryID], [Usernme], [NoOfSmartSpeakers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'11', 3, N'Smart Speaker', N' Amazon', N' Microsoft', N' Google', N' Amazon Echo Show 8', N' Microsoft Home Hub', N'Google Home Wi-Fi Smart Speaker ', NULL, NULL, NULL, N'152', N'179', N'196', CAST(527 AS Decimal(18, 0)), N'sp', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_SmartSpeaker] ([SmartSpeakerID], [CategoryID], [Usernme], [NoOfSmartSpeakers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 3, N'14', 3, N'Smart Speaker', N' Amazon', N' Marshall', N' Google', N' Amazon Echo Dot (3rd Generation)', N' Marshall Stereo Active 2-in-1 Bluetooth Speaker', N' Google Home Hub', NULL, NULL, NULL, N'217', N'119', N'111', CAST(447 AS Decimal(18, 0)), N'sp', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
SET IDENTITY_INSERT [dbo].[tbl_SmartSpeaker] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Solarpanels] ON 

INSERT [dbo].[tbl_Solarpanels] ([SolarpanelstID], [CategoryID], [Usernme], [NoOfSolarpanels], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 6, N'64', 1, N'Solar Panel', N' SunPower Corporation', NULL, NULL, N' SunPower Elite ', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, CAST(3 AS Decimal(18, 0)), N'', N'solarpanel')
SET IDENTITY_INSERT [dbo].[tbl_Solarpanels] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Stove] ON 

INSERT [dbo].[tbl_Stove] ([StoveID], [CategoryID], [Usernme], [NoOfStoves], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'1', 3, N'Stove', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Stove] ([StoveID], [CategoryID], [Usernme], [NoOfStoves], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 1, N'2', 1, N'Stove', N' Bosch', NULL, NULL, N' Bosch 800 Series 5-Element Electric Cooktop ', NULL, NULL, NULL, NULL, NULL, N'2265', NULL, NULL, CAST(2265 AS Decimal(18, 0)), N'Stovehttps://www.youtube.com/', N'stove')
SET IDENTITY_INSERT [dbo].[tbl_Stove] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Television] ON 

INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 3, N'1', 3, N'Television', N' Yuki (Sharp)', N' Yuki (Sharp)', N' USA Network', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 3, N'17', 3, N'Television', N' WarnerMedia Entertainment', N' 21st Century Fox', N' ITV Studios', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 3, N'8', 3, N'Television', N' Sky', N' Sony Pictures Television', N' A+E Networks', N' SkyUltra HD Television', N' Sony Bravia X900H 4K LED TV', N'  A+E Networks HD DVR Set-Top Box ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (4, 3, N'9', 3, N'Television', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (5, 3, N'10', 3, N'Television', N' Sony Pictures Television', N' ABC', N' Walt Disney Television', N' Sony Bravia 4K Ultra HD OLED Smart TV', N' ABC Ultra HD Television', N' The Mickey Mouse Show', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (6, 3, N'11', 3, N'Television', N' Sony Pictures Television', N' Fox corporation', N' ViacomCBS', N' Sony Bravia 4K X1 OLED TV ', N' Fox SmartScreen Ultra HD LED TV', N' ViacomCBS Family Channel', NULL, NULL, NULL, N'238', N'217', N'231', CAST(686 AS Decimal(18, 0)), N'tv', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (7, 3, N'12', 3, N'Television', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (8, 3, N'13', 3, N'Television', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (9, 3, N'14', 3, N'Television', N' Comcast Corporation', N' HBO', N' CBS Corporation', N' Xfinity X1 4K ULTRA TV', N' HD Ultra 4K Smart HBOTV', N' CBS Sports Network – sports programming network ', NULL, NULL, NULL, N'227', N'181', N'128', CAST(536 AS Decimal(18, 0)), N'tv', N'tv')
INSERT [dbo].[tbl_Television] ([TelevisionID], [CategoryID], [Usernme], [NoOfTelevisions], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (10, 3, N'31', 2, N'Television', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Television] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Toilet] ON 

INSERT [dbo].[tbl_Toilet] ([ToiletID], [CategoryID], [Usernme], [NoOfToilets], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Toilet', N' Mansfield Plumbing ', NULL, NULL, N' Mansfield Plumbing Decatech Electric Toilet', NULL, NULL, NULL, NULL, NULL, N'161', NULL, NULL, CAST(161 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Toilet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (1, N'1')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (2, N'2')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (3, N'3')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (4, N'4')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (5, N'5')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (6, N'6')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (7, N'7')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (8, N'8')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (9, N'9')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (10, N'10')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (11, N'11')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (12, N'12')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (13, N'13')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (14, N'14')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (15, N'15')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (16, N'16')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (17, N'17')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (18, N'18')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (19, N'19')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (20, N'20')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (21, N'21')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (22, N'22')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (23, N'23')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (24, N'24')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (25, N'25')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (26, N'26')
INSERT [dbo].[tbl_User] ([UserID], [Username]) VALUES (27, N'27')
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_WashingMachine] ON 

INSERT [dbo].[tbl_WashingMachine] ([WashingMachineID], [CategoryID], [Usernme], [NoOfWashingMachine], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 1, N'3', 3, N'Washing Machine', N' Bosch', N' GE', N' Frigidaire', N' Bosch WAT283M0GB Freestanding Washing Machine', N' GE GTW500ASNWS 5', N' Frigidaire 5', NULL, NULL, NULL, N'424', N'490', N'431', CAST(1345 AS Decimal(18, 0)), N'Washingmachinehttps://www.youtube.com/', N'washingmachine')
SET IDENTITY_INSERT [dbo].[tbl_WashingMachine] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_WaterAC] ON 

INSERT [dbo].[tbl_WaterAC] ([WaterACID], [CategoryID], [Usernme], [NoOfWaterACs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 2, N'4', 2, N'Air conditioner', N' LG Electronics', N' Daikin ', NULL, N' LG 10,000 BTU Smart Window Air Conditioner', N' Daikin Emura FTXZ25N - 2', NULL, NULL, NULL, NULL, N'129', N'168', NULL, CAST(297 AS Decimal(18, 0)), N'Air conditioner with a water collection tray', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_WaterAC] ([WaterACID], [CategoryID], [Usernme], [NoOfWaterACs], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 2, N'6', 3, N'Air conditioner', N' Carrier ', N' Daikin ', N' Whirlpool', N' Carrier EcoBlue Fusion Single Zone Wall-Mounted Air Conditioner', N' Daikin FTXS25LVMA 2', N' Whirlpool 5', NULL, NULL, NULL, N'120', N'208', N'222', CAST(550 AS Decimal(18, 0)), N'Air conditioner with a water collection tray', N'ac')
SET IDENTITY_INSERT [dbo].[tbl_WaterAC] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Waterdispenser] ON 

INSERT [dbo].[tbl_Waterdispenser] ([WaterdispenserID], [CategoryID], [Usernme], [NoOfWaterdispensers], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'22', 1, N'Water dispensers', N' Oasis International', NULL, NULL, N' Oasis Countertop Hot & Cold Water Dispenser', NULL, NULL, NULL, NULL, NULL, N'209', NULL, NULL, CAST(209 AS Decimal(18, 0)), N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_Waterdispenser] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_WaterHeater] ON 

INSERT [dbo].[tbl_WaterHeater] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfWaterHeaters], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 2, N'6', 2, N'Water Heater', N' Rheem Water Heaters', N' Navien, Inc', N' Whirlpool', N' Rheem Performance Tank Gas Water Heater', N' Navien NCB-210-LP Condensing Combination Gas Boiler and Water Heater', N' Whirlpool 24-Gallon Water Heater with Temperature/Pressure Relief Valve ', NULL, NULL, NULL, N'205', N'179', N'214', CAST(598 AS Decimal(18, 0)), N'Water heater', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_WaterHeater] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfWaterHeaters], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 2, N'2', 2, N'Water Heater', N' Bosch', N' American Standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_WaterHeater] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfWaterHeaters], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (3, 2, N'4', 3, N'Water Heater', N' Rheem', N' Whirlpool', N' Lochinvar', N' Rheem Performance Platinum 50 Gal', N' Whirlpool 30-Gallon Mobile Home Natural Gas Water Heater ', N'Lochinvar Knight XL 390K BTU Natural Gas High Efficiency Water Heater', NULL, NULL, NULL, N'173', N'146', N'218', CAST(537 AS Decimal(18, 0)), N'Water heater', N'C:\Users\Muzamil Khan\Desktop\Co2 Folder')
INSERT [dbo].[tbl_WaterHeater] ([RefrigilatorID], [CategoryID], [Usernme], [NoOfWaterHeaters], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (4, 2, N'35', 2, N'Water Heater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_WaterHeater] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_WRefrigilator] ON 

INSERT [dbo].[tbl_WRefrigilator] ([WRefrigilatorID], [CategoryID], [Usernme], [NoOfWRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (1, 4, N'23', 1, N'Refrigilator', N' LG Electronics', NULL, NULL, N' LG Smart Wi-Fi Enabled French Door Refrigerator ', NULL, NULL, NULL, NULL, NULL, N'154', NULL, NULL, CAST(154 AS Decimal(18, 0)), N'', N'')
INSERT [dbo].[tbl_WRefrigilator] ([WRefrigilatorID], [CategoryID], [Usernme], [NoOfWRefrigilators], [Appliance], [Make1], [Make2], [Make3], [Model1], [Model2], [Model3], [Tip1], [Tip2], [Tip3], [Wallt1], [Wallt2], [Wallt3], [TotalWatts], [AffilaiteLink], [Image]) VALUES (2, 4, N'53', 1, N'Refrigilator', N' Whirlpool', NULL, NULL, N' Whirlpool WRF767SDHZ 26 Cu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_WRefrigilator] OFF
GO
ALTER TABLE [dbo].[tbl_Barbecue]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Barbecue]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Bathtubr]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Bathtubr]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Bidet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Bidet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Computer]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Computer]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Cooktop]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Cooktop]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Dishwashere]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Dishw__Categ__671F4F74] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Dishwashere] CHECK CONSTRAINT [FK__tbl_Dishw__Categ__671F4F74]
GO
ALTER TABLE [dbo].[tbl_Dryer]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Dryer__Categ__4F47C5E3] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Dryer] CHECK CONSTRAINT [FK__tbl_Dryer__Categ__4F47C5E3]
GO
ALTER TABLE [dbo].[tbl_Electriccarcharger]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Electriccarcharger]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Faucet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Faucet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Fireplace]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Fireplace]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Freezer]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Freez__Categ__4A8310C6] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Freezer] CHECK CONSTRAINT [FK__tbl_Freez__Categ__4A8310C6]
GO
ALTER TABLE [dbo].[tbl_Furnance]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Furnance]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GamingConsole]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GamingConsole]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GasDryer]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GasDryer]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GasOven]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_GasOven]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Generator]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Generator]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_healthiestlightbulbs]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_healthiestlightbulbs]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Humidifier]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Humidifier]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Jacuzzi]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Jacuzzi]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Laptop]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Laptop]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Lawnsprinklersystem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Lawnsprinklersystem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Microwave]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Micro__Categ__540C7B00] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Microwave] CHECK CONSTRAINT [FK__tbl_Micro__Categ__540C7B00]
GO
ALTER TABLE [dbo].[tbl_Modem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Modem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Outdoorsprinklersystem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Outdoorsprinklersystem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Oven]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Oven__Catego__58D1301D] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Oven] CHECK CONSTRAINT [FK__tbl_Oven__Catego__58D1301D]
GO
ALTER TABLE [dbo].[tbl_Pool]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Pool]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Programmablethermostat]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Programmablethermostat]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Refrigilator]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Refri__Categ__02FC7413] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Refrigilator] CHECK CONSTRAINT [FK__tbl_Refri__Categ__02FC7413]
GO
ALTER TABLE [dbo].[tbl_Router]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Router]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Shower]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Shower]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Showerhead]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Showerhead]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Sink]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Sink]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Smartphone]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Smartphone]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Smartpowerstrip]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Smartpowerstrip]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_SmartSpeaker]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_SmartSpeaker]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Solarpanels]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Solarpanels]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Stove]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Stove__Categ__5D95E53A] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Stove] CHECK CONSTRAINT [FK__tbl_Stove__Categ__5D95E53A]
GO
ALTER TABLE [dbo].[tbl_Television]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Television]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Toilet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Toilet]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WashingMachine]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Washi__Categ__625A9A57] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WashingMachine] CHECK CONSTRAINT [FK__tbl_Washi__Categ__625A9A57]
GO
ALTER TABLE [dbo].[tbl_WaterAC]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WaterAC]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Waterdispenser]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_Waterdispenser]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WaterHeater]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WaterHeater]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WRefrigilator]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_WRefrigilator]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
/****** Object:  StoredProcedure [dbo].[GetLowestTotalWattsRecords]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLowestTotalWattsRecords]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Refrigerator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Refrigilator
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Microwave' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Microwave
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Freezer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Freezer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Oven' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Oven
        WHERE Usernme = @username
    )
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults);
END;
GO
/****** Object:  StoredProcedure [dbo].[GetSecondLowestTotalWattsRecords]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSecondLowestTotalWattsRecords]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Refrigerator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Refrigilator
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Microwave' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Microwave
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Freezer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Freezer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Oven' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Oven
        WHERE Usernme = @username
    )
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetThirdHighestTotalWattsRecords]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetThirdHighestTotalWattsRecords]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Refrigerator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Refrigilator
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Microwave' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Microwave
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Freezer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Freezer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Oven' AS Appliance, TotalWatts, Tip1, Tip2, Tip3
        FROM tbl_Oven
        WHERE Usernme = @username
    )
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForAlternateElectricityAppliancePage]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForAlternateElectricityAppliancePage]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Programmable thermostat' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Programmablethermostat
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Solar panels' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Solarpanels
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Smart power strip' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Smartpowerstrip
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Electric car charger' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Electriccarcharger
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Healthiest light bulbs' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_healthiestlightbulbs
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForAlternateElectricityAppliancePages]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForAlternateElectricityAppliancePages]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Thermostat' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Programmablethermostat
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Solar panels' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Solarpanels
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Power strip' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Smartpowerstrip
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Car charger' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Electriccarcharger
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Light bulbs' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_healthiestlightbulbs
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForGasAppliance]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForGasAppliance]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Cooktop' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Cooktop
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Gas Dryer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_GasDryer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Barbeque' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Barbecue
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Generator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Generator
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Gas Oven' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_GasOven
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForHeatingAndCoolingAppliancesPage]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForHeatingAndCoolingAppliancesPage]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Water Heater' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_WaterHeater
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Air conditioner' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_WaterAC
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Gas furnace' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Furnance
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Fireplace' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Fireplace
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForHomeEntertainmentAppliance]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForHomeEntertainmentAppliance]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Television' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Television
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Computer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Computer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Laptop' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Laptop
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Smartphone' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Smartphone
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Smart Speaker' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_SmartSpeaker
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Gaming Console' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_GamingConsole
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Router' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Router
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Modem' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Modem
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForKitchenResults]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForKitchenResults]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Refrigerator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Refrigilator
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Microwave' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Microwave
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Freezer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Freezer
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Oven' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Oven
        WHERE Usernme = @username
		UNION ALL
		SELECT 'Stove' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Stove
        WHERE Usernme = @username
        UNION ALL
		SELECT 'Dishwasher' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Dishwashere
        WHERE Usernme = @username
        UNION ALL
		SELECT 'Washing Machine' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_WashingMachine
        WHERE Usernme = @username
        UNION ALL
		SELECT 'Dryer' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Dryer
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForWaterAppliance]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetWattsRecordsForWaterAppliance]
    @username NVARCHAR(150)
AS
BEGIN
    WITH CombinedResults AS (
        SELECT 'Shower' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Shower
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Bathtub' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Bathtubr
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Sink' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Sink
        WHERE Usernme = @username
        UNION ALL
        SELECT 'Toilet' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Toilet
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Humidifier' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Humidifier
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Outdoor Sprinkler' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Outdoorsprinklersystem
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Pool' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Pool
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Jacuzzi' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Jacuzzi
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Bidet' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Bidet
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Showerhead' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Showerhead
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Faucet' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Faucet
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Lawn Sprinkler' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_Lawnsprinklersystem
        WHERE Usernme = @username
		UNION ALL
        SELECT 'Refrigerator' AS Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
        FROM tbl_WRefrigilator
        WHERE Usernme = @username
    )
    
    -- Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (SELECT MIN(TotalWatts) FROM CombinedResults)
    
    UNION ALL
    
    -- Second Lowest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MIN(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts > (
            SELECT MIN(TotalWatts)
            FROM CombinedResults
        )
    )
    
    UNION ALL
    
    -- Third Highest TotalWatts
    SELECT Appliance, TotalWatts, Tip1, Tip2, Tip3,AffilaiteLink,Image
    FROM CombinedResults
    WHERE TotalWatts = (
        SELECT MAX(TotalWatts)
        FROM CombinedResults
        WHERE TotalWatts < (
            SELECT MAX(TotalWatts)
            FROM CombinedResults
        )
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertRefrigilator]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertRefrigilator]
    @Username nvarchar(150),
    @NoOfRefrigilators int
AS
BEGIN
    INSERT INTO tbl_Refrigilator (CategoryID,Appliance, Usernme, NoOfRefrigilators)
    VALUES (1,'Refrigilator', @Username, @NoOfRefrigilators)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUsernameAndReturn]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUsernameAndReturn]
AS
BEGIN
  DECLARE @LatestUsername INT;

  -- Get the latest Username
  SELECT TOP 1 @LatestUsername = CAST(Username AS INT)
  FROM tbl_User
  ORDER BY UserID DESC;

  -- Check if the latest Username is NULL or 0, and set the new value accordingly
  IF @LatestUsername IS NULL OR @LatestUsername = 0
    SET @LatestUsername = 1;
  ELSE
    SET @LatestUsername = @LatestUsername + 1;

  -- Insert the new Username into the table
  INSERT INTO tbl_User (Username)
  VALUES (CAST(@LatestUsername AS NVARCHAR(150)));

  -- Select the newly inserted Username and return it as a result set
  SELECT CAST(@LatestUsername AS NVARCHAR(150)) AS Username;
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectBarbecueByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectBarbecueByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfBarbecues
    FROM tbl_Barbecue
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectBathtubByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectBathtubByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfBathtubs
    FROM tbl_Bathtubr
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectBidetByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectBidetByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfBidets
    FROM tbl_Bidet
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectComputerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectComputerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfComputers
    FROM tbl_Computer
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectCooktopByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectCooktopByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfCooktops
    FROM tbl_Cooktop
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDishwasherByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectDishwasherByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfDishwasher
    FROM tbl_Dishwashere
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDryerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectDryerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfDryer
    FROM tbl_Dryer
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectElectriccarchargerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectElectriccarchargerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfElectriccarchargers
    FROM tbl_Electriccarcharger
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectFaucetByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectFaucetByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfFaucets
    FROM tbl_Faucet
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectFireplaceByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectFireplaceByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfFireplace
    FROM tbl_Fireplace
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectFreezersByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SelectFreezersByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfFreezers
    FROM tbl_Freezer
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectFurnanceByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectFurnanceByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfFurnance
    FROM tbl_Furnance
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectGamingConsoleByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectGamingConsoleByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfGamingConsoles
    FROM tbl_GamingConsole
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectGasDryerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectGasDryerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfGasDryers
    FROM tbl_GasDryer
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectGasOvenByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectGasOvenByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfGasOvens
    FROM tbl_GasOven
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectGeneratorByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectGeneratorByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfGenerators
    FROM tbl_Generator
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelecthealthiestlightbulbsByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelecthealthiestlightbulbsByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfhealthiestlightbulbs
    FROM tbl_healthiestlightbulbs
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectHumidifierByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectHumidifierByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfHumidifiers
    FROM tbl_Humidifier
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectJacuzziByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectJacuzziByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfJacuzzis
    FROM tbl_Jacuzzi
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLaptopByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectLaptopByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfLaptops
    FROM tbl_Laptop
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLawnsprinklersystemByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectLawnsprinklersystemByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfLawnsprinklersystems
    FROM tbl_Lawnsprinklersystem
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMicrowavesByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectMicrowavesByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfMicrowaves
    FROM tbl_Microwave
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectModemByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectModemByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfModems
    FROM tbl_Modem
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectOutdoorsprinklersystemByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectOutdoorsprinklersystemByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfOutdoorsprinklersystems
    FROM tbl_Outdoorsprinklersystem
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectOvensByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectOvensByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfOvens
    FROM tbl_Oven
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectPoolByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectPoolByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfPools
    FROM tbl_Pool
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectProgrammablethermostatByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectProgrammablethermostatByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfProgrammablethermostats
    FROM tbl_Programmablethermostat
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectRefrigilatorsByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectRefrigilatorsByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfRefrigilators
    FROM tbl_Refrigilator
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectRouterByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectRouterByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfRouters
    FROM tbl_Router
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectShowerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectShowerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfShowers
    FROM tbl_Shower
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectShowerheadByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectShowerheadByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfShowerheads
    FROM tbl_Showerhead
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSinkByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectSinkByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfSinks
    FROM tbl_Sink
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSmartphoneByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectSmartphoneByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfSmartphones
    FROM tbl_Smartphone
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSmartpowerstripByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectSmartpowerstripByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfSmartpowerstrips
    FROM tbl_Smartpowerstrip
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSmartSpeakerByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectSmartSpeakerByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfSmartSpeakers
    FROM tbl_SmartSpeaker
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSolarpanelsByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectSolarpanelsByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfSolarpanels
    FROM tbl_Solarpanels
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectStovesByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectStovesByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfStoves
    FROM tbl_Stove
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTelevisionByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectTelevisionByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfTelevisions
    FROM tbl_Television
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectToiletByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectToiletByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfToilets
    FROM tbl_Toilet
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectWashingMachineByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectWashingMachineByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfWashingMachine
    FROM tbl_WashingMachine
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectWaterACByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectWaterACByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfWaterACs
    FROM tbl_WaterAC
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectWaterdispenserByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectWaterdispenserByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfWaterdispensers
    FROM tbl_Waterdispenser
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectWaterHeaterByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectWaterHeaterByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfWaterHeaters
    FROM tbl_WaterHeater
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectWRefrigilatorByUsernme]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectWRefrigilatorByUsernme]
    @Username NVARCHAR(150)
AS
BEGIN
    SELECT NoOfWRefrigilators
    FROM tbl_WRefrigilator
    WHERE Usernme = @Username;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRefrigilatorTips]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRefrigilatorTips]
    @Username NVARCHAR(150),
    @NewTip1 NVARCHAR(MAX),
    @NewTip2 NVARCHAR(MAX),
    @NewTip3 NVARCHAR(MAX)
AS
BEGIN
    UPDATE [dbo].[tbl_Refrigilator]
    SET [Tip1] = @NewTip1,
        [Tip2] = @NewTip2,
        [Tip3] = @NewTip3
    WHERE [tbl_Refrigilator].Usernme = @Username;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBarbecue]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForBarbecue]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Barbecue]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBathtub]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForBathtub]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Bathtubr]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBidet]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForBidet]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Bidet]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForComputer]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForComputer]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Computer]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForCooktop]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForCooktop]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Cooktop]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForElectriccarcharger]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForElectriccarcharger]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Electriccarcharger]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFaucet]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForFaucet]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Faucet]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFireplace]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForFireplace]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Fireplace]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFurnance]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForFurnance]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Furnance]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGamingConsole]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForGamingConsole]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_GamingConsole]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGasDryer]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForGasDryer]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_GasDryer]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGasOven]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForGasOven]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_GasOven]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGenerator]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForGenerator]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Generator]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForHumidifier]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForHumidifier]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Humidifier]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForJacuzzi]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForJacuzzi]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Jacuzzi]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForLaptop]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForLaptop]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Laptop]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForLawnsprinklersystem]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForLawnsprinklersystem]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Lawnsprinklersystem]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForModem]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForModem]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Modem]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForOutdoorsprinklersystem]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForOutdoorsprinklersystem]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Outdoorsprinklersystem]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForPool]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForPool]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Pool]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForProgrammablethermostat]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForProgrammablethermostat]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Programmablethermostat]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForRouter]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForRouter]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Router]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForShower]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForShower]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Shower]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForShowerhead]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForShowerhead]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Showerhead]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSink]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForSink]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Sink]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartphone]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForSmartphone]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Smartphone]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartpowerstrip]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForSmartpowerstrip]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Smartpowerstrip]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartSpeaker]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForSmartSpeaker]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_SmartSpeaker]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSolarpanels]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForSolarpanels]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Solarpanels]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForToilet]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForToilet]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Toilet]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForTV]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForTV]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Television]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTotalWattsForUser]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Refrigilator]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser2]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser2]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Freezer]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser3]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser3]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Dryer]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser4]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser4]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Microwave]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser5]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser5]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Oven]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser6]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser6]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Stove]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser7]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser7]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_WashingMachine]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser8]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser8]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Dishwashere]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser9]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForUser9]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_WaterHeater]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWaterAC]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForWaterAC]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_WaterAC]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWaterdispenser]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForWaterdispenser]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_Waterdispenser]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWRefrigilator]    Script Date: 05/11/2023 3:06:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateTotalWattsForWRefrigilator]
    @Username NVARCHAR(255)
AS
BEGIN
    UPDATE [dbo].[tbl_WRefrigilator]
    SET [TotalWatts] = 
        CAST(ISNULL([Wallt1], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt2], 0) AS DECIMAL(18, 2)) + 
        CAST(ISNULL([Wallt3], 0) AS DECIMAL(18, 2))
    WHERE [Usernme] = @Username; -- Add a condition to update only if needed
END
GO
USE [master]
GO
ALTER DATABASE [db_Co2HomeSavers] SET  READ_WRITE 
GO
