USE [LawDB]
GO
/****** Object:  Table [dbo].[Table_Art]    Script Date: 6/16/2018 12:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Art](
	[ArtID] [int] IDENTITY(1,1) NOT NULL,
	[ArtName] [nvarchar](max) NULL,
	[ChptID] [int] NOT NULL,
 CONSTRAINT [PK_Table_Art] PRIMARY KEY CLUSTERED 
(
	[ArtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Table_Art]  WITH CHECK ADD  CONSTRAINT [FK_Table_Art_Table_Chapter] FOREIGN KEY([ChptID])
REFERENCES [dbo].[Table_Chapter] ([ChapID])
GO
ALTER TABLE [dbo].[Table_Art] CHECK CONSTRAINT [FK_Table_Art_Table_Chapter]
GO
