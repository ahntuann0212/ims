USE [master]
GO
/****** Object:  Database [IMS]    Script Date: 3/31/2024 11:20:20 PM ******/
CREATE DATABASE [IMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [IMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IMS] SET RECOVERY FULL 
GO
ALTER DATABASE [IMS] SET  MULTI_USER 
GO
ALTER DATABASE [IMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'IMS', N'ON'
GO
ALTER DATABASE [IMS] SET QUERY_STORE = ON
GO
ALTER DATABASE [IMS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [IMS]
GO
/****** Object:  Table [dbo].[account]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[candidate]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidate](
	[candidate_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[cv_url] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[skill] [nvarchar](50) NULL,
	[recruiter_id] [int] NULL,
	[note] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[yoe] [nvarchar](50) NULL,
	[highest_level] [nvarchar](50) NULL,
 CONSTRAINT [PK_candidate] PRIMARY KEY CLUSTERED 
(
	[candidate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract](
	[contract_id] [int] NOT NULL,
	[contract_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interview]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interview](
	[interview_id] [int] NOT NULL,
	[title] [nvarchar](50) NULL,
	[candidate_id] [int] NULL,
	[schedule_time] [date] NULL,
	[job_id] [int] NULL,
	[interviewer_id] [int] NULL,
	[location] [nvarchar](50) NULL,
	[meeting_id] [int] NULL,
	[note] [nvarchar](50) NULL,
	[recruiter_id] [int] NULL,
 CONSTRAINT [PK_interview] PRIMARY KEY CLUSTERED 
(
	[interview_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[skill] [nvarchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[salary_from] [money] NULL,
	[salary_to] [money] NULL,
	[benefit] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[level] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_job] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offer]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offer](
	[offer_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[contract_type_id] [int] NOT NULL,
	[position_id] [int] NOT NULL,
	[level] [nvarchar](50) NULL,
	[approver_id] [int] NOT NULL,
	[department] [nvarchar](50) NULL,
	[interview_id] [int] NOT NULL,
	[recruiter_id] [int] NOT NULL,
	[contract_period] [nvarchar](50) NULL,
	[due_date] [date] NULL,
	[salary] [money] NULL,
	[note] [nvarchar](500) NULL,
 CONSTRAINT [PK_offer] PRIMARY KEY CLUSTERED 
(
	[offer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[position]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[position](
	[position_id] [int] NOT NULL,
	[position_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] NOT NULL,
	[role_name] [nchar](10) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/31/2024 11:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] NOT NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[dob] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
	[department] [nvarchar](50) NOT NULL,
	[note] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_user]
GO
ALTER TABLE [dbo].[candidate]  WITH CHECK ADD  CONSTRAINT [FK_candidate_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[candidate] CHECK CONSTRAINT [FK_candidate_user]
GO
ALTER TABLE [dbo].[candidate]  WITH CHECK ADD  CONSTRAINT [FK_candidate_user1] FOREIGN KEY([recruiter_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[candidate] CHECK CONSTRAINT [FK_candidate_user1]
GO
ALTER TABLE [dbo].[interview]  WITH CHECK ADD  CONSTRAINT [FK_interview_candidate] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[candidate] ([candidate_id])
GO
ALTER TABLE [dbo].[interview] CHECK CONSTRAINT [FK_interview_candidate]
GO
ALTER TABLE [dbo].[interview]  WITH CHECK ADD  CONSTRAINT [FK_interview_job] FOREIGN KEY([job_id])
REFERENCES [dbo].[job] ([job_id])
GO
ALTER TABLE [dbo].[interview] CHECK CONSTRAINT [FK_interview_job]
GO
ALTER TABLE [dbo].[interview]  WITH CHECK ADD  CONSTRAINT [FK_interview_user] FOREIGN KEY([interviewer_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[interview] CHECK CONSTRAINT [FK_interview_user]
GO
ALTER TABLE [dbo].[interview]  WITH CHECK ADD  CONSTRAINT [FK_interview_user1] FOREIGN KEY([recruiter_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[interview] CHECK CONSTRAINT [FK_interview_user1]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_candidate] FOREIGN KEY([candidate_id])
REFERENCES [dbo].[candidate] ([candidate_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_candidate]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_contract] FOREIGN KEY([contract_type_id])
REFERENCES [dbo].[contract] ([contract_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_contract]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_interview] FOREIGN KEY([interview_id])
REFERENCES [dbo].[interview] ([interview_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_interview]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_position] FOREIGN KEY([position_id])
REFERENCES [dbo].[position] ([position_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_position]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_user] FOREIGN KEY([approver_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_user]
GO
ALTER TABLE [dbo].[offer]  WITH CHECK ADD  CONSTRAINT [FK_offer_user1] FOREIGN KEY([recruiter_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[offer] CHECK CONSTRAINT [FK_offer_user1]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [IMS] SET  READ_WRITE 
GO

INSERT INTO [dbo].[job] (
  [title],
  [skill],
  [start_date],
  [salary_from],
  [salary_to],
  [benefit],
  [address],
  [level],
  [description],
  [status]
)
VALUES
  ('Software Engineer', 'Java, Python', '2024-04-12', 80000.00, 120000.00, 'Health Insurance, Paid Time Off', 'New York, NY', 'Mid-Level', 'Develop and maintain web applications', 1),
  ('Data Analyst', 'SQL, Excel', '2024-05-01', 60000.00, 90000.00, '401k, Dental Insurance', 'Los Angeles, CA', 'Entry-Level', 'Analyze data to identify trends', 1),
  ('Marketing Manager', 'Social Media, SEO', NULL, 90000.00, 130000.00, 'Flexible Work Schedule, Paid Training', 'Chicago, IL', 'Senior', 'Lead marketing campaigns to generate leads', 0),
  ('Content Writer', 'SEO, Content Marketing', '2024-07-01', 45000.00, 60000.00, 'Flexible Work Schedule', '4 Pine St, Anytown, CA', 'Mid-Level', 'Create engaging ', 1),
  ('Human Resources Manager', 'HR Law, Recruitment', '2024-06-01', 90000.00, 120000.00, '401k Matching, Paid Time Off', '5 Maple St, Anytown, CA', 'Senior', 'Manage all HR functions for the company', 0),
  ('Customer Service Representative', 'Communication, Problem Solving', '2024-05-15', 40000.00, 50000.00, 'Tuition Reimbursement', '6 Birch St, Anytown, CA', 'Entry Level', 'Provide exceptional customer ', 1);
  INSERT INTO [dbo].[account](
	[account_id] ,
	[user_name],
	[password] ,
	[user_id] 
)
VALUES
  (1,'JohnDoe', 'hashed_password_123', 1),
  (2,'JaneDoe', 'hashed_password_456', 2);
CREATE TRIGGER job_insert_trigger
ON [dbo].[job]
FOR INSERT
AS
BEGIN
  DECLARE @new_id int;
  SET @new_id = NEXT VALUE FOR job_id_seq;
  UPDATE [dbo].[job]
  SET job_id = @new_id
  WHERE job_id IS NULL; -- Assuming job_id is initially NULL for new entries
END;
drop database IMS
select * from [dbo].[job] 
select * from [dbo].[account] 

INSERT INTO [dbo].[account] (
  [account_id],
  [user_name],
  [password],  -- Replace with hashed values using a strong hashing function
  [user_id]
)
VALUES
  (3,'JohnDoe', 'hashed_password_123', 1),
  (4,'JaneDoe', 'hashed_password_456', 2);
  INSERT INTO [dbo].[user] (
  user_id,
  [full_name],
  [email],
  [dob],
  [phone],
  [address],
  [gender],
  [role_id],
  [department],
  [note],
  [status]
)
VALUES
  (1,'John Doe', 'john.doe@company.com', '1990-01-01', '555-555-5555', '123 Main St, Anytown, CA', 'Male', 1, 'Engineering','no', 'Active'),
  (2,'Jane Doe', 'jane.doe@company.com', '1995-07-15', '555-555-5556', '456 Elm St, Anytown, CA', 'Female', 2, 'Marketing','yes' ,'Active'),
  (3,'Michael Smith', 'michael.smith@company.com', '1988-12-24', '555-555-5557', '789 Oak St, Anytown, CA', 'Male', 3, 'Sales','no', 'Active');
  INSERT INTO [dbo].[role] (
  [role_id],
  [role_name]
)
VALUES
  (1,'Admin'),
  (2,'Manager'),
  (3,'Employee');
