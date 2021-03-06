USE [master]
GO
/****** Object:  Database [Poprijenok_Borisov]    Script Date: 10.05.2022 23:06:14 ******/
CREATE DATABASE [Poprijenok_Borisov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Poprijenok_Borisov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Poprijenok_Borisov.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Poprijenok_Borisov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Poprijenok_Borisov_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Poprijenok_Borisov] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Poprijenok_Borisov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Poprijenok_Borisov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Poprijenok_Borisov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Poprijenok_Borisov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Poprijenok_Borisov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Poprijenok_Borisov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Poprijenok_Borisov] SET  MULTI_USER 
GO
ALTER DATABASE [Poprijenok_Borisov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Poprijenok_Borisov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Poprijenok_Borisov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Poprijenok_Borisov] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Poprijenok_Borisov]
GO
/****** Object:  Table [dbo].[Agent_address]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_address](
	[Agent_ID] [int] NOT NULL,
	[index] [nvarchar](max) NOT NULL,
	[region] [nvarchar](max) NOT NULL,
	[city] [nvarchar](max) NOT NULL,
	[street] [nvarchar](max) NOT NULL,
	[frame] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Agent_address] PRIMARY KEY CLUSTERED 
(
	[Agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agent_release_history]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_release_history](
	[release_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[product_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Agent_release_history] PRIMARY KEY CLUSTERED 
(
	[release_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[agent_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_type_ID] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[logo] [nvarchar](max) NULL,
	[priority] [int] NOT NULL,
	[director_surname] [nvarchar](max) NOT NULL,
	[director_name] [nvarchar](max) NOT NULL,
	[director_patronymic] [nvarchar](max) NULL,
	[INN] [nvarchar](max) NOT NULL,
	[KPP] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Агенты] PRIMARY KEY CLUSTERED 
(
	[agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents_type]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents_type](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Agents_type] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cex]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cex](
	[cex_num_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cex_1] PRIMARY KEY CLUSTERED 
(
	[cex_num_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cex_empolyees]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cex_empolyees](
	[cex_num_ID] [int] NOT NULL,
	[employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Cex] PRIMARY KEY CLUSTERED 
(
	[cex_num_ID] ASC,
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_pasport]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_pasport](
	[employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[patronymic] [nvarchar](max) NULL,
	[surname] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[birthday] [date] NOT NULL,
	[date_of_issue] [date] NOT NULL,
	[issued_by] [nvarchar](max) NOT NULL,
	[department_code] [nvarchar](max) NOT NULL,
	[series] [int] NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_Employee_pasport] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[employee_ID] [int] NOT NULL,
	[bank_details] [nvarchar](max) NOT NULL,
	[is_have_family] [bit] NOT NULL,
	[health_problems] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employes] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipment_ID] [int] IDENTITY(1,1) NOT NULL,
	[qty] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment_of_employee]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment_of_employee](
	[equipment_ID] [int] NOT NULL,
	[employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Equipment_of_employee] PRIMARY KEY CLUSTERED 
(
	[equipment_ID] ASC,
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material_type]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_type](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_material_type] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[material_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[material_type_ID] [int] NOT NULL,
	[qty_in_package] [int] NOT NULL,
	[unit] [nvarchar](max) NOT NULL,
	[qty_in_storage] [int] NOT NULL,
	[minimal_qty] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_history]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_history](
	[material_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Materials_history] PRIMARY KEY CLUSTERED 
(
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials_need_to_create_poduct]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials_need_to_create_poduct](
	[product_ID] [int] NOT NULL,
	[material_ID] [int] NOT NULL,
 CONSTRAINT [PK_materials_need_to_create_poduct] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC,
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minimal_price_history_change]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minimal_price_history_change](
	[agent_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Minimal_price_history_change] PRIMARY KEY CLUSTERED 
(
	[agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[product_ID] [int] NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority_history]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority_history](
	[history_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Priority_history] PRIMARY KEY CLUSTERED 
(
	[history_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_info]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_info](
	[product_ID] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[weight_neto] [nvarchar](max) NOT NULL,
	[weight_with_neto] [nvarchar](max) NOT NULL,
	[sertificate] [nvarchar](max) NULL,
	[standart_type_ID] [int] NOT NULL,
	[product_image] [nvarchar](max) NULL,
	[time_to_create] [varbinary](max) NOT NULL,
	[cost_price] [money] NOT NULL,
 CONSTRAINT [PK_Product_info] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_sale]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_sale](
	[product_sale_ID] [int] IDENTITY(1,1) NOT NULL,
	[product_ID] [int] NOT NULL,
	[agent_ID] [int] NOT NULL,
	[release_date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Product_sale] PRIMARY KEY CLUSTERED 
(
	[product_sale_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_size]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_size](
	[product_ID] [int] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[lenght] [float] NOT NULL,
 CONSTRAINT [PK_Product_size] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type](
	[product_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product_type] PRIMARY KEY CLUSTERED 
(
	[product_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[product_type_ID] [int] NOT NULL,
	[articul] [int] NOT NULL,
	[peoples_need_to_create] [int] NOT NULL,
	[cex_num_ID] [int] NOT NULL,
	[minimal_price] [money] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standart_types]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standart_types](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Standart_types] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_type]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_type](
	[supplier_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Supplier_type] PRIMARY KEY CLUSTERED 
(
	[supplier_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplier_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[INN] [nvarchar](max) NOT NULL,
	[supplier_type_ID] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply_history]    Script Date: 10.05.2022 23:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply_history](
	[supplier_ID] [int] NOT NULL,
	[material_ID] [int] NOT NULL,
 CONSTRAINT [PK_Supply_history] PRIMARY KEY CLUSTERED 
(
	[supplier_ID] ASC,
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agent_address]  WITH CHECK ADD  CONSTRAINT [FK_Agent_address_Agents] FOREIGN KEY([Agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Agent_address] CHECK CONSTRAINT [FK_Agent_address_Agents]
GO
ALTER TABLE [dbo].[Agent_release_history]  WITH CHECK ADD  CONSTRAINT [FK_Agent_release_history_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Agent_release_history] CHECK CONSTRAINT [FK_Agent_release_history_Agents]
GO
ALTER TABLE [dbo].[Agent_release_history]  WITH CHECK ADD  CONSTRAINT [FK_Agent_release_history_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Agent_release_history] CHECK CONSTRAINT [FK_Agent_release_history_Products]
GO
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_Agents_type] FOREIGN KEY([agent_type_ID])
REFERENCES [dbo].[Agents_type] ([type_ID])
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_Agents_type]
GO
ALTER TABLE [dbo].[Cex_empolyees]  WITH CHECK ADD  CONSTRAINT [FK_Cex_Employes] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employes] ([employee_ID])
GO
ALTER TABLE [dbo].[Cex_empolyees] CHECK CONSTRAINT [FK_Cex_Employes]
GO
ALTER TABLE [dbo].[Cex_empolyees]  WITH CHECK ADD  CONSTRAINT [FK_Cex_empolyees_Cex] FOREIGN KEY([cex_num_ID])
REFERENCES [dbo].[Cex] ([cex_num_ID])
GO
ALTER TABLE [dbo].[Cex_empolyees] CHECK CONSTRAINT [FK_Cex_empolyees_Cex]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Employee_pasport] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employee_pasport] ([employee_ID])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Employee_pasport]
GO
ALTER TABLE [dbo].[Equipment_of_employee]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_of_employee_Employes] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employes] ([employee_ID])
GO
ALTER TABLE [dbo].[Equipment_of_employee] CHECK CONSTRAINT [FK_Equipment_of_employee_Employes]
GO
ALTER TABLE [dbo].[Equipment_of_employee]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_of_employee_Equipment] FOREIGN KEY([equipment_ID])
REFERENCES [dbo].[Equipment] ([equipment_ID])
GO
ALTER TABLE [dbo].[Equipment_of_employee] CHECK CONSTRAINT [FK_Equipment_of_employee_Equipment]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_material_type] FOREIGN KEY([material_type_ID])
REFERENCES [dbo].[material_type] ([type_ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_material_type]
GO
ALTER TABLE [dbo].[Materials_history]  WITH CHECK ADD  CONSTRAINT [FK_Materials_history_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[Materials_history] CHECK CONSTRAINT [FK_Materials_history_Materials]
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct]  WITH CHECK ADD  CONSTRAINT [FK_materials_need_to_create_poduct_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct] CHECK CONSTRAINT [FK_materials_need_to_create_poduct_Materials]
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct]  WITH CHECK ADD  CONSTRAINT [FK_materials_need_to_create_poduct_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct] CHECK CONSTRAINT [FK_materials_need_to_create_poduct_Products]
GO
ALTER TABLE [dbo].[Minimal_price_history_change]  WITH CHECK ADD  CONSTRAINT [FK_Minimal_price_history_change_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Minimal_price_history_change] CHECK CONSTRAINT [FK_Minimal_price_history_change_Agents]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Agents]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Priority_history]  WITH CHECK ADD  CONSTRAINT [FK_Priority_history_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Priority_history] CHECK CONSTRAINT [FK_Priority_history_Agents]
GO
ALTER TABLE [dbo].[Product_info]  WITH CHECK ADD  CONSTRAINT [FK_Product_info_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_info] CHECK CONSTRAINT [FK_Product_info_Products]
GO
ALTER TABLE [dbo].[Product_info]  WITH CHECK ADD  CONSTRAINT [FK_Product_info_Standart_types] FOREIGN KEY([standart_type_ID])
REFERENCES [dbo].[Standart_types] ([type_ID])
GO
ALTER TABLE [dbo].[Product_info] CHECK CONSTRAINT [FK_Product_info_Standart_types]
GO
ALTER TABLE [dbo].[Product_sale]  WITH CHECK ADD  CONSTRAINT [FK_Product_sale_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Product_sale] CHECK CONSTRAINT [FK_Product_sale_Agents]
GO
ALTER TABLE [dbo].[Product_sale]  WITH CHECK ADD  CONSTRAINT [FK_Product_sale_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_sale] CHECK CONSTRAINT [FK_Product_sale_Products]
GO
ALTER TABLE [dbo].[Product_size]  WITH CHECK ADD  CONSTRAINT [FK_Product_size_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_size] CHECK CONSTRAINT [FK_Product_size_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Cex] FOREIGN KEY([cex_num_ID])
REFERENCES [dbo].[Cex] ([cex_num_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Cex]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Product_type] FOREIGN KEY([product_type_ID])
REFERENCES [dbo].[Product_type] ([product_type_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Product_type]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Supplier_type] FOREIGN KEY([supplier_type_ID])
REFERENCES [dbo].[Supplier_type] ([supplier_type_ID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Supplier_type]
GO
ALTER TABLE [dbo].[Supply_history]  WITH CHECK ADD  CONSTRAINT [FK_Supply_history_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[Supply_history] CHECK CONSTRAINT [FK_Supply_history_Materials]
GO
ALTER TABLE [dbo].[Supply_history]  WITH CHECK ADD  CONSTRAINT [FK_Supply_history_Suppliers] FOREIGN KEY([supplier_ID])
REFERENCES [dbo].[Suppliers] ([supplier_ID])
GO
ALTER TABLE [dbo].[Supply_history] CHECK CONSTRAINT [FK_Supply_history_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [Poprijenok_Borisov] SET  READ_WRITE 
GO
