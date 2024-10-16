USE [Shikhragimov]
GO
/****** Object:  Table [dbo].[Dol]    Script Date: 10.10.2024 14:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dol](
	[Id_d] [int] IDENTITY(1,1) NOT NULL,
	[Name_d] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dol] PRIMARY KEY CLUSTERED 
(
	[Id_d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 10.10.2024 14:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id_g] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id_g] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 10.10.2024 14:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[Id_s] [int] IDENTITY(1,1) NOT NULL,
	[IdDol] [int] NOT NULL,
	[FIO] [nvarchar](80) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[Login] [nvarchar](80) NOT NULL,
	[Password] [nvarchar](80) NOT NULL,
	[Number_phone] [varchar](20) NOT NULL,
	[Ser_num_pas] [varchar](20) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Pos_v] [datetime] NOT NULL,
	[IdType] [int] NULL,
	[IdGender] [int] NOT NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[Id_s] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 10.10.2024 14:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id_t] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id_t] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dol] ON 

INSERT [dbo].[Dol] ([Id_d], [Name_d]) VALUES (1, N'Администратор')
INSERT [dbo].[Dol] ([Id_d], [Name_d]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Dol] ([Id_d], [Name_d]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Dol] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id_g], [Gender]) VALUES (1, N'ж')
INSERT [dbo].[Gender] ([Id_g], [Gender]) VALUES (2, N'м')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudnik] ON 

INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (1, 3, N'Акимов Ян Алексеевич', N'gohufreilagrau3818@yopmail.com', N'akimovya', N'bn069Caj', N'77817855837', N' 2367  558134', CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (2, 2, N'Гончарова Ульяна Львовна', N'xawugosune1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'72309068815', N' 7101  669343', CAST(N'1975-06-22' AS Date), CAST(N'2023-02-02T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (3, 1, N'Анохина Елизавета Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'75554448316', N' 3455  719630', CAST(N'1991-08-16' AS Date), CAST(N'2023-02-03T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (4, 3, N'Николаев Илья Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'73926824442', N' 2377  871623', CAST(N'1970-12-22' AS Date), CAST(N'2023-02-04T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (5, 2, N'Уткин Дмитрий Платонович', N'zapramaxesu7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'78364290386', N' 8755  921148', CAST(N'1999-05-04' AS Date), CAST(N'2023-02-05T13:07:20.000' AS DateTime), 1, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (6, 2, N'Куликова Стефания Никитична', N'rouzecroummegre3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'72839453092', N' 4355  104594', CAST(N'1994-12-06' AS Date), CAST(N'2023-02-06T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (7, 2, N'Волков Егор Матвеевич', N'ziyeuddocrabri4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'76213593669', N' 2791  114390', CAST(N'1995-03-28' AS Date), CAST(N'2023-02-07T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (8, 1, N'Соколова Софья Георгиевна', N'ketameissoinnei1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'74405610314', N' 5582  126286', CAST(N'1977-03-27' AS Date), CAST(N'2023-02-08T13:07:20.000' AS DateTime), 1, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (9, 3, N'Голубева Полина Андреевна', N'yipraubaponou5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'73319182434', N' 2978  133653', CAST(N'1975-04-12' AS Date), CAST(N'2023-02-09T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (10, 3, N'Вишневская Мария Андреевна', N'crapedocouca3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'73319182434', N' 7512  141956', CAST(N'1975-12-23' AS Date), CAST(N'2023-02-10T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (11, 3, N'Васильева Арина Данииловна', N'ceigoixakaunni9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'73319182434', N' 5046  158433', CAST(N'2000-01-22' AS Date), CAST(N'2023-02-11T13:07:20.000' AS DateTime), 1, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (12, 3, N'Павлов Дмитрий Максимович', N'yeimmeiwauzomo7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'73319182434', N' 2460  169505', CAST(N'1983-10-03' AS Date), CAST(N'2023-02-12T13:07:20.000' AS DateTime), 1, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (13, 2, N'Горбунова Мирослава Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'73319182434', N' 3412  174593', CAST(N'1998-03-03' AS Date), CAST(N'2023-02-13T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (14, 3, N'Демина София Романовна', N'deummecillummu4992@mail.ru', N'deminasr', N'D%DVKyDN', N'73319182434', N' 4950  183034', CAST(N'1993-06-08' AS Date), CAST(N'2023-02-14T13:07:20.000' AS DateTime), 1, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (15, 2, N'Петрова Алина Робертовна', N'vilagajaunne5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'73319182434', N' 5829  219464', CAST(N'1980-09-23' AS Date), CAST(N'2023-02-15T13:07:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (16, 2, N'Плотников Григорий Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'73319182434', N' 6443  208059', CAST(N'1991-03-13' AS Date), CAST(N'2023-02-16T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (17, 2, N'Прохорова Есения Тимофеевна', N'vhopkins@lewismullen.com', N'prochorovaet', N'wLF186dB', N'73319182434', N' 7079  213265', CAST(N'1998-04-14' AS Date), CAST(N'2023-02-17T13:07:20.000' AS DateTime), NULL, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (18, 2, N'Чернов Алексей Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'73319182434', N' 8207  522702', CAST(N'1980-04-16' AS Date), CAST(N'2023-02-18T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (19, 3, N'Горбунов Степан Артёмович', N'garciadavid@mckinneymcbride.com', N'gorbunovsa', N'hFhK%$JI', N'73319182434', N' 9307  232158', CAST(N'1993-07-23' AS Date), CAST(N'2023-02-19T13:07:20.000' AS DateTime), 2, 2)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (20, 2, N'Рябинина Софья Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'73319182434', N' 1357  242839', CAST(N'1990-06-01' AS Date), CAST(N'2023-02-20T13:07:20.000' AS DateTime), NULL, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (21, 2, N'Козлова Яна Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'73319182434', N' 1167  256636', CAST(N'1987-12-21' AS Date), CAST(N'2023-02-21T13:07:20.000' AS DateTime), NULL, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (22, 3, N'Лукьянова Ульяна Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'73319182434', N' 1768  266986', CAST(N'1981-10-22' AS Date), CAST(N'2023-02-22T13:07:20.000' AS DateTime), NULL, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (23, 2, N'Кондрашова Арина Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'73319182434', N' 1710  427875', CAST(N'1976-12-22' AS Date), CAST(N'2023-02-23T13:07:20.000' AS DateTime), 1, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (24, 3, N'Быкова Виктория Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'73319182434', N' 1806  289145', CAST(N'1973-06-14' AS Date), CAST(N'2023-02-24T13:07:20.000' AS DateTime), NULL, 1)
INSERT [dbo].[Sotrudnik] ([Id_s], [IdDol], [FIO], [Email], [Login], [Password], [Number_phone], [Ser_num_pas], [Birthday], [Pos_v], [IdType], [IdGender]) VALUES (25, 2, N'Гуляев Тимофей Даниилович', N'ginaritter@schneiderbuchanan.com', N'gylyaevtd', N'lz$kp1?f', N'73319182434', N' 1587  291249', CAST(N'1987-02-05' AS Date), CAST(N'2023-02-25T13:07:20.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Sotrudnik] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id_t], [Type]) VALUES (1, N'Неуспешно')
INSERT [dbo].[Type] ([Id_t], [Type]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Dol] FOREIGN KEY([IdDol])
REFERENCES [dbo].[Dol] ([Id_d])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Dol]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Gender] FOREIGN KEY([IdGender])
REFERENCES [dbo].[Gender] ([Id_g])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Gender]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id_t])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Type]
GO
