USE [TesAkalKarya]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create TABLE [dbo].[Employee](
	[Id] [int] IDENTITY (1,1) NOT NULL,
	[EmployeeId] [nchar](10) NOT NULL,
	[FullName] [nchar](100) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Address] [nchar](500) NULL
) ON [PRIMARY]
GO
