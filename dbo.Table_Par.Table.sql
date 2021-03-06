USE [LawDB]
GO
/****** Object:  Table [dbo].[Table_Par]    Script Date: 6/16/2018 12:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Par](
	[ParID] [int] NOT NULL,
	[ArtID] [int] NULL,
	[ParTitle] [nvarchar](max) NULL,
	[ConType] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table_Par] PRIMARY KEY CLUSTERED 
(
	[ParID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Table_Par]  WITH CHECK ADD  CONSTRAINT [FK_Table_Par_Table_Art] FOREIGN KEY([ArtID])
REFERENCES [dbo].[Table_Art] ([ArtID])
GO
ALTER TABLE [dbo].[Table_Par] CHECK CONSTRAINT [FK_Table_Par_Table_Art]
GO
