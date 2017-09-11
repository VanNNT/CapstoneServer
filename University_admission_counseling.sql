USE [master]
GO
/****** Object:  Database [University_admission_counseling]    Script Date: 11/09/2017 11:39:31 SA ******/
CREATE DATABASE [University_admission_counseling]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University_admission_counseling', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\University_admission_counseling.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_admission_counseling_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\University_admission_counseling_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University_admission_counseling] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University_admission_counseling].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University_admission_counseling] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University_admission_counseling] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University_admission_counseling] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University_admission_counseling] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University_admission_counseling] SET ARITHABORT OFF 
GO
ALTER DATABASE [University_admission_counseling] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University_admission_counseling] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University_admission_counseling] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University_admission_counseling] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University_admission_counseling] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University_admission_counseling] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University_admission_counseling] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University_admission_counseling] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University_admission_counseling] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University_admission_counseling] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University_admission_counseling] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University_admission_counseling] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University_admission_counseling] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University_admission_counseling] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University_admission_counseling] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University_admission_counseling] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University_admission_counseling] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University_admission_counseling] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University_admission_counseling] SET  MULTI_USER 
GO
ALTER DATABASE [University_admission_counseling] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University_admission_counseling] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University_admission_counseling] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University_admission_counseling] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University_admission_counseling] SET DELAYED_DURABILITY = DISABLED 
GO
USE [University_admission_counseling]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [int] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Article]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] NOT NULL,
	[UniversityId] [int] NOT NULL,
	[TagId] [int] NULL,
	[StaffId] [int] NULL,
	[ThumbnailUrl] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Block]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[ID] [int] NOT NULL,
	[BlockName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Block] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlockOfMajor]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockOfMajor](
	[ID] [int] NOT NULL,
	[MajorId] [int] NULL,
	[BlockId] [int] NULL,
	[BaseScoreLastYear] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_BlockOfMajor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] NOT NULL,
	[ArticleId] [int] NULL,
	[UserId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] NOT NULL,
	[LocationName] [nvarchar](255) NULL,
	[LocationCode] [nvarchar](255) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[ID] [int] NOT NULL,
	[UniversityId] [int] NULL,
	[MajorName] [nvarchar](max) NULL,
	[MajorCode] [nvarchar](50) NULL,
	[GradeToPass] [float] NULL,
	[Status] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[StudentFee] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MajorOfMBTI]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MajorOfMBTI](
	[Id] [int] NOT NULL,
	[MajorId] [int] NULL,
	[MBTITypeId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_MajorOfMBTI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIQuestion]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIQuestion](
	[ID] [int] NOT NULL,
	[QuestionContent] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MBTIQuestion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIResult]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIResult](
	[Id] [int] NOT NULL,
	[MBTIQuestionId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[MBTITypeId] [int] NULL,
	[CompletedDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_MBTIResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MBTIType]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBTIType](
	[Id] [int] NOT NULL,
	[MBTITypeName] [nchar](10) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MBTIType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [int] NOT NULL,
	[QuestionContent] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[Id] [int] NOT NULL,
	[Tittle] [nvarchar](255) NULL,
	[QuizType] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizContent]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizContent](
	[Id] [int] NOT NULL,
	[QuizId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerId] [int] NOT NULL,
 CONSTRAINT [PK_QuizContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizResult]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizResult](
	[Id] [int] NOT NULL,
	[QuizId] [int] NULL,
	[CompletedDate] [datetime] NULL,
	[Score] [nvarchar](50) NULL,
	[StudentId] [int] NULL,
 CONSTRAINT [PK_UserQuiz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingOfReview]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingOfReview](
	[Id] [int] NOT NULL,
	[NameOfRating] [nvarchar](max) NOT NULL,
	[Point] [float] NULL,
	[ReviewDetailId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_RatingOfReview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Review]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Id] [int] NOT NULL,
	[UserId] [int] NULL,
	[ReviewId] [int] NULL,
	[UniversityId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReviewDetail]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewDetail](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[Agreement] [nvarchar](max) NULL,
	[Disagreement] [nvarchar](max) NULL,
	[Agree] [int] NULL,
	[Disagree] [int] NULL,
	[Status] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ReviewDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] NOT NULL,
	[UniversityId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] NOT NULL,
	[FavoritedUniversityId] [int] NULL,
	[MBTITypeId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] NOT NULL,
	[TagName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Tag_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[University]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[ID] [int] NOT NULL,
	[UniversityName] [nvarchar](255) NOT NULL,
	[LocationId] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[Website] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[Rating] [float] NULL,
	[CodeOfBlock] [nvarchar](255) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_UserRole_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 11/09/2017 11:39:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[Id] [int] NOT NULL,
	[UniversityId] [int] NULL,
	[EarnType] [nvarchar](50) NULL,
	[EarnValue] [float] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Staff]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Tag]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_University]
