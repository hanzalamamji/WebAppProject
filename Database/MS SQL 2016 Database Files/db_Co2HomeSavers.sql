USE [master]
GO
/****** Object:  Database [db_Co2HomeSavers]    Script Date: 05/11/2023 7:31:26 pm ******/
CREATE DATABASE [db_Co2HomeSavers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Co2HomeSavers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.CO2MSSQLSERVER\MSSQL\DATA\db_Co2HomeSavers.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Co2HomeSavers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.CO2MSSQLSERVER\MSSQL\DATA\db_Co2HomeSavers_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db_Co2HomeSavers] SET COMPATIBILITY_LEVEL = 130
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
ALTER DATABASE [db_Co2HomeSavers] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_Co2HomeSavers] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [db_Co2HomeSavers]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [db_Co2HomeSavers]
GO
/****** Object:  Table [dbo].[tbl_AffilaiteLink]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Barbecue]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bathtubr]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bidet]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Computer]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cooktop]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Dishwashere]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Dryer]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Electriccarcharger]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Faucet]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fireplace]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Freezer]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Furnance]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GamingConsole]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GasDryer]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GasOven]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Generator]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_healthiestlightbulbs]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Humidifier]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Jacuzzi]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Laptop]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Lawnsprinklersystem]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Microwave]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Modem]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Outdoorsprinklersystem]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Oven]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Pool]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Programmablethermostat]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Refrigilator]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ResutImages]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Router]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Shower]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Showerhead]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Sink]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Smartphone]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Smartpowerstrip]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SmartSpeaker]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Solarpanels]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Stove]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Television]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Toilet]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WashingMachine]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WaterAC]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Waterdispenser]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WaterHeater]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_WRefrigilator]    Script Date: 05/11/2023 7:31:26 pm ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[GetLowestTotalWattsRecords]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetSecondLowestTotalWattsRecords]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetThirdHighestTotalWattsRecords]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForAlternateElectricityAppliancePage]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForAlternateElectricityAppliancePages]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForGasAppliance]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForHeatingAndCoolingAppliancesPage]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForHomeEntertainmentAppliance]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForKitchenResults]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetWattsRecordsForWaterAppliance]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[InsertRefrigilator]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[InsertUsernameAndReturn]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBarbecueByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBathtubByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBidetByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectComputerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectCooktopByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDishwasherByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDryerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectElectriccarchargerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectFaucetByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectFireplaceByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectFreezersByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectFurnanceByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectGamingConsoleByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectGasDryerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectGasOvenByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectGeneratorByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelecthealthiestlightbulbsByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectHumidifierByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectJacuzziByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectLaptopByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectLawnsprinklersystemByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectMicrowavesByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectModemByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectOutdoorsprinklersystemByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectOvensByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectPoolByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectProgrammablethermostatByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectRefrigilatorsByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectRouterByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectShowerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectShowerheadByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectSinkByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectSmartphoneByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectSmartpowerstripByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectSmartSpeakerByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectSolarpanelsByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectStovesByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectTelevisionByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectToiletByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectWashingMachineByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectWaterACByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectWaterdispenserByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectWaterHeaterByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[SelectWRefrigilatorByUsernme]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateRefrigilatorTips]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBarbecue]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBathtub]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForBidet]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForComputer]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForCooktop]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForElectriccarcharger]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFaucet]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFireplace]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForFurnance]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGamingConsole]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGasDryer]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGasOven]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForGenerator]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForHumidifier]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForJacuzzi]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForLaptop]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForLawnsprinklersystem]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForModem]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForOutdoorsprinklersystem]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForPool]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForProgrammablethermostat]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForRouter]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForShower]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForShowerhead]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSink]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartphone]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartpowerstrip]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSmartSpeaker]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForSolarpanels]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForToilet]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForTV]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser2]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser3]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser4]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser5]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser6]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser7]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser8]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForUser9]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWaterAC]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWaterdispenser]    Script Date: 05/11/2023 7:31:27 pm ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTotalWattsForWRefrigilator]    Script Date: 05/11/2023 7:31:27 pm ******/
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
