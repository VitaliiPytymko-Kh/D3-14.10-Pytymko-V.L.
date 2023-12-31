USE [ACADEMY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 25.10.2023 22:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[idDepartments] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[DepartmentsName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDepartments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 25.10.2023 22:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[_Name] [nvarchar](100) NOT NULL,
	[Dean] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 25.10.2023 22:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Rating] [int] NOT NULL,
	[Year] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 25.10.2023 22:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[EmploymentDate] [date] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Premium] [money] NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[IsAssistant] [bit] NOT NULL,
	[IsProfessor] [bit] NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (18, 20000.0000, N'XDepartmets')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (19, 35000.0000, N'ADepartmets')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (20, 10000.0000, N'LDepartmets')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (21, 37000.0000, N'Software Development')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (22, 50000.0000, N'PDepartmets')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (1018, 20000.0000, N'Departmets1')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (1019, 35000.0000, N'Departmets2')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (1020, 10000.0000, N'Departmets3')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (1021, 37000.0000, N'Departmets4')
INSERT [dbo].[Departments] ([idDepartments], [Financing], [DepartmentsName]) VALUES (1022, 50000.0000, N'Departmets5')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([idCategory], [_Name], [Dean]) VALUES (1, N'Computer Science', N'Dean1')
INSERT [dbo].[Faculties] ([idCategory], [_Name], [Dean]) VALUES (2, N'Faculties2', N'Dean2')
INSERT [dbo].[Faculties] ([idCategory], [_Name], [Dean]) VALUES (3, N'Faculties3', N'Dean3')
INSERT [dbo].[Faculties] ([idCategory], [_Name], [Dean]) VALUES (4, N'Faculties4', N'Dean4')
INSERT [dbo].[Faculties] ([idCategory], [_Name], [Dean]) VALUES (5, N'Faculties5', N'Dean5')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (1, N'Group1', 4, 2)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (2, N'Group2', 3, 3)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (3, N'Group3', 5, 1)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (4, N'Group4', 2, 4)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (5, N'Group5', 4, 5)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (1002, N'Group6', 5, 5)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (1003, N'Group7', 3, 5)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (1004, N'Group8', 2, 5)
INSERT [dbo].[Groups] ([idCategory], [Name], [Rating], [Year]) VALUES (1005, N'Group9', 4, 5)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1, CAST(N'1995-05-15' AS Date), N'NAme1', 3000.0000, 1500.5000, N'Surname1', 0, 1, N'Professor')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (2, CAST(N'2002-09-20' AS Date), N'NAme2', 300.0000, 3000.0000, N'Surname2', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (3, CAST(N'1998-03-10' AS Date), N'NAme3', 4500.0000, 7000.2000, N'Surname3', 0, 1, N'Professor')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (4, CAST(N'2005-07-05' AS Date), N'NAme4', 500.0000, 600.0000, N'Surname4', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (5, CAST(N'2000-11-30' AS Date), N'NAme5', 5000.0000, 5050.0000, N'Surname5', 0, 1, N'Professor')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1002, CAST(N'2008-02-07' AS Date), N'Name6', 100.0000, 250.0000, N'Surname6', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1003, CAST(N'2002-12-03' AS Date), N'Name7', 150.0000, 350.0000, N'Surname7', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1004, CAST(N'2000-05-17' AS Date), N'Name8', 190.0000, 450.0000, N'Surname8', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1005, CAST(N'2008-02-07' AS Date), N'Name6', 100.0000, 250.0000, N'Surname6', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1006, CAST(N'2002-12-03' AS Date), N'Name7', 150.0000, 350.0000, N'Surname7', 1, 0, N'Assistant')
INSERT [dbo].[Teachers] ([idCategory], [EmploymentDate], [Name], [Premium], [Salary], [Surname], [IsAssistant], [IsProfessor], [Position]) VALUES (1007, CAST(N'2000-05-17' AS Date), N'Name8', 190.0000, 450.0000, N'Surname8', 1, 0, N'Assistant')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__9B870D584489C64E]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[DepartmentsName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__9B870D58B5A03BA1]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[DepartmentsName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Facultie__5E90137D8B20A8E8]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Faculties] ADD UNIQUE NONCLUSTERED 
(
	[_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Facultie__5E90137DC7FC95FA]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Faculties] ADD UNIQUE NONCLUSTERED 
(
	[_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Groups__737584F673B73CEA]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Groups] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Groups__737584F680405725]    Script Date: 25.10.2023 22:31:04 ******/
ALTER TABLE [dbo].[Groups] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [Premium]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [IsAssistant]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [IsProfessor]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK__Departmen__Finan__45F365D3] CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK__Departmen__Finan__45F365D3]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Dean]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Rating]>=(0) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([EmploymentDate]>='01.01.1990'))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([EmploymentDate]>='01.01.1990'))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Position]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Premium]>=(0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Premium]>=(0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Salary]>(0)))
GO
