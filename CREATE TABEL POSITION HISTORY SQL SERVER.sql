USE [TesAkalKarya]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PositionHistory](
	[Id] [int] IDENTITY (1,1) NOT NULL PRIMARY KEY,
	[PosId] [nchar](10) NOT NULL,
	[PosTitle] [nchar](100) NOT NULL,
	[EmployeeId] [nchar](10) NOT NULL,	
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL
) ON [PRIMARY]
GO