GO
ALTER TABLE [dbo].[BlockOfMajor]  WITH CHECK ADD  CONSTRAINT [FK_BlockOfMajor_Block] FOREIGN KEY([BlockId])
REFERENCES [dbo].[Block] ([ID])
GO
ALTER TABLE [dbo].[BlockOfMajor] CHECK CONSTRAINT [FK_BlockOfMajor_Block]
GO
ALTER TABLE [dbo].[BlockOfMajor]  WITH CHECK ADD  CONSTRAINT [FK_BlockOfMajor_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([ID])
GO
ALTER TABLE [dbo].[BlockOfMajor] CHECK CONSTRAINT [FK_BlockOfMajor_Major]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Article] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Article] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Article]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Major]  WITH CHECK ADD  CONSTRAINT [FK_Major_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Major] CHECK CONSTRAINT [FK_Major_University]
GO
ALTER TABLE [dbo].[MajorOfMBTI]  WITH CHECK ADD  CONSTRAINT [FK_MajorOfMBTI_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([ID])
GO
ALTER TABLE [dbo].[MajorOfMBTI] CHECK CONSTRAINT [FK_MajorOfMBTI_Major]
GO
ALTER TABLE [dbo].[MajorOfMBTI]  WITH CHECK ADD  CONSTRAINT [FK_MajorOfMBTI_MBTIType] FOREIGN KEY([MBTITypeId])
REFERENCES [dbo].[MBTIType] ([Id])
GO
ALTER TABLE [dbo].[MajorOfMBTI] CHECK CONSTRAINT [FK_MajorOfMBTI_MBTIType]
GO
ALTER TABLE [dbo].[MBTIResult]  WITH CHECK ADD  CONSTRAINT [FK_MBTIResult_MBTIQuestion] FOREIGN KEY([MBTIQuestionId])
REFERENCES [dbo].[MBTIQuestion] ([ID])
GO
ALTER TABLE [dbo].[MBTIResult] CHECK CONSTRAINT [FK_MBTIResult_MBTIQuestion]
GO
ALTER TABLE [dbo].[MBTIResult]  WITH CHECK ADD  CONSTRAINT [FK_MBTIResult_MBTIType] FOREIGN KEY([MBTITypeId])
REFERENCES [dbo].[MBTIType] ([Id])
GO
ALTER TABLE [dbo].[MBTIResult] CHECK CONSTRAINT [FK_MBTIResult_MBTIType]
GO
ALTER TABLE [dbo].[MBTIResult]  WITH CHECK ADD  CONSTRAINT [FK_MBTIResult_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[MBTIResult] CHECK CONSTRAINT [FK_MBTIResult_User]
GO
ALTER TABLE [dbo].[QuizContent]  WITH CHECK ADD  CONSTRAINT [FK_QuizContent_Answer] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answer] ([Id])
GO
ALTER TABLE [dbo].[QuizContent] CHECK CONSTRAINT [FK_QuizContent_Answer]
GO
ALTER TABLE [dbo].[QuizContent]  WITH CHECK ADD  CONSTRAINT [FK_QuizContent_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[QuizContent] CHECK CONSTRAINT [FK_QuizContent_Question]
GO
ALTER TABLE [dbo].[QuizContent]  WITH CHECK ADD  CONSTRAINT [FK_QuizContent_Quiz] FOREIGN KEY([QuizId])
REFERENCES [dbo].[Quiz] ([Id])
GO
ALTER TABLE [dbo].[QuizContent] CHECK CONSTRAINT [FK_QuizContent_Quiz]
GO
ALTER TABLE [dbo].[QuizResult]  WITH CHECK ADD  CONSTRAINT [FK_QuizResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[QuizResult] CHECK CONSTRAINT [FK_QuizResult_Student]
GO
ALTER TABLE [dbo].[QuizResult]  WITH CHECK ADD  CONSTRAINT [FK_QuizResult_Student1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[QuizResult] CHECK CONSTRAINT [FK_QuizResult_Student1]
GO
ALTER TABLE [dbo].[QuizResult]  WITH CHECK ADD  CONSTRAINT [FK_UserQuiz_Quiz] FOREIGN KEY([QuizId])
REFERENCES [dbo].[Quiz] ([Id])
GO
ALTER TABLE [dbo].[QuizResult] CHECK CONSTRAINT [FK_UserQuiz_Quiz]
GO
ALTER TABLE [dbo].[RatingOfReview]  WITH CHECK ADD  CONSTRAINT [FK_RatingOfReview_ReviewDetail] FOREIGN KEY([ReviewDetailId])
REFERENCES [dbo].[ReviewDetail] ([Id])
GO
ALTER TABLE [dbo].[RatingOfReview] CHECK CONSTRAINT [FK_RatingOfReview_ReviewDetail]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_ReviewDetail] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ReviewDetail] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_ReviewDetail]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_University]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_User]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_University]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_MBTIType] FOREIGN KEY([MBTITypeId])
REFERENCES [dbo].[MBTIType] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_MBTIType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_University] FOREIGN KEY([FavoritedUniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_University]
GO
ALTER TABLE [dbo].[University]  WITH CHECK ADD  CONSTRAINT [FK_University_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([ID])
GO
ALTER TABLE [dbo].[University] CHECK CONSTRAINT [FK_University_Location]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User1] FOREIGN KEY([Role])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User1]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([ID])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_University]
GO
USE [master]
GO
ALTER DATABASE [University_admission_counseling] SET  READ_WRITE 
GO
