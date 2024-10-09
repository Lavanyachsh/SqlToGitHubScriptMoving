CREATE TABLE [dbo].[ErrorLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentUser] [varchar](max) NULL,
	[ErrorNumber] [int] NULL,
	[ErrorSeverity] [varchar](max) NULL,
	[ErrorState] [varchar](max) NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorLine] [int] NULL,
	[ErrorMessage] [varchar](max) NULL,
	[SERVERNAME] [varchar](max) NULL)
GO
