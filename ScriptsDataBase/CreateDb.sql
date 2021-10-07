USE [master]
GO

/****** Object:  Database [PruebaSD]    Script Date: 7/10/2021 3:06:44 p. m. ******/
CREATE DATABASE [PruebaSD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaSD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PruebaSD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PruebaSD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PruebaSD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [PruebaSD] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaSD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PruebaSD] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PruebaSD] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PruebaSD] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PruebaSD] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PruebaSD] SET ARITHABORT OFF 
GO

ALTER DATABASE [PruebaSD] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PruebaSD] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [PruebaSD] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PruebaSD] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PruebaSD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PruebaSD] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PruebaSD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PruebaSD] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PruebaSD] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PruebaSD] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PruebaSD] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PruebaSD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PruebaSD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PruebaSD] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PruebaSD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PruebaSD] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PruebaSD] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PruebaSD] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PruebaSD] SET RECOVERY FULL 
GO

ALTER DATABASE [PruebaSD] SET  MULTI_USER 
GO

ALTER DATABASE [PruebaSD] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PruebaSD] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PruebaSD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PruebaSD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [PruebaSD] SET  READ_WRITE 
GO


