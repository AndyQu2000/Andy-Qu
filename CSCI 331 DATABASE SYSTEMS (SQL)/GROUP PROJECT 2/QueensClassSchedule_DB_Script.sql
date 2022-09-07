USE [QueensClassSchedule]
GO
/****** Object:  Schema [ClassScheduleProcedure]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [ClassScheduleProcedure]
GO
/****** Object:  Schema [DBSecurity]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [DBSecurity]
GO
/****** Object:  Schema [Facility]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [Facility]
GO
/****** Object:  Schema [GroupNameProject3]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [GroupNameProject3]
GO
/****** Object:  Schema [Process]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [Process]
GO
/****** Object:  Schema [Schedule]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [Schedule]
GO
/****** Object:  Schema [UDT]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [UDT]
GO
/****** Object:  Schema [Uploadfile]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [Uploadfile]
GO
/****** Object:  Schema [Utils]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [Utils]
GO
/****** Object:  Schema [YourLastName]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE SCHEMA [YourLastName]
GO
/****** Object:  UserDefinedDataType [UDT].[Abbreviation]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[Abbreviation] FROM [nvarchar](2) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[ColumnInt]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[ColumnInt] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [UDT].[Description]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[Description] FROM [varchar](50) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[ForeignKeyInt]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[ForeignKeyInt] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [UDT].[Name]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[Name] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[NameCode]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[NameCode] FROM [nvarchar](10) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[NumberCode]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[NumberCode] FROM [nvarchar](5) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[ShortDescription]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[ShortDescription] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [UDT].[SurrogateKeyInt]    Script Date: 12/14/2021 9:38:27 PM ******/
CREATE TYPE [UDT].[SurrogateKeyInt] FROM [int] NOT NULL
GO
/****** Object:  Table [DBSecurity].[UserAuthorization]    Script Date: 12/14/2021 9:38:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DBSecurity].[UserAuthorization](
	[UserAuthorizationKey] [int] IDENTITY(1,1) NOT NULL,
	[ClassTime] [UDT].[NumberCode] NULL,
	[Individual_Project] [UDT].[Description] NULL,
	[GroupMemberLastName] [UDT].[Name] NOT NULL,
	[GroupMemberFirstName] [UDT].[Name] NOT NULL,
	[GroupName] [UDT].[Name] NOT NULL,
	[DateAdded] [datetime2](7) NULL,
 CONSTRAINT [PK_UserAuthorizationKey] PRIMARY KEY CLUSTERED 
(
	[UserAuthorizationKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Facility].[Building]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facility].[Building](
	[BuildingID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[BuildingCode] [UDT].[Abbreviation] NULL,
	[BuildingName] [UDT].[Name] NULL,
PRIMARY KEY CLUSTERED 
(
	[BuildingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Facility].[Department]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facility].[Department](
	[DepartmentID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [UDT].[NameCode] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Facility].[DepartmentInstructors]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facility].[DepartmentInstructors](
	[InstructorID] [UDT].[ForeignKeyInt] NOT NULL,
	[DepartmentID] [UDT].[ForeignKeyInt] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Facility].[Instructor]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facility].[Instructor](
	[InstructorID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[FirstName] [UDT].[Name] NULL,
	[LastName] [UDT].[Name] NULL,
PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Facility].[Room]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facility].[Room](
	[RoomID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[BuildingID] [UDT].[ForeignKeyInt] NULL,
	[RoomNumber] [UDT].[NumberCode] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[WorkFlowSteps]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[WorkFlowSteps](
	[WorkFlowStepKey] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[WorkFlowStepDescription] [UDT].[Description] NOT NULL,
	[WorkFlowStepTableRowCount] [UDT].[ColumnInt] NULL,
	[StartingDateTime] [datetime2](7) NULL,
	[EndingDateTime] [datetime2](7) NULL,
	[ClassTime] [UDT].[NumberCode] NULL,
	[UserAuthorizationKey] [UDT].[ForeignKeyInt] NOT NULL,
 CONSTRAINT [PK_WorkFlowSteps] PRIMARY KEY CLUSTERED 
(
	[WorkFlowStepKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Schedule].[Class]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Schedule].[Class](
	[ClassID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [UDT].[ForeignKeyInt] NOT NULL,
	[ClassNumber] [UDT].[NumberCode] NULL,
	[CourseDescription] [UDT].[Description] NULL,
	[ClassHours] [UDT].[NumberCode] NULL,
	[ClassCredits] [UDT].[ColumnInt] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Schedule].[Courses]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Schedule].[Courses](
	[CourseID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[CourseCode] [UDT].[NameCode] NULL,
	[ClassID] [UDT].[ForeignKeyInt] NULL,
	[InstructorID] [UDT].[ForeignKeyInt] NULL,
	[RoomID] [UDT].[ForeignKeyInt] NULL,
	[ModeOfInstructionID] [UDT].[ForeignKeyInt] NULL,
	[Section] [UDT].[NumberCode] NULL,
	[Day] [UDT].[NameCode] NULL,
	[StartTime] [UDT].[NameCode] NULL,
	[EndTime] [UDT].[NameCode] NULL,
	[Enrolled] [UDT].[ColumnInt] NULL,
	[Limit] [UDT].[ColumnInt] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Schedule].[ModeOfInstruction]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Schedule].[ModeOfInstruction](
	[ModeOfInstructionID] [UDT].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[Description] [UDT].[ShortDescription] NULL,
 CONSTRAINT [PK_ModeOfInstruction] PRIMARY KEY CLUSTERED 
(
	[ModeOfInstructionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Uploadfile].[CurrentSemesterCourseOfferings]    Script Date: 12/14/2021 9:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Uploadfile].[CurrentSemesterCourseOfferings](
	[Semester] [varchar](50) NULL,
	[Sec] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Course (hr, crd)] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Day] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Instructor] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Enrolled] [varchar](50) NULL,
	[Limit] [varchar](50) NULL,
	[Mode of Instruction] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DFT_ClassTime]  DEFAULT ('7:45') FOR [ClassTime]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DFT_Individual_Project]  DEFAULT ('PROJECT 3 CREATE QUEENS CLASS SCHEDULE') FOR [Individual_Project]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DFT_GroupName]  DEFAULT ('G745_2') FOR [GroupName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DFT_DateAdded]  DEFAULT (sysdatetime()) FOR [DateAdded]
GO
ALTER TABLE [Process].[WorkFlowSteps] ADD  DEFAULT ((0)) FOR [WorkFlowStepTableRowCount]
GO
ALTER TABLE [Process].[WorkFlowSteps] ADD  DEFAULT (sysdatetime()) FOR [StartingDateTime]
GO
ALTER TABLE [Process].[WorkFlowSteps] ADD  DEFAULT (sysdatetime()) FOR [EndingDateTime]
GO
ALTER TABLE [Process].[WorkFlowSteps] ADD  DEFAULT ('07:15') FOR [ClassTime]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((-1)) FOR [CourseCode]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((-1)) FOR [ClassID]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((-1)) FOR [InstructorID]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((-1)) FOR [RoomID]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((-1)) FOR [ModeOfInstructionID]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ('TBA') FOR [Section]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ('TBA') FOR [Day]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ('TBA') FOR [StartTime]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ('TBA') FOR [EndTime]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((0)) FOR [Enrolled]
GO
ALTER TABLE [Schedule].[Courses] ADD  DEFAULT ((0)) FOR [Limit]
GO
ALTER TABLE [Uploadfile].[CurrentSemesterCourseOfferings] ADD  CONSTRAINT [DF_CurrentSemesterCourseOfferings_Semester]  DEFAULT ('Current Semester') FOR [Semester]
GO
ALTER TABLE [Facility].[DepartmentInstructors]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [Facility].[Department] ([DepartmentID])
GO
ALTER TABLE [Facility].[DepartmentInstructors]  WITH CHECK ADD FOREIGN KEY([InstructorID])
REFERENCES [Facility].[Instructor] ([InstructorID])
GO
ALTER TABLE [Facility].[Room]  WITH CHECK ADD FOREIGN KEY([BuildingID])
REFERENCES [Facility].[Building] ([BuildingID])
GO
ALTER TABLE [Process].[WorkFlowSteps]  WITH CHECK ADD FOREIGN KEY([UserAuthorizationKey])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationKey])
GO
ALTER TABLE [Schedule].[Class]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [Facility].[Department] ([DepartmentID])
GO
ALTER TABLE [Schedule].[Courses]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [Schedule].[Class] ([ClassID])
GO
ALTER TABLE [Schedule].[Courses]  WITH CHECK ADD FOREIGN KEY([InstructorID])
REFERENCES [Facility].[Instructor] ([InstructorID])
GO
ALTER TABLE [Schedule].[Courses]  WITH CHECK ADD FOREIGN KEY([ModeOfInstructionID])
REFERENCES [Schedule].[ModeOfInstruction] ([ModeOfInstructionID])
GO
ALTER TABLE [Schedule].[Courses]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [Facility].[Room] ([RoomID])
GO
