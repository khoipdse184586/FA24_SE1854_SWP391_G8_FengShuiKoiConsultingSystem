USE [SWP391]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[animal_id] [bigint] NOT NULL,
	[color_id] [bigint] NOT NULL,
	[animal_name] [nvarchar](255) NOT NULL,
	[animal_category_id] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [animal_animal_id_primary] PRIMARY KEY CLUSTERED 
(
	[animal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Shelter]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Shelter](
	[animal_id] [bigint] NOT NULL,
	[shelter_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalCategory]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalCategory](
	[animal_category_id] [bigint] NOT NULL,
	[animal_category_name] [nvarchar](255) NOT NULL,
	[enviroment_id] [bigint] NOT NULL,
 CONSTRAINT [animalcategory_animal_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[animal_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalConsultation]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalConsultation](
	[consultation_id] [bigint] NOT NULL,
	[animal_id] [bigint] NOT NULL,
	[color_id] [bigint] NOT NULL,
	[consultation_details] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
	[quantity] [bigint] NULL,
 CONSTRAINT [animalconsultation_consultation_id_primary] PRIMARY KEY CLUSTERED 
(
	[consultation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [bigint] NOT NULL,
	[blog_category_id] [bigint] NOT NULL,
	[rating_id] [bigint] NOT NULL,
	[comment_id] [bigint] NOT NULL,
	[content] [text] NOT NULL,
	[status] [bit] NOT NULL,
	[creat_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [blog_blog_id_primary] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Tag]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Tag](
	[blog_id] [bigint] NOT NULL,
	[tag_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[blog_category_id] [bigint] NOT NULL,
	[blog_category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [blogcategory_blog_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[blog_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogImage]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogImage](
	[blog_image_id] [bigint] NOT NULL,
	[image_name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
	[blog_id] [bigint] NULL,
 CONSTRAINT [blogimage_blog_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[blog_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[color_id] [bigint] NOT NULL,
	[color_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [fishcolor_color_id_primary] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentId] [bigint] NOT NULL,
	[content] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [comment_commentid_primary] PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Element]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Element](
	[element_id] [bigint] NOT NULL,
	[animal_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[element_name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enviroment]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enviroment](
	[eviroment_id] [bigint] NOT NULL,
	[enviroment_name] [bigint] NOT NULL,
 CONSTRAINT [enviroment_eviroment_id_primary] PRIMARY KEY CLUSTERED 
(
	[eviroment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interaction]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction](
	[InteractionID] [int] NOT NULL,
	[user_id] [bigint] NULL,
	[blog_id] [bigint] NULL,
	[Type] [varchar](50) NULL,
	[Timestamp] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [bigint] NOT NULL,
	[permission_name] [nvarchar](1) NOT NULL,
	[description] [nvarchar](1) NOT NULL,
 CONSTRAINT [permission_permission_id_primary] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[rating_id] [bigint] NOT NULL,
	[like_number] [bigint] NOT NULL,
	[dislike_number] [bigint] NOT NULL,
 CONSTRAINT [rating_rating_id_primary] PRIMARY KEY CLUSTERED 
(
	[rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [bigint] NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [role_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_permission]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_permission](
	[role_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
 CONSTRAINT [role_permission_pk] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shelter]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shelter](
	[shelter_id] [bigint] NOT NULL,
	[animal_id] [bigint] NOT NULL,
	[shelter_category_id] [bigint] NOT NULL,
	[shelter_name] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [shelter_shelter_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterCategory]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterCategory](
	[shelter_category_id] [bigint] NOT NULL,
	[shelter_category_name] [bigint] NOT NULL,
 CONSTRAINT [sheltercategory_shelter_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterDirectionConsultation]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterDirectionConsultation](
	[consultation_id] [bigint] NOT NULL,
	[shelter_id] [bigint] NOT NULL,
	[direction_advice] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [shelterdirectionconsultation_consultation_id_primary] PRIMARY KEY CLUSTERED 
(
	[consultation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterImage]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterImage](
	[shelter_image_id] [bigint] NOT NULL,
	[shelter_id] [bigint] NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [shelterimage_shelter_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tag_id] [bigint] NOT NULL,
	[title] [varchar](75) NOT NULL,
	[metaTitle] [varchar](100) NULL,
	[slug] [varchar](100) NULL,
	[content] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [bigint] NOT NULL,
	[blog_id] [bigint] NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[email] [nvarchar](1) NOT NULL,
	[phone_number] [nvarchar](1) NOT NULL,
	[gender] [bit] NOT NULL,
	[avatar] [nvarchar](1) NOT NULL,
	[dob] [date] NOT NULL,
	[code] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [user_user_id_primary] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLifeConsultation]    Script Date: 12/09/2024 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLifeConsultation](
	[consultation_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[life_advice] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [userlifeconsultation_consultation_id_primary] PRIMARY KEY CLUSTERED 
(
	[consultation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [animal_animal_category_id_foreign] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[AnimalCategory] ([animal_category_id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [animal_animal_category_id_foreign]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [animal_color_id_foreign] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([color_id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [animal_color_id_foreign]
GO
ALTER TABLE [dbo].[Animal_Shelter]  WITH CHECK ADD  CONSTRAINT [animal_shelter_animal_id_foreign] FOREIGN KEY([animal_id])
REFERENCES [dbo].[Animal] ([animal_id])
GO
ALTER TABLE [dbo].[Animal_Shelter] CHECK CONSTRAINT [animal_shelter_animal_id_foreign]
GO
ALTER TABLE [dbo].[Animal_Shelter]  WITH CHECK ADD  CONSTRAINT [animal_shelter_shelter_id_foreign] FOREIGN KEY([shelter_id])
REFERENCES [dbo].[Shelter] ([shelter_id])
GO
ALTER TABLE [dbo].[Animal_Shelter] CHECK CONSTRAINT [animal_shelter_shelter_id_foreign]
GO
ALTER TABLE [dbo].[AnimalCategory]  WITH CHECK ADD  CONSTRAINT [animalcategory_enviroment_id_foreign] FOREIGN KEY([enviroment_id])
REFERENCES [dbo].[Enviroment] ([eviroment_id])
GO
ALTER TABLE [dbo].[AnimalCategory] CHECK CONSTRAINT [animalcategory_enviroment_id_foreign]
GO
ALTER TABLE [dbo].[AnimalConsultation]  WITH CHECK ADD  CONSTRAINT [animalconsultation_animal_id_foreign] FOREIGN KEY([animal_id])
REFERENCES [dbo].[Animal] ([animal_id])
GO
ALTER TABLE [dbo].[AnimalConsultation] CHECK CONSTRAINT [animalconsultation_animal_id_foreign]
GO
ALTER TABLE [dbo].[AnimalConsultation]  WITH CHECK ADD  CONSTRAINT [animalconsultation_color_id_foreign] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([color_id])
GO
ALTER TABLE [dbo].[AnimalConsultation] CHECK CONSTRAINT [animalconsultation_color_id_foreign]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [blog_blog_category_id_foreign] FOREIGN KEY([blog_category_id])
REFERENCES [dbo].[BlogCategory] ([blog_category_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [blog_blog_category_id_foreign]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [blog_comment_id_foreign] FOREIGN KEY([comment_id])
REFERENCES [dbo].[Comment] ([commentId])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [blog_comment_id_foreign]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [blog_rating_id_foreign] FOREIGN KEY([rating_id])
REFERENCES [dbo].[Rating] ([rating_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [blog_rating_id_foreign]
GO
ALTER TABLE [dbo].[Blog_Tag]  WITH CHECK ADD FOREIGN KEY([tag_id])
REFERENCES [dbo].[Tag] ([tag_id])
GO
ALTER TABLE [dbo].[Blog_Tag]  WITH CHECK ADD  CONSTRAINT [FK_BlogTag_Blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[Blog_Tag] CHECK CONSTRAINT [FK_BlogTag_Blog]
GO
ALTER TABLE [dbo].[Blog_Tag]  WITH CHECK ADD  CONSTRAINT [FK_BlogTag_Tag] FOREIGN KEY([tag_id])
REFERENCES [dbo].[Tag] ([tag_id])
GO
ALTER TABLE [dbo].[Blog_Tag] CHECK CONSTRAINT [FK_BlogTag_Tag]
GO
ALTER TABLE [dbo].[BlogImage]  WITH CHECK ADD  CONSTRAINT [FK_BlogImage_Blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[BlogImage] CHECK CONSTRAINT [FK_BlogImage_Blog]
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD FOREIGN KEY([animal_id])
REFERENCES [dbo].[Animal] ([animal_id])
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[role_permission]  WITH CHECK ADD  CONSTRAINT [FK_role_permission_Permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_permission] CHECK CONSTRAINT [FK_role_permission_Permission]
GO
ALTER TABLE [dbo].[role_permission]  WITH CHECK ADD  CONSTRAINT [FK_role_permission_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_permission] CHECK CONSTRAINT [FK_role_permission_Role]
GO
ALTER TABLE [dbo].[Shelter]  WITH CHECK ADD  CONSTRAINT [shelter_shelter_category_id_foreign] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[ShelterCategory] ([shelter_category_id])
GO
ALTER TABLE [dbo].[Shelter] CHECK CONSTRAINT [shelter_shelter_category_id_foreign]
GO
ALTER TABLE [dbo].[ShelterDirectionConsultation]  WITH CHECK ADD  CONSTRAINT [shelterdirectionconsultation_shelter_id_foreign] FOREIGN KEY([shelter_id])
REFERENCES [dbo].[Shelter] ([shelter_id])
GO
ALTER TABLE [dbo].[ShelterDirectionConsultation] CHECK CONSTRAINT [shelterdirectionconsultation_shelter_id_foreign]
GO
ALTER TABLE [dbo].[ShelterImage]  WITH CHECK ADD  CONSTRAINT [shelterimage_shelter_id_foreign] FOREIGN KEY([shelter_id])
REFERENCES [dbo].[Shelter] ([shelter_id])
GO
ALTER TABLE [dbo].[ShelterImage] CHECK CONSTRAINT [shelterimage_shelter_id_foreign]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [user_blog_id_foreign] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [user_blog_id_foreign]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [user_role_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [user_role_role_id_foreign]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [user_role_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [user_role_user_id_foreign]
GO
ALTER TABLE [dbo].[UserLifeConsultation]  WITH CHECK ADD  CONSTRAINT [userlifeconsultation_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[UserLifeConsultation] CHECK CONSTRAINT [userlifeconsultation_user_id_foreign]
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD CHECK  (([element_name]='earth' OR [element_name]='fire' OR [element_name]='water' OR [element_name]='wood' OR [element_name]='metal'))
GO
