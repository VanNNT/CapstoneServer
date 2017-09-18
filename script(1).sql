USE [master]
GO
/****** Object:  Database [University]    Script Date: 9/17/2017 9:02:31 AM ******/
CREATE DATABASE [University]
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
USE [University]
GO
/****** Object:  Table [dbo].[Block]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlockName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Block] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlockOfMajor]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockOfMajor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MajorId] [int] NULL,
	[BlockId] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_BlockOfMajor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Gpa] [float] NULL,
	[Avatar] [varchar](max) NULL,
	[Email] [varchar](255) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](max) NULL,
	[LocationCode] [nvarchar](max) NULL,
	[UniversityId] [int] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MajorName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major_MBTI]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major_MBTI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MBTITypeID] [int] NULL,
	[MajorId] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Major_MBTI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major_University]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major_University](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MajorId] [int] NULL,
	[UniversityId] [int] NULL,
	[BlockId] [int] NULL,
 CONSTRAINT [PK_Major_University] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIGroup]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MBTIGroupName] [nvarchar](10) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MBTIGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIQuestion]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIQuestion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NULL,
	[QuestionContent] [nvarchar](255) NULL,
	[Option1Name] [nchar](10) NULL,
	[Option2Name] [nchar](10) NULL,
	[MBTIGroupId] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MBTIQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIResult]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MBTITypeId] [int] NULL,
 CONSTRAINT [PK_MBTIResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIType]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MBTITypeName] [nvarchar](10) NULL,
	[Description] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_MBTIType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provider]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [nvarchar](100) NOT NULL,
	[ProviderName] [nvarchar](25) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC,
	[ProviderName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Review]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UniversityId] [int] NOT NULL,
	[Desscription] [nvarchar](255) NULL,
	[StarTeaching] [int] NULL,
	[StarFacilities] [int] NULL,
	[StarCare] [int] NULL,
	[StarSocieties] [int] NULL,
	[StarCareer] [int] NULL,
	[Status] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReviewLike]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsLike] [bit] NULL,
	[CandidateId] [int] NULL,
	[ReviewId] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_ReviewLike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScoreHistory]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MajorOfUniversityId] [int] NULL,
	[Score] [float] NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_ScoreHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[University]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](50) NULL,
	[Logo] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Priority] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/17/2017 9:02:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [varchar](50) NULL,
	[Avatar] [varchar](max) NULL,
	[Email] [varchar](255) NULL,
	[RoleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UniversityId] [int],
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BlockOfMajor]  WITH CHECK ADD  CONSTRAINT [FK_BlockOfMajor_Block] FOREIGN KEY([BlockId])
REFERENCES [dbo].[Block] ([Id])
GO
ALTER TABLE [dbo].[BlockOfMajor] CHECK CONSTRAINT [FK_BlockOfMajor_Block]
GO
ALTER TABLE [dbo].[BlockOfMajor]  WITH CHECK ADD  CONSTRAINT [FK_BlockOfMajor_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([Id])
GO
ALTER TABLE [dbo].[BlockOfMajor] CHECK CONSTRAINT [FK_BlockOfMajor_Major]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_University]
GO
ALTER TABLE [dbo].[Major_MBTI]  WITH CHECK ADD  CONSTRAINT [FK_Major_MBTI_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([Id])
GO
ALTER TABLE [dbo].[Major_MBTI] CHECK CONSTRAINT [FK_Major_MBTI_Major]
GO
ALTER TABLE [dbo].[Major_MBTI]  WITH CHECK ADD  CONSTRAINT [FK_Major_MBTI_MBTIType] FOREIGN KEY([MBTITypeID])
REFERENCES [dbo].[MBTIType] ([Id])
GO
ALTER TABLE [dbo].[Major_MBTI] CHECK CONSTRAINT [FK_Major_MBTI_MBTIType]
GO
ALTER TABLE [dbo].[Major_University]  WITH CHECK ADD  CONSTRAINT [FK_Major_University_Block] FOREIGN KEY([BlockId])
REFERENCES [dbo].[Block] ([Id])
GO
ALTER TABLE [dbo].[Major_University] CHECK CONSTRAINT [FK_Major_University_Block]
GO
ALTER TABLE [dbo].[Major_University]  WITH CHECK ADD  CONSTRAINT [FK_Major_University_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([Id])
GO
ALTER TABLE [dbo].[Major_University] CHECK CONSTRAINT [FK_Major_University_Major]
GO
ALTER TABLE [dbo].[Major_University]  WITH CHECK ADD  CONSTRAINT [FK_Major_University_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Major_University] CHECK CONSTRAINT [FK_Major_University_University]
GO
ALTER TABLE [dbo].[MBTIQuestion]  WITH CHECK ADD  CONSTRAINT [FK_MBTIQuestion_MBTIGroup] FOREIGN KEY([MBTIGroupId])
REFERENCES [dbo].[MBTIGroup] ([Id])
GO
ALTER TABLE [dbo].[MBTIQuestion] CHECK CONSTRAINT [FK_MBTIQuestion_MBTIGroup]
GO
ALTER TABLE [dbo].[MBTIResult]  WITH CHECK ADD  CONSTRAINT [FK_MBTIResult_MBTIType] FOREIGN KEY([MBTITypeId])
REFERENCES [dbo].[MBTIType] ([Id])
GO
ALTER TABLE [dbo].[MBTIResult] CHECK CONSTRAINT [FK_MBTIResult_MBTIType]
GO
ALTER TABLE [dbo].[MBTIResult]  WITH CHECK ADD  CONSTRAINT [FK_MBTIResult_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[MBTIResult] CHECK CONSTRAINT [FK_MBTIResult_User]
GO
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FK_Provider_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FK_Provider_User]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_University]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_User]
GO
ALTER TABLE [dbo].[ReviewLike]  WITH CHECK ADD  CONSTRAINT [FK_ReviewLike_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([Id])
GO
ALTER TABLE [dbo].[ReviewLike] CHECK CONSTRAINT [FK_ReviewLike_Candidate]
GO
ALTER TABLE [dbo].[ReviewLike]  WITH CHECK ADD  CONSTRAINT [FK_ReviewLike_Review] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Review] ([Id])
GO
ALTER TABLE [dbo].[ReviewLike] CHECK CONSTRAINT [FK_ReviewLike_Review]
GO
ALTER TABLE [dbo].[ScoreHistory]  WITH CHECK ADD  CONSTRAINT [FK_ScoreHistory_Major_University] FOREIGN KEY([MajorOfUniversityId])
REFERENCES [dbo].[Major_University] ([Id])
GO
ALTER TABLE [dbo].[ScoreHistory] CHECK CONSTRAINT [FK_ScoreHistory_Major_University]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_University]
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
