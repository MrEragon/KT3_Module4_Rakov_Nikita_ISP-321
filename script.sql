USE [master]
GO
/****** Object:  Database [KT04]    Script Date: 07.10.2024 11:56:47 ******/
CREATE DATABASE [KT04]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT04', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT04.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT04_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT04_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KT04] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT04].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT04] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT04] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT04] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT04] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT04] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT04] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KT04] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT04] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT04] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT04] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT04] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT04] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT04] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT04] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT04] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KT04] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT04] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT04] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT04] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT04] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT04] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT04] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT04] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KT04] SET  MULTI_USER 
GO
ALTER DATABASE [KT04] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT04] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT04] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT04] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT04] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT04] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KT04] SET QUERY_STORE = OFF
GO
USE [KT04]
GO
/****** Object:  Table [dbo].[Enter]    Script Date: 07.10.2024 11:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 07.10.2024 11:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.10.2024 11:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07.10.2024 11:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDRole] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[PasportSeri] [int] NOT NULL,
	[PasportNumber] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[DateOfLastEnter] [date] NULL,
	[IDEnter] [int] NULL,
	[IDGender] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Enter] ON 

INSERT [dbo].[Enter] ([ID], [Name]) VALUES (1, N'Неуспешно')
INSERT [dbo].[Enter] ([ID], [Name]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[Enter] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Name]) VALUES (1, N'женский')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (2, N'мужской')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7 (781) 785-58-37', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7 (230) 906-88-15', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(N'2023-02-13' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7 (555) 444-83-16', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(N'2023-02-10' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7 (392) 682-44-42', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(N'2023-02-03' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7 (836) 429-03-86', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(N'2023-02-15' AS Date), 1, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7 (283) 945-30-92', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(N'2023-02-11' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7 (621) 359-36-69', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(N'2023-02-15' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7 (440) 561-03-14', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(N'2023-02-15' AS Date), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7 (331) 918-24-34', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(N'2023-02-05' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7 (493) 219-39-42', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7 (407) 485-50-30', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7 (919) 478-24-97', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(N'2023-02-04' AS Date), 1, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7 (482) 802-95-80', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(N'2023-02-16' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7 (455) 944-64-49', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(N'2023-02-10' AS Date), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7 (710) 388-25-63', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(N'2023-02-01' AS Date), 2, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7 (759) 452-38-46', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(N'2023-02-08' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7 (687) 801-13-32', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7 (425) 783-22-53', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(N'2023-02-05' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7 (889) 449-43-91', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(N'2023-02-13' AS Date), 2, 2)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7 (825) 301-82-50', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7 (397) 334-20-86', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7 (241) 570-30-40', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7 (713) 462-82-65', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(N'2023-02-07' AS Date), 1, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7 (854) 822-23-31', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [IDRole], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [PhoneNumber], [PasportSeri], [PasportNumber], [DateOfBirth], [DateOfLastEnter], [IDEnter], [IDGender]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7 (439) 713-61-17', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(N'1970-01-01' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Enter] FOREIGN KEY([IDEnter])
REFERENCES [dbo].[Enter] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Enter]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [KT04] SET  READ_WRITE 
GO
