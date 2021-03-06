USE [master]
GO
/****** Object:  Database [LagomPerfume]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE DATABASE [LagomPerfume]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LagomPerfume', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LagomPerfume.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LagomPerfume_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LagomPerfume_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LagomPerfume] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LagomPerfume].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LagomPerfume] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LagomPerfume] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LagomPerfume] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LagomPerfume] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LagomPerfume] SET ARITHABORT OFF 
GO
ALTER DATABASE [LagomPerfume] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LagomPerfume] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LagomPerfume] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LagomPerfume] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LagomPerfume] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LagomPerfume] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LagomPerfume] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LagomPerfume] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LagomPerfume] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LagomPerfume] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LagomPerfume] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LagomPerfume] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LagomPerfume] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LagomPerfume] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LagomPerfume] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LagomPerfume] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LagomPerfume] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LagomPerfume] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LagomPerfume] SET  MULTI_USER 
GO
ALTER DATABASE [LagomPerfume] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LagomPerfume] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LagomPerfume] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LagomPerfume] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LagomPerfume] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LagomPerfume]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branches]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branches](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [varchar](100) NULL,
	[Description] [ntext] NULL,
	[Status_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [varchar](50) NOT NULL,
	[Content] [nvarchar](200) NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[ImageUrl] [varchar](100) NULL,
	[User_Id] [varchar](50) NOT NULL,
	[Product_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discounts](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[ExpiredAt] [datetime2](7) NOT NULL,
	[Amount] [int] NOT NULL,
	[DiscountForm] [ntext] NOT NULL,
	[Discount_Type_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiscountTypes]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiscountTypes](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DiscountTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[Id] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](100) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[Email] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Title] [varchar](100) NOT NULL,
	[Content] [ntext] NOT NULL,
	[Status_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [varchar](50) NOT NULL,
	[SKU] [varchar](100) NULL,
	[TotalPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Order_Id] [varchar](50) NOT NULL,
	[Product_Id] [varchar](50) NOT NULL,
	[Discount_Id] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [varchar](50) NOT NULL,
	[AmountProduct] [int] NOT NULL,
	[ShippingAddress] [varchar](100) NOT NULL,
	[OrderAddress] [varchar](100) NOT NULL,
	[OrderAddress2] [varchar](100) NULL,
	[OrderPhone] [varchar](20) NOT NULL,
	[OrderEmail] [varchar](100) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderStatus] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[User_Id] [varchar](50) NULL,
	[Discount_Id] [varchar](50) NULL,
	[Status_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [varchar](50) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Thumbnail] [varchar](50) NULL,
	[Product_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [ntext] NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[Stock] [int] NOT NULL,
	[Branch_Id] [varchar](50) NOT NULL,
	[Discount_Id] [varchar](50) NULL,
	[Status_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductSubCategory]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductSubCategory](
	[ProductsId] [varchar](50) NOT NULL,
	[SubCategoriesId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductSubCategory] PRIMARY KEY CLUSTERED 
(
	[ProductsId] ASC,
	[SubCategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ratings](
	[User_Id] [varchar](50) NOT NULL,
	[Product_Id] [varchar](50) NOT NULL,
	[NumberOfStart] [int] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC,
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Category_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/11/2021 5:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [varchar](50) NOT NULL,
	[Username] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[PassHash] [varchar](1) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Gender] [varchar](10) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Role_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Branches_Status_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Branches_Status_Id] ON [dbo].[Branches]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Comments_Product_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_Product_Id] ON [dbo].[Comments]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Comments_User_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_User_Id] ON [dbo].[Comments]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Discounts_Discount_Type_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Discounts_Discount_Type_Id] ON [dbo].[Discounts]
(
	[Discount_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Feedbacks_Status_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Feedbacks_Status_Id] ON [dbo].[Feedbacks]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderDetails_Discount_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_Discount_Id] ON [dbo].[OrderDetails]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderDetails_Order_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_Order_Id] ON [dbo].[OrderDetails]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderDetails_Product_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_Product_Id] ON [dbo].[OrderDetails]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Orders_Discount_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Discount_Id] ON [dbo].[Orders]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Orders_Status_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Status_Id] ON [dbo].[Orders]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Orders_User_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_User_Id] ON [dbo].[Orders]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProductImages_Product_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_Product_Id] ON [dbo].[ProductImages]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Products_Branch_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_Branch_Id] ON [dbo].[Products]
(
	[Branch_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Products_Discount_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_Discount_Id] ON [dbo].[Products]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Products_Status_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_Status_Id] ON [dbo].[Products]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProductSubCategory_SubCategoriesId]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductSubCategory_SubCategoriesId] ON [dbo].[ProductSubCategory]
(
	[SubCategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Ratings_User_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_User_Id] ON [dbo].[Ratings]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SubCategories_Category_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubCategories_Category_Id] ON [dbo].[SubCategories]
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users_Role_Id]    Script Date: 6/11/2021 5:34:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_Role_Id] ON [dbo].[Users]
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Statuses_Status_Id] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_Statuses_Status_Id]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_Product_Id]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_User_Id]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK_Discounts_DiscountTypes_Discount_Type_Id] FOREIGN KEY([Discount_Type_Id])
REFERENCES [dbo].[DiscountTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK_Discounts_DiscountTypes_Discount_Type_Id]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Statuses_Status_Id] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Statuses_Status_Id]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Discounts_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discounts] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Discounts_Discount_Id]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_Order_Id] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_Order_Id]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_Product_Id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Discounts_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discounts] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Discounts_Discount_Id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses_Status_Id] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses_Status_Id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_User_Id]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_Product_Id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Branches_Branch_Id] FOREIGN KEY([Branch_Id])
REFERENCES [dbo].[Branches] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Branches_Branch_Id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Discounts_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discounts] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Discounts_Discount_Id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Statuses_Status_Id] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Statuses_Status_Id]
GO
ALTER TABLE [dbo].[ProductSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubCategory_Products_ProductsId] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSubCategory] CHECK CONSTRAINT [FK_ProductSubCategory_Products_ProductsId]
GO
ALTER TABLE [dbo].[ProductSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubCategory_SubCategories_SubCategoriesId] FOREIGN KEY([SubCategoriesId])
REFERENCES [dbo].[SubCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSubCategory] CHECK CONSTRAINT [FK_ProductSubCategory_SubCategories_SubCategoriesId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Products_Product_Id]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users_User_Id]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories_Category_Id]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_Role_Id]
GO
USE [master]
GO
ALTER DATABASE [LagomPerfume] SET  READ_WRITE 
GO
