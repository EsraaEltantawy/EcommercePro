USE [E_Learning]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[LevelID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StuID] [nvarchar](128) NOT NULL,
	[StuName] [nvarchar](100) NULL,
	[StuAge] [int] NULL,
	[StuMobile] [nvarchar](50) NULL,
	[StuAddress] [nvarchar](100) NULL,
	[StuPhoto] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[levelID] [int] NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[StuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentSubject]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubject](
	[StuSubID] [int] IDENTITY(1,1) NOT NULL,
	[SubLevelID] [int] NOT NULL,
	[StuId] [nvarchar](128) NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_StudentSubject_1] PRIMARY KEY CLUSTERED 
(
	[StuSubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StuSubTea]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StuSubTea](
	[StuSubTeaID] [int] IDENTITY(1,1) NOT NULL,
	[StuSubID] [int] NULL,
	[TeachId] [nvarchar](128) NULL,
	[ReDate] [datetime] NULL,
 CONSTRAINT [PK_StuSubTea] PRIMARY KEY CLUSTERED 
(
	[StuSubTeaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubId] [int] IDENTITY(1,1) NOT NULL,
	[SubName] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjectClass]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectClass](
	[SubLevelID] [int] IDENTITY(1,1) NOT NULL,
	[LevelID] [int] NOT NULL,
	[SubId] [int] NOT NULL,
	[Date] [datetime] NULL,
	[SubLevelName] [nvarchar](200) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubjectClass] PRIMARY KEY CLUSTERED 
