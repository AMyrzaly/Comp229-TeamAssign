/*
No database-level extended properties were found or all existing extended properties are open in other windows
*/
USE [Comp229TeamAssign]

/* Object: Table Comp229TeamAssign.[dbo].[Students] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Appiontments](
    [AppiontmentID]     INT           IDENTITY (10, 1) NOT NULL,
    [FirstName]        VARCHAR (100) NOT NULL,
    [LastName]      VARCHAR (100)    NOT NULL,
    [Date] Date           NOT NULL,
    [Time] Time	NOT NULL,
    [Address] [varchar](50) NOT NULL,
    [Postal Code] [varchar](20) NOT NULL,
    [Telephone] [int] (15,1) NOT NULL,
 CONSTRAINT [PK_AppiontmentID] PRIMARY KEY CLUSTERED 
(
	[AppiontmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table Comp229TeamAssign.[dbo].[Patients] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Registrations](

 CONSTRAINT [PK_RegistrationID] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
CREATE TABLE Comp229TeamAssign.[dbo].[Registrations]
(
	[RegistrationID] [int] IDENTITY (1, 1) NOT NULL,
  [AppiontmentID] [int] NOT NULL,
  [DoctorID] [int] NOT NULL,
  [UserName] varchar (20) NOt NULL,
  [Password] varchar (25) NOT NULL,
  [DepartmentID] varchar(20) NOT NULL,
  [FirstName] varchar (50) NOT NULL,
  [LastName] varchar (50) NOT NULL,
  [Address] varchar (50) NOT NULL,
  [City] varchar (20) NOT NULL,
  [Province] varchar (15) NOT NULL,
  [PostalCode] varchar (15) NOT NULL,
  [Email] varchar (50) NOT NULL,
  [Telephone]varchar(15) NOT NULL,
  [Gender] varchar (10) NOT NULL,
  
  
 CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED 
(
	[PK_RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table Comp229TeamAssign.[dbo].[Departments] */


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Doctors](
	[DoctorID] [int] IDENTITY (200, 1) NOT NULL,
	[AvialbleFrom] [varchar](100) NOT NULL,
	[AvialableTo] [int] NOT NULL,
	
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

ALTER TABLE Comp229TeamAssign.[dbo].Registrations
ADD CONSTRAINT FK_Registrations_DoctorID FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)

ALTER TABLE Comp229TeamAssign.[dbo].Registrations
ADD CONSTRAINT FK_Registrations_AppiontmentID FOREIGN KEY (AppiontmentID) REFERENCES Appiontments(AppiontmentID)
