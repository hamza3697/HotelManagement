USE [master]
GO
/****** Object:  Database [Hostel_management_system]    Script Date: 5/21/2019 10:23:54 PM ******/
CREATE DATABASE [Hostel_management_system]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hostel_management_system', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hostel_management_system.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hostel_management_system_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hostel_management_system_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hostel_management_system] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hostel_management_system].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hostel_management_system] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hostel_management_system] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hostel_management_system] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hostel_management_system] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hostel_management_system] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hostel_management_system] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hostel_management_system] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hostel_management_system] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hostel_management_system] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hostel_management_system] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hostel_management_system] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hostel_management_system] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hostel_management_system] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hostel_management_system] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hostel_management_system] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hostel_management_system] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hostel_management_system] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hostel_management_system] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hostel_management_system] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hostel_management_system] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hostel_management_system] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hostel_management_system] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hostel_management_system] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hostel_management_system] SET  MULTI_USER 
GO
ALTER DATABASE [Hostel_management_system] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hostel_management_system] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hostel_management_system] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hostel_management_system] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hostel_management_system] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hostel_management_system]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 5/21/2019 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[C_id] [int] NOT NULL,
	[F_name] [varchar](50) NULL,
	[L_name] [varchar](50) NULL,
	[adress] [varchar](50) NULL,
	[postcode] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[phoneno] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 5/21/2019 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[staff_id] [int] NOT NULL,
	[F_name] [varchar](50) NULL,
	[L_name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[adress] [varchar](50) NULL,
	[postcode] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[phone_no] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[hostel_id] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hostel]    Script Date: 5/21/2019 10:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hostel](
	[hotel_id] [int] NOT NULL,
	[H_name] [varchar](50) NULL,
	[H_adress] [varchar](50) NULL,
	[H_postcode] [varchar](50) NULL,
	[H_state] [varchar](50) NULL,
	[H_phoneno] [varchar](50) NULL,
	[Manager_id] [int] NULL,
 CONSTRAINT [PK_Hostel] PRIMARY KEY CLUSTERED 
(
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Hostel_management_system] SET  READ_WRITE 
GO
