CREATE TABLE [dbo].[FileUpload](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](max) NULL,
	[FilePath] [varchar](max) NULL,
	[ModifiedFilename] [varchar](max) NULL,
	[Createdby] [varchar](max) NULL,
	[CreatedDateTime] [datetime] NULL)
GO

