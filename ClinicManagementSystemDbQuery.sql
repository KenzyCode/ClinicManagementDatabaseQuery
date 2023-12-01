USE [ClinicManagementDb]
GO
/****** Object: Table [dbo].[tbl_Doctor] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Doctor](
[Code] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[PhoneNo] [nvarchar](50) NULL,
[Experience] [nvarchar](200) NOT NULL,
[Specialisetion] [nvarchar](200) NOT NULL,
[Password] [nvarchar](50) NULL,
[Gender] [nvarchar](50) NULL,
[Address] [nvarchar](max) NULL,
[DateOfBirth] [datetime] NULL,
[Email] [nvarchar](50) NULL,
[IsActive] [bit] NULL DEFAULT ((1)),
CONSTRAINT [PK_tbl_Doctor] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] 
GO
/****** Object: Table [dbo].[tbl_User] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
[Code] [nvarchar](10) NOT NULL,
[Name] [varchar](250) NOT NULL,
[Email] [varchar](100) NULL,
[PhoneNo] [varchar](20) NULL,
[Password] [varchar](50) NULL, 
[Role] [varchar](50) NULL,
[Isactive] [bit] NULL,
CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED
( 
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[tbl_Laboratorian] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Laboratorian](
[Code] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[Email] [nvarchar](50) NULL,
[Password] [nvarchar](50) NULL,
[PhoneNo] [nvarchar](50) NULL,
[Address] [nvarchar](max) NULL,
[Gender] [nvarchar](50) NULL,
[DateOfBirth] [datetime] NULL,
CONSTRAINT [PK_tbl_Laboratorian] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object: Table [dbo].[tbl_Patience] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Patience](
[Code] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[Email] [nvarchar](50) NULL,
[PhoneNo] [nvarchar](50) NULL,
[Gender] [nvarchar](50) NULL,
[Address] [nvarchar](max) NULL,
[DateOfBirth] [datetime] NULL,
CONSTRAINT [PK_tbl_Patience] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object: Table [dbo].[tbl_LabTestDetail] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LabTestDetail](
[Code] [nvarchar](10) NOT NULL,
[TestName] [nvarchar](max) NULL,
[TestCost] [decimal](18, 3) NULL,
CONSTRAINT [PK_tbl_LabTestDetail] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] 
GO
/****** Object: Table [dbo].[tbl_PerscriptionDetail] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PerscriptionDetail](
[Code] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[Medicine] [nvarchar](200) NOT NULL,
[LabTest] [nvarchar](200) NOT NULL,
[Cost] [decimal](18, 3) NULL,
CONSTRAINT [PK_tbl_PerscriptionDetail] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object: Table [dbo].[tbl_Receptionist] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Receptionist](
[Code] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[Email] [nvarchar](50) NULL,
[Address] [nvarchar](max) NULL,
[PhoneNo] [nvarchar](50) NULL,
[Password] [nvarchar](50) NULL,
[Gender] [nvarchar](50) NULL,
[DateOfBirth] [datetime] NULL,
CONSTRAINT [PK_tbl_Receptionist] PRIMARY KEY CLUSTERED
(
[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object: Table [dbo].[tbl_Refreshtoken] ******/
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Refreshtoken](
[UserId] [varchar](50) NOT NULL,
[TokenId] [varchar](50) NULL,
[Refreshtoken] [varchar](max) NULL,
CONSTRAINT [PK_tbl_Refreshtoken] PRIMARY KEY CLUSTERED 
(
[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_Doctor] ([Code], [Name], [PhoneNo], [Experience], [Specialisetion],
[Password], [Gender], [Address], [DateOfBirth], [Email], [IsActive]) VALUES(N'NIV20023',N'Chris 
Mathew', N'08123458694', N'Four Years', N'Cardiologist', N'Mathew2023', N'Male',N'1st 
street,2nd block,chennai', NULL, N'Mathew@gmail.com', 0)
GO
INSERT [dbo].[tbl_User] ([Code], [Name],[Email], [PhoneNo], [password], [Role],
[Isactive]) VALUES (N'adminuser', N'Admin',N'tset@gmail.com',
N'09032455463',N'Admin12345', N'admin', 1)
GO
INSERT [dbo].[tbl_User] ([code], [Name],[Email], [PhoneNo], [password], [Role],
[IsActive]) VALUES (N'Doctoruser', N'Doctor',N'd@in.com', N'09032455463',N'Doctor12345', 
N'Doctor', 0)
GO
INSERT [dbo].[tbl_User] ([Code], [Name],[Email], [PhoneNo], [password], [Role],
[Isactive]) VALUES (N'Repuser', N'Receptionist',N'receptionist@gmail.com',
N'09034525463',N'Receptionist12345', N'Receptionist', 1)
GO
INSERT [dbo].[tbl_User] ([code], [Name],[Email], [PhoneNo], [password], [Role],
[IsActive]) VALUES (N'Labuser', N'Laboratorian',N'laboratorian@gmail.com', 
N'09098675463',N'Laboratorian12345', N'Laboratorian', 0)
GO
INSERT [dbo].[tbl_Laboratorian] ([Code], [Name], [Email],[Password],
[PhoneNo],[Address],[Gender], [DateOfBirth]) VALUES(N'Lab2001',N'Joseph Okoye',
N'joseph@gmail.com',N'Joseph12345',N'08239458694', N'No3 Joseph Road', N'Male', NULL)
GO 
INSERT [dbo].[tbl_Receptionist] ([Code], [Name], [Email],[Address], [PhoneNo],
[Password], [Gender], [DateOfBirth]) VALUES(N'Rep2001',
N'Michael',N'michael@gmail.com',N'47A Obollo Road Nsukka', N'08123458694',
N'Michael12345', N'Male', NULL)
GO 
INSERT [dbo].[tbl_Refreshtoken] ([UserId], [TokenId], [RefreshToken]) VALUES 
(N'adminuser', N'643240810', N'jgZnSz6MUkzaLZSuMdADJdDMlLbnuwAQFQYLQLku4/A=')
GO
INSERT [dbo].[tbl_Refreshtoken] ([UserId], [TokenId], [RefreshToken]) VALUES 
(N'demouser', N'525301419', N'dYojoMv8k0iZQg1vXglVyo69BnH+/v0GcHoUhzbw104=')
GO
INSERT [dbo].[tbl_Patience] ([Code], [Name], [Email], [PhoneNo],[Gender],[Address],
[DateOfBirth])VALUES(N'Pat20023',N'Chris Michael',N'chris@gmail.com', N'08123765694',
N'Male',N'2nd block,chennai street', NULL)
GO
INSERT [dbo].[tbl_LabTestDetail] ([Code], [TestName],[TestCost])
VALUES(N'Test20023',N'Malaria',NULL )
GO
INSERT [dbo].[tbl_PerscriptionDetail] ([Code], [Name], [Medicine],[LabTest], [Cost])
VALUES
(N'Per20023',N'Mathew Chris',N'Paracetamol',N'Malaria',NULL )
 
