USE [LawDB]
GO
/****** Object:  Table [dbo].[Table_Sentence]    Script Date: 6/16/2018 11:55:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Sentence](
	[SenID] [int] IDENTITY(1,1) NOT NULL,
	[ParID] [int] NULL,
	[Action] [nvarchar](max) NULL,
	[Actor] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[ConType] [varchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table_Sentence] PRIMARY KEY CLUSTERED 
(
	[SenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Table_Sentence]  WITH CHECK ADD  CONSTRAINT [FK_Table_Sentence_Table_Par] FOREIGN KEY([ParID])
REFERENCES [dbo].[Table_Par] ([ParID])
GO
ALTER TABLE [dbo].[Table_Sentence] CHECK CONSTRAINT [FK_Table_Sentence_Table_Par]
GO