(
	[SubLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeachId] [nvarchar](128) NOT NULL,
	[TeachName] [nvarchar](100) NULL,
	[TeachMobile] [nvarchar](50) NULL,
	[TeachAddress] [nvarchar](100) NULL,
	[TeachPhoto] [nvarchar](max) NULL,
	[SubID] [int] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherClass]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherClass](
	[TeaLevelID] [int] IDENTITY(1,1) NOT NULL,
	[TeachId] [nvarchar](128) NOT NULL,
	[ClassID] [int] NOT NULL,
 CONSTRAINT [PK_TeacherClass] PRIMARY KEY CLUSTERED 
(
	[TeaLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thevideo]    Script Date: 03/02/2021 01:17:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thevideo](
	[VideoId] [int] IDENTITY(1,1) NOT NULL,
	[VideoPath] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[TeaClassID] [int] NOT NULL,
	[NumOfView] [int] NULL,
	[IsIntroVideo] [bit] NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Thevideo] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202006231958509_InitialCreate', N'E_Learning.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2D52276983E6867576D1B780966847588952252A9BA0E897F5A19FD45FE850A26EBCE8622BB6532CB0B0C8E199E170480E87C3FCFBF73FE39F9E7CCF78C451EC0664621E8CF64D03133B705CB29C98095D7CFFCEFCE9FDD75F8DCF1CFFC9F894D31D313A6849E289F94069786C59B1FD807D148F7CD78E823858D0911DF8167202EB707FFF47EBE0C0C200610296618C3F2484BA3E4E3FE0731A101B873441DE55E0602FE6E550334B518D6BE4E33844369E9867F797184504E41B65C4A671E2B9080499616F611A889080220A621E7F8CF18C460159CE422840DEDD7388816E81BC1873F18F4BF2AE3DD93F643DB1CA8639949DC434F07B021E1C71D55862F395146C16AA03E59D8192E933EB75AAC08979E1E0B4E843E081024486C7532F62C413F3AA60711287D7988EF286A30CF23C02B82F41F4795445DC333AB7DB2B4CE970B4CFFEED19D3C4A349842704273442DE9E719BCC3DD7FE0D3FDF059F31991C1DCC1747EFDEBC45CED1DB1FF0D19B6A4FA1AF40572B80A2DB28087104B2E145D17FD3B0EAED2CB161D1ACD226D30AD812589D695CA1A74B4C96F401E6CBE13BD338779FB0939770E3FA485C9844D08846097C5E279E87E61E2EEAAD469EECFF06AE876FDE0EC2F51A3DBACB74E805FE30712298571FB097D6C60F6E984DAFDA78DF73B2F328F0D977DDBEB2DAFB59904436EB4CA025B943D112D3BA7463AB34DE4E26CDA08637EB1C75F74D9B492A9BB792947568959990B3D8F46CC8E57D59BE9D2DEE240C61F052D3621A69323869AF1A098DF78C92A4349C83AE8643A043FFE775F0CC47AE37C042D8810BB8200B37F271D1CB9F03303B447ACB7C8BE218D601E757143F34880E3F07107D86ED2402F39C51E4872FCEEDF62120F83AF1E7CCEA37C76BB0A1B9FB129C239B06D11961ADD6C6BB0CECCF4142CF88738A28FE48ED1C907DDEB97E778041C439B16D1CC7E760CCD89906E061E78017841E1DF68663EBD3B61D91A9875C5FED89082BE97D4E5A7A236A0AC923D190A9BC9226512F83A54BBA899A93EA45CD285A45E5647D456560DD24E5947A415382563933AAC1FCBC74848677F452D8DDF7F4D6DBBC756B41458D335821F12F98E0089631E716518A23528E409775631BCE423A7C8CE98BEF4D29A74FC84B8666B5D26C481781E167430ABBFBB32115138A1F5D8779251D8E3F3931C077A2579FACDAE79C20D9A6A743AD9B9B66BE993540375D4EE238B0DD741628025F3C6C51971F7C38A33D8691F5468C8340C7C0D05DB6E54109F4CD148DEA869C620F536C9CD85960708A621B39B21AA1434E0FC1F21D552158190FA90BF79DC4132C1D47AC116287A01866AA4BA83C2D5C62BB21F25AB524B4ECB885B1BE173CC49A531C62C218B66AA20B7375F8830950F01106A54D4363AB6271CD86A8F15A7563DEE6C296E32E45253662932DBEB3C62EB9FFF62286D9ACB10D1867B34ABA08A00DE56DC340F959A5AB018807975D3350E1C4A43150EE526DC440EB1ADB8281D655F2EA0C343BA2761D7FE1BCBA6BE6593F286F7E5B6F54D7166CB3A68F1D33CDCCF78436145AE04836CFD339ABC44F5471380339F9F92CE6AEAE68220C7C86693D6453FABB4A3FD46A06118DA809B034B416507E0928014913AA8770792CAF513AEE45F480CDE36E8DB07CED17602B362063572F432B84FA2B53D1383B9D3E8A9E15D6201979A7C34205476110E2E255EF7807A5E8E2B2B262BAF8C27DBCE14AC7F8603428A8C573D52829EFCCE05ACA4DB35D4B2A87AC8F4BB6969604F749A3A5BC33836B89DB68BB92144E410FB7602D15D5B7F081265B1EE928769BA26E6C652952BC606C6972A9C657280C5DB2ACE456F112639625564DBF9FF54F39F2330CCB8E15994785B405271A446889855A600D929EBB514C4F114573C4E23C53C797C8947BAB66F9CF5956B74F7910F37D20A766BFF9A5B074755FDB6A655F84439C43077DE6D0A45174C5F0AB9B1B2CD50D79285204EEA78197F844EF5FE95B67D777D5F659898C30B604F925FF495296E4E5D635DF695CE43931CC1815DECBEAE3A487D0693BF73DABFAD6F9A37A943C3C5545D185ACB6366E3A37A6CF58890E62FFA16A45789959C5B352AA00BCA8274625B14102ABD47547ADE79E5431EB35DD118504932AA450D543CA6A1A494DC86AC54A781A8DAA29BA73901347AAE8726D7764450A49155A51BD02B64266B1AE3BAA22CBA40AACA8EE8E5DA69C886BE80EEF5BDA63CBAA1B5776B05D6FE7D260BCCC8238CCC657B9BFAF02558A7B62F11B7A098C97EFA431694F77AB1A5316CE58CF983418FA75A776F15D5F761A6FEBF598B5DBECDAD2DE749BAFC7EB67B22F6A18D2D94E2429B817673CE12C37E6E7AAF6C733D2412B23318D5C8DB0AD3FC714FB2346309AFDE14D3D17B3453C27B842C45DE09866191CE6E1FEC1A1F00067771EC35871EC788A73A9EE454C7DCC36908C451E51643FA0484E8D58E3C148092A459D2F88839F26E69F69ABE33480C17EA5C57BC645FC91B87F2450711725D8F84B4EF51C2681BEC3938D42D0BF5EC55B88EE2ABFF8FD3E6BBA67DC44309D8E8D7D41D1AB0C7FFD85442F69B2A66B48B3F2BB89D73BDB6ACF1294A8C26C59FD15C2DCA583BC40C8A5FCC6474FDFF6154DF9CA602D44C54B82A1F00651A1EEA5C02A58DA57020E7CD2F49540BFCEAA5F0DAC229AF6C5804BFA8389EF05BA2F4379CB2DEE438AF3D22696A454CFADF9D66B255F6E7B6F92D2B2D79AE872EA750FB841D3ABD773515E59DAF2605BA7222B7930EC6DDAFD8BA722EF4AF671E9B46F37E9789379C60DB749FFABF4E21D48885324F86C3F8978D3B6A60B00EF782666BF54E11D3336BECD6F3F2178D3C6A60B10EFB8B1F54AFBDD315BDBD6FEB9654BEBBC856E3D8957CE47D25CE4A8A2C86D49BA59C81D8EFFF3008C20F328B3B795EAACB0A68CD6168625899EA93E1D4D642C4D1C89AF44D1CCB65F5FF986DFD8594ED3CC5693C4D9C49BAFFF8DBC394D336F4D6AE436D28B95C989AA94EF9675AC2977EA35A513D77AD292BDDEE6B336DECABFA6ECE14194529B3D9ADBE5D7932C3C884A869C3A3D9283E58B62D83B2B7F8B11F6EFD85D9610EC2F33126CD776CD82E6822C827CF31624CA498408CD15A6C8812DF524A2EE02D914AA59003A7D1C9E06F5D835C81C3B17E426A16142A1CBD89F7BB5801773029AF8A719D07599C73721FB8A87E80288E9B2C0FD0DF939713DA790FB5C1113D24030EF82877BD9585216F65D3E1748D701E908C4D557384577D80F3D008B6FC80C3DE2556403F3BBC44B643F9711401D48FB40D4D53E3E75D132427ECC31CAF6F00936ECF84FEFFF03F972A3BF92540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Student')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Teacher')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'052901a0-867b-4b40-8e09-6f176d2ab4e6', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bea94839-8c3f-4eae-8f29-e16a6dbb6634', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08cdf7d1-6027-49cc-ab80-741f44b3118d', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0cb7cc91-2398-43c5-8f20-45159a53432b', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'11278ac8-1b40-4150-a22f-2fd4e02c227c', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'18ee5030-d28e-42f3-a52e-111fe4281d87', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2964d431-a885-4047-8f29-604ed1700a6c', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'469429bd-0bdc-4907-b770-934f240f126c', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4f6b4cdf-0a77-42c4-8039-6d8851b13435', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'730ae4b0-87f6-4961-83cd-ccfafd5ac90f', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'781d5e93-1735-415c-a521-09185ef953ea', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8125db17-8e2f-4efa-a377-e556e270bf2b', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8e2ba591-ffce-4e1c-979a-0e610f025414', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2fd1bf6-8d3b-40ca-86c2-34abfc0fbc54', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f76e2b61-26fe-40a9-8411-6e0054c180d6', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'001513da-d7a8-4663-b364-ba04227ac442', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0859a2d3-fa88-4d52-a4db-1593bd2daae0', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b0e57ee-eb9e-4095-a3e7-358699352e57', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43fb1448-c260-4fae-839e-54a1ac0b3492', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93d9b151-f620-44c2-820f-5b80ff6b3084', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'deafee08-f87e-4b44-a474-5cad118d778b', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ef2990b8-b3f7-4816-a550-2b8dfcbfc449', N'3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'001513da-d7a8-4663-b364-ba04227ac442', N'stuTest@b.c', 0, N'AOqgZfLppKU6iVzxGp7PYzxyyCbywZ/hXIxxpW4t0p2BSrXfBLgYa6btnPniDVT+Yg==', N'e253c2f9-a3d0-40fc-a4ac-b03f6d11964c', N'01063524177', 0, 0, NULL, 1, 0, N'stuTest@b.c')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'052901a0-867b-4b40-8e09-6f176d2ab4e6', N'Stud5@S.C', 0, N'APcPyUI9lyzq8Ot1syYCWBcsDOz0zyoGfcn2YT13DxJPpuu4t+MUGtAqCnapIXLncA==', N'20495e9c-a940-4072-a848-360ffbf5f8ad', N'01063524177', 0, 0, NULL, 1, 0, N'Stud5@S.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0859a2d3-fa88-4d52-a4db-1593bd2daae0', N'newStud@test.com', 0, N'AL3OfD1ie9Nh0zP2zp3lXNgDK4ZQzFmaSWI7+Dn8fVKdFvI04aIvJspcZsxYSnR/3g==', N'f246d819-ae8a-4cb2-80f9-3fffc97d410b', N'01063524177', 0, 0, NULL, 1, 0, N'newStud@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08cdf7d1-6027-49cc-ab80-741f44b3118d', N'tt@t.t', 0, N'ADhZbWviU/evLGBg4XaNlpB8oSEH9DV0v86b7LtHFI3Baqpijq6VgTwfUGxZYBihyw==', N'a4cc3952-d4a9-4a19-b050-37bf5d16aecf', N'01063524177', 0, 0, NULL, 1, 0, N'tt@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0b0e57ee-eb9e-4095-a3e7-358699352e57', N'stu99@b.c', 0, N'AOTbCr0YmEmn9a/4cyyyTQmMy33eYSgej1c43Wa6u4pmg2WxxGDBRQd+PVnePusdfQ==', N'4805bf43-1c6c-43ac-86d6-1824dad11743', N'01063524177', 0, 0, NULL, 1, 0, N'stu99@b.c')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0cb7cc91-2398-43c5-8f20-45159a53432b', N'T@t.C', 0, N'AJ+UfxP4P7qDXMDwPgvMM6G+JQS5QRgqLSvcyz3PQs2Xu3pZvZ4Xq+PZX9Iz7kE8ZQ==', N'8385e8e2-02e2-4b45-a08d-460c6674d53a', N'01063524177', 0, 0, NULL, 1, 0, N'T@t.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'11278ac8-1b40-4150-a22f-2fd4e02c227c', N'Teacher2@T.C', 0, N'AN2UxEAn9JAcf6n8zTc72nrrHSKhUBp2iB+BWPpRMvDp5WsA8t+HXgsSoxNA2kCpnw==', N'29508334-010b-4a52-b13b-e6aecaea7314', N'01063524177', 0, 0, NULL, 1, 0, N'Teacher2@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'18ee5030-d28e-42f3-a52e-111fe4281d87', N'Teacher99@T.C', 0, N'AHXR9sy+c7daSjoJFAUXJ3P0vxv89rHsCYfFZ8FcQnMe4F831u/Ecfm8HG/Eqv7YBg==', N'1a780412-aa11-4273-b213-314521f8f877', N'01063524177', 0, 0, NULL, 1, 0, N'Teacher99@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', N'tt1@t.t', 0, N'AFFRenbXFXFFSoPhOAseUJE9LDPy4YBvCSa+i8n0j5lAyPXQ34+eQFcb9aGmNpjuhQ==', N'ad7618b9-97ef-44db-b46e-289d4591755d', N'01063524177', 0, 0, NULL, 1, 0, N'tt1@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2964d431-a885-4047-8f29-604ed1700a6c', N'Teach5@T.C', 0, N'AIMtj2URq9TdmO1xYGqfNBg6k2BNMYaNetKJGdbgaDFPF+Qs7v/2CKIntOagdA8N5A==', N'02ea6cbb-c94f-4ac2-882f-4819a71aa3d1', N'01063524177', 0, 0, NULL, 1, 0, N'Teach5@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'43fb1448-c260-4fae-839e-54a1ac0b3492', N'esraab.eltantawy@gmail.com', 1, N'ALAv2MGpDwxiiicP534saSyaRaPH6Pxyl/2cGOtMthPi6dFQjvoOtewNugAz0uKc+A==', N'17b2d208-0ab3-4aac-81ee-5f80828a6970', N'01063524177', 0, 0, NULL, 1, 0, N'esraab.eltantawy@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'469429bd-0bdc-4907-b770-934f240f126c', N'TeC@T.C', 0, N'ABd1YxmG7lUL7h51CGu054fcqBuQteWQrUR3s+RYM5ueQF/+RW/eqGprHsFBdkx8wQ==', N'3c62b466-8ed8-4949-9460-aa26fa1ffbdc', N'01063524177', 0, 0, NULL, 1, 0, N'TeC@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4f6b4cdf-0a77-42c4-8039-6d8851b13435', N'Teac71@t.c', 0, N'ALdfhQ/SN1sAjdZpJeRuuzV9nEkZLc3whFAgCrGwv7mRGDUtDRUCb78g1tCB05jOag==', N'8498d6ca-7899-41e9-b300-9027e717e2d6', N'01063524177', 0, 0, NULL, 1, 0, N'Teac71@t.c')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'730ae4b0-87f6-4961-83cd-ccfafd5ac90f', N'tt12@t.t', 0, N'AJWdpHUH12g82cKcjLhFzAqzjsfEB/6s1h9HUZiAKtFkeHPWcvJpCOO5eFbvMNk3AA==', N'a27dd27a-f074-4f32-a888-6e379045609a', N'01063524177', 0, 0, NULL, 1, 0, N'tt12@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'781d5e93-1735-415c-a521-09185ef953ea', N'Teacher9@T.C', 0, N'AAbExWI/1Rhc/Gz+iQ6ILEaCaq+nalV+UKEUfebl1dFEvCeJyn76Vt84gmjDjwJAew==', N'49d53e20-4f69-4afc-91c7-70071e655118', N'01063524177', 0, 0, NULL, 1, 0, N'Teacher9@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8125db17-8e2f-4efa-a377-e556e270bf2b', N'Teacher@T.C', 0, N'ALqP7KuXNtuDDxtQ96GRGgaaxo+lc6nBtm4KubM2SghQcHxtihYe8WEb4AjADe0JGQ==', N'31fb682e-c914-4948-ba19-1d4073b6aadb', N'01063524177', 0, 0, NULL, 1, 0, N'Teacher@T.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8e2ba591-ffce-4e1c-979a-0e610f025414', N'tt99@t.t', 0, N'AKDygPpqEmt4U6kEvT+s4zZv7J3HhT+LbYyigQKrPOVqhVOo2vHJqDmQble8B/ugmQ==', N'e8359d68-0366-4c90-babf-8f0346d4ca9b', N'01063524177', 0, 0, NULL, 1, 0, N'tt99@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'93d9b151-f620-44c2-820f-5b80ff6b3084', N'Stu10@S.C', 0, N'AFFkhFiwz6ZSZCm4cMkmH9Xb7ntRBf+rdeQ0Y3ALMCCb/iigFy9HvjOPNy0qfixNHA==', N'921eb76a-ec0f-4136-aacc-f84e8e85ebd1', N'01063524177', 0, 0, NULL, 1, 0, N'Stu10@S.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bea94839-8c3f-4eae-8f29-e16a6dbb6634', N'a@b.c', 0, N'ALo9HgzjUGpFGyTvlV/KDMgEVj2MxTq+Ta6xoEpPqlCHZJZszZBUZcMvu0f0FdDAqQ==', N'606fa1cd-cf2f-49e7-8972-e1facc5c244d', N'01063524177', 0, 0, NULL, 1, 0, N'a@b.c')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c2fd1bf6-8d3b-40ca-86c2-34abfc0fbc54', N'tt102@t.t', 0, N'AP54ztYKcjK8AiHUHa/7XCo8kuLwzanwjuQ11g0XSSdEhZn5OeH6VMqtZN9JRiFI9w==', N'41074778-989b-4a1f-9295-07e57f926140', N'01063900175', 0, 0, NULL, 1, 0, N'tt102@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'deafee08-f87e-4b44-a474-5cad118d778b', N'Stud55@S.C', 0, N'ANMFB9tiQReO82vgHYFSEWbG0BmNqGHFU35FPqBq4T/eeeK0EBn6unAS9fsQVKT+QA==', N'598af06f-e4fe-4693-b538-445ff5976940', N'01063524177', 0, 0, NULL, 1, 0, N'Stud55@S.C')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ef2990b8-b3f7-4816-a550-2b8dfcbfc449', N'Teacher@t.t', 0, N'AFwIj6TSYCRic3wjlJSpx+77G11zByhvSrB5xy78L6Yl4p6tGYYav0QH9JbHdAhK6Q==', N'4077a784-6e85-421d-bb60-0446f1ac5ba2', N'01063524177', 0, 0, NULL, 1, 0, N'Teacher@t.t')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f76e2b61-26fe-40a9-8411-6e0054c180d6', N'Teac7@t.c', 0, N'AP5Ott64R6sSBe8xAINPuUrluQhcJWbcXWGwt1XtFI0Z6QgOV1KkTq3EOjBhXTum3Q==', N'484466b7-3e2e-492f-8a2b-a31750699811', N'01063524177', 0, 0, NULL, 1, 0, N'Teac7@t.c')
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([LevelID], [ClassName]) VALUES (5, N'1St Primary')
INSERT [dbo].[Class] ([LevelID], [ClassName]) VALUES (6, N'6th Primary')
INSERT [dbo].[Class] ([LevelID], [ClassName]) VALUES (7, N'2nd Perp')
INSERT [dbo].[Class] ([LevelID], [ClassName]) VALUES (8, N'3rd Secondary')
SET IDENTITY_INSERT [dbo].[Class] OFF
INSERT [dbo].[Student] ([StuID], [StuName], [StuAge], [StuMobile], [StuAddress], [StuPhoto], [active], [levelID]) VALUES (N'001513da-d7a8-4663-b364-ba04227ac442', N'Aml', 7, N'01012012122', N'US', N'001513da-d7a8-4663-b364-ba04227ac442.png', NULL, 5)
INSERT [dbo].[Student] ([StuID], [StuName], [StuAge], [StuMobile], [StuAddress], [StuPhoto], [active], [levelID]) VALUES (N'0859a2d3-fa88-4d52-a4db-1593bd2daae0', N'NewStudent', 12, N'01012012122', N'US', N'0859a2d3-fa88-4d52-a4db-1593bd2daae0.jpg', 1, 5)
INSERT [dbo].[Student] ([StuID], [StuName], [StuAge], [StuMobile], [StuAddress], [StuPhoto], [active], [levelID]) VALUES (N'0b0e57ee-eb9e-4095-a3e7-358699352e57', N'Thuria', 22, N'01012012122', N'Mansoura', N'0b0e57ee-eb9e-4095-a3e7-358699352e57.jpg', 1, 8)
INSERT [dbo].[Student] ([StuID], [StuName], [StuAge], [StuMobile], [StuAddress], [StuPhoto], [active], [levelID]) VALUES (N'93d9b151-f620-44c2-820f-5b80ff6b3084', N'Amir', 16, N'01012012122', N'Mansoura', NULL, 1, 5)
INSERT [dbo].[Student] ([StuID], [StuName], [StuAge], [StuMobile], [StuAddress], [StuPhoto], [active], [levelID]) VALUES (N'deafee08-f87e-4b44-a474-5cad118d778b', N'Student', 22, N'01012012122', N'Mansoura', N'deafee08-f87e-4b44-a474-5cad118d778b.jpg', 1, 5)
SET IDENTITY_INSERT [dbo].[StudentSubject] ON 

INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (11, 12, N'93d9b151-f620-44c2-820f-5b80ff6b3084', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (1010, 11, N'deafee08-f87e-4b44-a474-5cad118d778b', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (1015, 1, N'0859a2d3-fa88-4d52-a4db-1593bd2daae0', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (1016, 11, N'0859a2d3-fa88-4d52-a4db-1593bd2daae0', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (1017, 8, N'0b0e57ee-eb9e-4095-a3e7-358699352e57', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (2020, 11, N'001513da-d7a8-4663-b364-ba04227ac442', NULL)
INSERT [dbo].[StudentSubject] ([StuSubID], [SubLevelID], [StuId], [Date]) VALUES (2021, 1, N'001513da-d7a8-4663-b364-ba04227ac442', NULL)
SET IDENTITY_INSERT [dbo].[StudentSubject] OFF
SET IDENTITY_INSERT [dbo].[StuSubTea] ON 

INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (1, 11, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (5, 1010, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (8, 1015, N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (10, 1016, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (12, 1017, N'469429bd-0bdc-4907-b770-934f240f126c', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (1017, 2020, N'0cb7cc91-2398-43c5-8f20-45159a53432b', NULL)
INSERT [dbo].[StuSubTea] ([StuSubTeaID], [StuSubID], [TeachId], [ReDate]) VALUES (1018, 2021, N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', NULL)
SET IDENTITY_INSERT [dbo].[StuSubTea] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (7, N'Arabic', CAST(N'2000-02-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (8, N'biology', CAST(N'2001-02-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (9, N'Chemistry', CAST(N'2020-02-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (10, N'Science', CAST(N'2020-02-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (11, N'History', CAST(N'2020-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (12, N'English', NULL)
INSERT [dbo].[Subject] ([SubId], [SubName], [Date]) VALUES (1012, N'French', NULL)
SET IDENTITY_INSERT [dbo].[Subject] OFF
SET IDENTITY_INSERT [dbo].[SubjectClass] ON 

INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (1, 5, 7, NULL, NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (2, 6, 10, CAST(N'2020-06-01 00:00:00.000' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (3, 7, 9, CAST(N'2020-06-17 00:00:00.000' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (4, 8, 10, CAST(N'2020-06-16 00:00:00.000' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (6, 7, 7, CAST(N'2020-06-27 13:23:55.203' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (7, 8, 11, CAST(N'2020-06-27 13:59:52.310' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (8, 8, 8, NULL, NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (11, 5, 12, NULL, NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (12, 8, 12, CAST(N'2020-07-02 20:26:43.060' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (13, 8, 8, NULL, NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
INSERT [dbo].[SubjectClass] ([SubLevelID], [LevelID], [SubId], [Date], [SubLevelName], [Notes]) VALUES (1012, 7, 1012, CAST(N'2020-07-20 23:53:39.000' AS DateTime), NULL, N'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi')
SET IDENTITY_INSERT [dbo].[SubjectClass] OFF
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'0cb7cc91-2398-43c5-8f20-45159a53432b', N'Mi', N'2020', N'mansoura', N'0cb7cc91-2398-43c5-8f20-45159a53432b.jpg', 12, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'11278ac8-1b40-4150-a22f-2fd4e02c227c', N'Amr Atef', N'010852074165', N'mansoura', N'11278ac8-1b40-4150-a22f-2fd4e02c227c.jpg', 10, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', N'Faruk', N'010852074165', N'mansoura', N'1f75801a-6a89-439e-8cf6-0ed378f27f9f.png', 7, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'2964d431-a885-4047-8f29-604ed1700a6c', N'Esraa', N'010852074165', N'mansoura', N'2964d431-a885-4047-8f29-604ed1700a6c.jpg', 8, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'469429bd-0bdc-4907-b770-934f240f126c', N'Amira Ahmed', N'010852074165', N'mansoura', N'469429bd-0bdc-4907-b770-934f240f126c.jpg', 8, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'4f6b4cdf-0a77-42c4-8039-6d8851b13435', N'Murad Ebrahim', N'010852074165', N'mansoura', N'4f6b4cdf-0a77-42c4-8039-6d8851b13435.jpg', 11, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'730ae4b0-87f6-4961-83cd-ccfafd5ac90f', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'8e2ba591-ffce-4e1c-979a-0e610f025414', N'Amira2', N'010852074165', N'mansoura', N'8e2ba591-ffce-4e1c-979a-0e610f025414.jpg', 7, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'c2fd1bf6-8d3b-40ca-86c2-34abfc0fbc54', N'Omer Mohammed', N'010852074165', N'mansoura', N'c2fd1bf6-8d3b-40ca-86c2-34abfc0fbc54.jpg', 1012, 1)
INSERT [dbo].[Teacher] ([TeachId], [TeachName], [TeachMobile], [TeachAddress], [TeachPhoto], [SubID], [active]) VALUES (N'f76e2b61-26fe-40a9-8411-6e0054c180d6', NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[TeacherClass] ON 

INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (4, N'469429bd-0bdc-4907-b770-934f240f126c', 6)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1016, N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', 7)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1019, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1020, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1021, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1022, N'8e2ba591-ffce-4e1c-979a-0e610f025414', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1024, N'1f75801a-6a89-439e-8cf6-0ed378f27f9f', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1025, N'2964d431-a885-4047-8f29-604ed1700a6c', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1032, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1039, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1043, N'469429bd-0bdc-4907-b770-934f240f126c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1044, N'469429bd-0bdc-4907-b770-934f240f126c', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1045, N'469429bd-0bdc-4907-b770-934f240f126c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1046, N'4f6b4cdf-0a77-42c4-8039-6d8851b13435', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1047, N'11278ac8-1b40-4150-a22f-2fd4e02c227c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (1048, N'c2fd1bf6-8d3b-40ca-86c2-34abfc0fbc54', 7)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (2032, N'0cb7cc91-2398-43c5-8f20-45159a53432b', 5)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (2033, N'0cb7cc91-2398-43c5-8f20-45159a53432b', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (2034, N'2964d431-a885-4047-8f29-604ed1700a6c', 8)
INSERT [dbo].[TeacherClass] ([TeaLevelID], [TeachId], [ClassID]) VALUES (2035, N'8e2ba591-ffce-4e1c-979a-0e610f025414', 7)
SET IDENTITY_INSERT [dbo].[TeacherClass] OFF
SET IDENTITY_INSERT [dbo].[Thevideo] ON 

INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (21, N'https://www.youtube.com/watch?v=2fgpU86iy30', NULL, 1020, 1, NULL, NULL)
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (22, N'https://www.youtube.com/watch?v=BMqWpo-4luc', NULL, 1020, NULL, NULL, NULL)
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (27, N'https://www.youtube.com/watch?v=BMqWpo-4luc', NULL, 1025, NULL, 1, NULL)
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (28, N'0.mp4', NULL, 1022, NULL, 1, N'class3')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (29, N'0.mp4', NULL, 4, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (30, N'0.mp4', NULL, 1043, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (31, N'0.mp4', NULL, 1044, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (32, N'0.mp4', NULL, 1045, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (33, N'0.mp4', NULL, 1046, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (34, N'0.mp4', NULL, 1048, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (1028, N'0.mp4', NULL, 2032, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (1029, N'0.mp4', NULL, 2033, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (1030, N'0.mp4', NULL, 1024, NULL, 1, N'class0')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (1031, N'0.mp4', NULL, 1024, NULL, 0, N'class1')
INSERT [dbo].[Thevideo] ([VideoId], [VideoPath], [Date], [TeaClassID], [NumOfView], [IsIntroVideo], [Title]) VALUES (1032, N'0.mp4', NULL, 2032, NULL, 0, N'class3')
SET IDENTITY_INSERT [dbo].[Thevideo] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([levelID])
REFERENCES [dbo].[Class] ([LevelID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_Student] FOREIGN KEY([StuId])
REFERENCES [dbo].[Student] ([StuID])
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_Student]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_SubjectClass] FOREIGN KEY([SubLevelID])
REFERENCES [dbo].[SubjectClass] ([SubLevelID])
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_SubjectClass]
GO
ALTER TABLE [dbo].[StuSubTea]  WITH CHECK ADD  CONSTRAINT [FK_StuSubTea_StudentSubject] FOREIGN KEY([StuSubID])
REFERENCES [dbo].[StudentSubject] ([StuSubID])
GO
ALTER TABLE [dbo].[StuSubTea] CHECK CONSTRAINT [FK_StuSubTea_StudentSubject]
GO
ALTER TABLE [dbo].[StuSubTea]  WITH CHECK ADD  CONSTRAINT [FK_StuSubTea_Teacher] FOREIGN KEY([TeachId])
REFERENCES [dbo].[Teacher] ([TeachId])
GO
ALTER TABLE [dbo].[StuSubTea] CHECK CONSTRAINT [FK_StuSubTea_Teacher]
GO
ALTER TABLE [dbo].[SubjectClass]  WITH CHECK ADD  CONSTRAINT [FK_SubjectLevel_Level] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Class] ([LevelID])
GO
ALTER TABLE [dbo].[SubjectClass] CHECK CONSTRAINT [FK_SubjectLevel_Level]
GO
ALTER TABLE [dbo].[SubjectClass]  WITH CHECK ADD  CONSTRAINT [FK_SubjectLevel_Subject] FOREIGN KEY([SubId])
REFERENCES [dbo].[Subject] ([SubId])
GO
ALTER TABLE [dbo].[SubjectClass] CHECK CONSTRAINT [FK_SubjectLevel_Subject]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY([SubID])
REFERENCES [dbo].[Subject] ([SubId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Subject]
GO
ALTER TABLE [dbo].[TeacherClass]  WITH CHECK ADD  CONSTRAINT [FK_TeacherClass_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([LevelID])
GO
ALTER TABLE [dbo].[TeacherClass] CHECK CONSTRAINT [FK_TeacherClass_Class]
GO
ALTER TABLE [dbo].[TeacherClass]  WITH CHECK ADD  CONSTRAINT [FK_TeacherClass_Teacher] FOREIGN KEY([TeachId])
REFERENCES [dbo].[Teacher] ([TeachId])
GO
ALTER TABLE [dbo].[TeacherClass] CHECK CONSTRAINT [FK_TeacherClass_Teacher]
GO
ALTER TABLE [dbo].[Thevideo]  WITH CHECK ADD  CONSTRAINT [FK_Video_TeacherClass] FOREIGN KEY([TeaClassID])
REFERENCES [dbo].[TeacherClass] ([TeaLevelID])
GO
ALTER TABLE [dbo].[Thevideo] CHECK CONSTRAINT [FK_Video_TeacherClass]
GO
