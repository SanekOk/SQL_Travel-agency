USE [AroundTheWorld]
GO
/****** Object:  Table [dbo].[City]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SightseeingId] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CityId] [int] NOT NULL,
	[TransportId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO_C] [nvarchar](100) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [nvarchar](30) NULL,
	[Date_of_birth] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emploees]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emploees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO_E] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [nvarchar](30) NULL,
	[DateEmployment] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploeesTours]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploeesTours](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmploeesId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[ToursId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaxCustomers]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaxCustomers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
	[ToursId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sightseeing]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sightseeing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeTourist]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeTourist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
	[ToursId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Prise] [money] NOT NULL,
	[DataStart] [date] NOT NULL,
	[DataEnd] [date] NOT NULL,
	[CustomersId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport]    Script Date: 06.09.2022 22:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [Name], [SightseeingId], [HotelId]) VALUES (1, N'Kranevo', 4, 3)
INSERT [dbo].[City] ([Id], [Name], [SightseeingId], [HotelId]) VALUES (2, N'Mostar', 1, 4)
INSERT [dbo].[City] ([Id], [Name], [SightseeingId], [HotelId]) VALUES (3, N'Halkidiki', 2, 1)
INSERT [dbo].[City] ([Id], [Name], [SightseeingId], [HotelId]) VALUES (4, N'Verona', 3, 2)
INSERT [dbo].[City] ([Id], [Name], [SightseeingId], [HotelId]) VALUES (5, N'Antalya', 5, 5)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [Name], [CityId], [TransportId]) VALUES (1, N'Greece', 1, 1)
INSERT [dbo].[Country] ([Id], [Name], [CityId], [TransportId]) VALUES (2, N'Italy', 4, 3)
INSERT [dbo].[Country] ([Id], [Name], [CityId], [TransportId]) VALUES (3, N'Turkey', 5, 3)
INSERT [dbo].[Country] ([Id], [Name], [CityId], [TransportId]) VALUES (4, N'Montenegro', 2, 2)
INSERT [dbo].[Country] ([Id], [Name], [CityId], [TransportId]) VALUES (5, N'Bulgaria', 3, 1)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (1, N'Hkhkjh Rhgjh', 671234569, N'HR@gmail.com', CAST(N'1969-05-09' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (2, N'Dyfh Ehgjh', 671234524, N'DE@gmail.com', CAST(N'1974-08-06' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (3, N'Lhjh Whjgjh', 671234147, N'LW@gmail.com', CAST(N'2001-10-24' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (4, N'Sjhkgj Cygjy', 671231254, N'SC@gmail.com', CAST(N'1993-11-27' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (5, N'Qjhj Xuiyk', 671234896, N'QX@gmail.com', CAST(N'2002-12-31' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (6, N'Gjkhjk Jjkhj', 671233458, N'GJ@gmail.com', CAST(N'2002-10-14' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (7, N'Fkjh Khk', 671233321, N'FK@gmail.com', CAST(N'1996-05-07' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (8, N'Sjhkgj Cygj', 671231254, N'SC@gmail.com', CAST(N'1993-11-27' AS Date))
INSERT [dbo].[Customers] ([Id], [FIO_C], [Phone], [Email], [Date_of_birth]) VALUES (9, N'Sjhkgj Cy', 671231254, N'SC@gmail.com', CAST(N'1993-11-27' AS Date))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Emploees] ON 

INSERT [dbo].[Emploees] ([Id], [FIO_E], [Position], [Phone], [Email], [DateEmployment]) VALUES (1, N'DOK', N'Admin', 982586963, N'DOK@gmail.com', CAST(N'2022-03-10' AS Date))
INSERT [dbo].[Emploees] ([Id], [FIO_E], [Position], [Phone], [Email], [DateEmployment]) VALUES (2, N'GIT', N'Tour Operator', 982586968, N'GIT@gmail.com', CAST(N'2022-03-15' AS Date))
INSERT [dbo].[Emploees] ([Id], [FIO_E], [Position], [Phone], [Email], [DateEmployment]) VALUES (3, N'NIK', N'Tour Operator', 982586945, N'NIK@gmail.com', CAST(N'2022-04-02' AS Date))
INSERT [dbo].[Emploees] ([Id], [FIO_E], [Position], [Phone], [Email], [DateEmployment]) VALUES (4, N'GOL', N'Tour Operator', 982586978, N'GOL@gmail.com', CAST(N'2022-03-21' AS Date))
SET IDENTITY_INSERT [dbo].[Emploees] OFF
GO
SET IDENTITY_INSERT [dbo].[EmploeesTours] ON 

INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (1, 2, 1, 1)
INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (2, 3, 2, 2)
INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (3, 2, 3, 3)
INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (4, 4, 4, 4)
INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (5, 3, 5, 5)
INSERT [dbo].[EmploeesTours] ([Id], [EmploeesId], [CountryId], [ToursId]) VALUES (7, 3, 3, 7)
SET IDENTITY_INSERT [dbo].[EmploeesTours] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([Id], [Name], [Photo]) VALUES (1, N'Wdfd', N'Foto 1')
INSERT [dbo].[Hotel] ([Id], [Name], [Photo]) VALUES (2, N'Efd', N'Foto 2')
INSERT [dbo].[Hotel] ([Id], [Name], [Photo]) VALUES (3, N'Kkjkk', N'Foto 3')
INSERT [dbo].[Hotel] ([Id], [Name], [Photo]) VALUES (4, N'Ljkj', N'Foto 4')
INSERT [dbo].[Hotel] ([Id], [Name], [Photo]) VALUES (5, N'Tkjkj', N'Foto 5')
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[MaxCustomers] ON 

INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (1, 30, 1)
INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (2, 29, 2)
INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (3, 25, 3)
INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (4, 32, 4)
INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (5, 26, 5)
INSERT [dbo].[MaxCustomers] ([Id], [Size], [ToursId]) VALUES (6, 31, 7)
SET IDENTITY_INSERT [dbo].[MaxCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[Sightseeing] ON 

INSERT [dbo].[Sightseeing] ([Id], [Name], [Photo]) VALUES (1, N'HFHG', N'Foto 1')
INSERT [dbo].[Sightseeing] ([Id], [Name], [Photo]) VALUES (2, N'JHGHJ', N'Foto 2')
INSERT [dbo].[Sightseeing] ([Id], [Name], [Photo]) VALUES (3, N'KUHKJ', N'Foto 3')
INSERT [dbo].[Sightseeing] ([Id], [Name], [Photo]) VALUES (4, N'KLJHKH', N'Foto 4')
INSERT [dbo].[Sightseeing] ([Id], [Name], [Photo]) VALUES (5, N'GFDF', N'Foto 5')
SET IDENTITY_INSERT [dbo].[Sightseeing] OFF
GO
SET IDENTITY_INSERT [dbo].[SizeTourist] ON 

INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (1, 28, 3)
INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (2, 18, 2)
INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (3, 20, 1)
INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (4, 7, 5)
INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (5, 27, 4)
INSERT [dbo].[SizeTourist] ([Id], [Size], [ToursId]) VALUES (6, 17, 7)
SET IDENTITY_INSERT [dbo].[SizeTourist] OFF
GO
SET IDENTITY_INSERT [dbo].[Tours] ON 

INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (1, N'Tours to Grazia', 320.0000, CAST(N'2022-09-24' AS Date), CAST(N'2022-10-01' AS Date), 2)
INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (2, N'Tours to Italy', 299.0000, CAST(N'2022-09-09' AS Date), CAST(N'2022-09-15' AS Date), 1)
INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (3, N'Tours to Turkey', 340.0000, CAST(N'2022-09-16' AS Date), CAST(N'2022-09-28' AS Date), 3)
INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (4, N'Tours to Montenegro', 199.0000, CAST(N'2022-09-14' AS Date), CAST(N'2022-09-19' AS Date), 4)
INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (5, N'Tours to Bulgaria', 230.0000, CAST(N'2022-09-21' AS Date), CAST(N'2022-09-30' AS Date), 5)
INSERT [dbo].[Tours] ([Id], [Name], [Prise], [DataStart], [DataEnd], [CustomersId]) VALUES (7, N'Tours to Turkey', 299.0000, CAST(N'2022-09-11' AS Date), CAST(N'2022-09-21' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Tours] OFF
GO
SET IDENTITY_INSERT [dbo].[Transport] ON 

INSERT [dbo].[Transport] ([Id], [Name]) VALUES (2, N'Air cruises')
INSERT [dbo].[Transport] ([Id], [Name]) VALUES (1, N'Bus cruises')
INSERT [dbo].[Transport] ([Id], [Name]) VALUES (3, N'Liner cruises')
SET IDENTITY_INSERT [dbo].[Transport] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__City__737584F60D3B575E]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[City] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Country__737584F67FC7C408]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Country] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__643248A708F896D8]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Customers] ADD UNIQUE NONCLUSTERED 
(
	[FIO_C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Emploees__643248A5257492B6]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Emploees] ADD UNIQUE NONCLUSTERED 
(
	[FIO_E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Hotel__737584F6E30BC379]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Hotel] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Sightsee__737584F6397090CB]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Sightseeing] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Transpor__737584F6145D8E33]    Script Date: 06.09.2022 22:42:25 ******/
ALTER TABLE [dbo].[Transport] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([Id])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([SightseeingId])
REFERENCES [dbo].[Sightseeing] ([Id])
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD FOREIGN KEY([TransportId])
REFERENCES [dbo].[Transport] ([Id])
GO
ALTER TABLE [dbo].[EmploeesTours]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[EmploeesTours]  WITH CHECK ADD FOREIGN KEY([EmploeesId])
REFERENCES [dbo].[Emploees] ([Id])
GO
ALTER TABLE [dbo].[EmploeesTours]  WITH CHECK ADD FOREIGN KEY([ToursId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[MaxCustomers]  WITH CHECK ADD FOREIGN KEY([ToursId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[SizeTourist]  WITH CHECK ADD FOREIGN KEY([ToursId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD FOREIGN KEY([CustomersId])
REFERENCES [dbo].[Customers] ([Id])
GO
