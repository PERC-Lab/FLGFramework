USE [LawDB]
GO
/****** Object:  Table [dbo].[Table_Connection]    Script Date: 6/16/2018 12:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Connection](
	[ConID] [int] IDENTITY(1,1) NOT NULL,
	[ElementID_1] [int] NULL,
	[ElementID_2] [int] NULL,
 CONSTRAINT [PK_Table_Connection] PRIMARY KEY CLUSTERED 
(
	[ConID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
