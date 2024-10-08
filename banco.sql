USE [master]
GO
/****** Object:  Database [EmprestimoLivros]    Script Date: 03/10/2024 10:21:45 ******/
CREATE DATABASE [EmprestimoLivros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmprestimoLivros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EmprestimoLivros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmprestimoLivros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EmprestimoLivros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EmprestimoLivros] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmprestimoLivros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmprestimoLivros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmprestimoLivros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmprestimoLivros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmprestimoLivros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmprestimoLivros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET RECOVERY FULL 
GO
ALTER DATABASE [EmprestimoLivros] SET  MULTI_USER 
GO
ALTER DATABASE [EmprestimoLivros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmprestimoLivros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmprestimoLivros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmprestimoLivros] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmprestimoLivros] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmprestimoLivros] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmprestimoLivros', N'ON'
GO
ALTER DATABASE [EmprestimoLivros] SET QUERY_STORE = ON
GO
ALTER DATABASE [EmprestimoLivros] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EmprestimoLivros]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 03/10/2024 10:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autor](
	[codigo_autor] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](40) NULL,
	[sexo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emprestimo]    Script Date: 03/10/2024 10:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emprestimo](
	[codigo_emprestimo] [int] IDENTITY(1,1) NOT NULL,
	[data_emprestimo] [datetime] NULL,
	[data_devolucao] [datetime] NULL,
	[quantidade_livro] [int] NULL,
	[codigo_usuario] [int] NULL,
	[codigo_livro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_emprestimo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[livro]    Script Date: 03/10/2024 10:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[livro](
	[codigo_livro] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](60) NULL,
	[paginas] [int] NULL,
	[categoria] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_livro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 03/10/2024 10:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[codigo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](40) NULL,
	[idade] [int] NULL,
	[sexo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[emprestimo]  WITH CHECK ADD  CONSTRAINT [fk_codigo_kivro] FOREIGN KEY([codigo_livro])
REFERENCES [dbo].[livro] ([codigo_livro])
GO
ALTER TABLE [dbo].[emprestimo] CHECK CONSTRAINT [fk_codigo_kivro]
GO
ALTER TABLE [dbo].[emprestimo]  WITH CHECK ADD  CONSTRAINT [fk_codigo_usuario] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[usuario] ([codigo_usuario])
GO
ALTER TABLE [dbo].[emprestimo] CHECK CONSTRAINT [fk_codigo_usuario]
GO
USE [master]
GO
ALTER DATABASE [EmprestimoLivros] SET  READ_WRITE 
GO
