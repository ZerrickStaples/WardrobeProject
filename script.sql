USE [master]
GO
/****** Object:  Database [wardrobe_db]    Script Date: 10/21/2016 9:55:55 AM ******/
CREATE DATABASE [wardrobe_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wardrobe_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe_db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wardrobe_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wardrobe_db] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wardrobe_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wardrobe_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wardrobe_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wardrobe_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wardrobe_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wardrobe_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [wardrobe_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wardrobe_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wardrobe_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wardrobe_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wardrobe_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wardrobe_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wardrobe_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wardrobe_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wardrobe_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wardrobe_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wardrobe_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wardrobe_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wardrobe_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wardrobe_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wardrobe_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wardrobe_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wardrobe_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wardrobe_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wardrobe_db] SET  MULTI_USER 
GO
ALTER DATABASE [wardrobe_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wardrobe_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wardrobe_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wardrobe_db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wardrobe_db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wardrobe_db]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 9:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Season] [varchar](50) NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 9:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Season] [varchar](50) NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 10/21/2016 9:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
	[AccessoriesID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/21/2016 9:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Season] [varchar](50) NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 9:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Season] [varchar](50) NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Rolex', N'~/Content/goldrolex.jpg', N'Watch', N'Gold', N'N/A', N'Formal')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'G-Shock', N'~/Content/black-gshock.jpg', N'Watch', N'Black', N'N/A', N'Casual')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Levi''s', N'~\Content\blacklevis511.jpg', N'Jeans', N'Black', N'All', N'Casual')
INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Skinny Camo', N'~/Content/skinnycamos.jpg', N'Cargo', N'Woodland', N'Hunting', N'Hunting/Casual/Black Ops')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (3, 1, 1, 1, 1)
INSERT [dbo].[Outfit] ([OutfitID], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (4, 2, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Nike', N'~/Content/greynikedunk.jpeg', N'Dunk', N'Grey', N'All', N'Casual')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Boots', N'~/Content/timbswheat.jpg', N'Timberland', N'Wheat', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Flannel', N'~/Content/redflannel.jpg', N'Long-Sleeved', N'Red', N'Fall', N'Casual')
INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'T-Shirt', N'~/Content/white-tee.png', N'Short sleeved', N'White', NULL, N'Casual')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessories]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottoms]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoes]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
USE [master]
GO
ALTER DATABASE [wardrobe_db] SET  READ_WRITE 
GO
