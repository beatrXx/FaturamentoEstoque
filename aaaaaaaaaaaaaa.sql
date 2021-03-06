USE [master]
GO
/****** Object:  Database [cadastro]    Script Date: 21/08/2020 11:23:20 ******/
CREATE DATABASE [cadastro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cadastro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\cadastro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cadastro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\cadastro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cadastro] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cadastro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cadastro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cadastro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cadastro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cadastro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cadastro] SET ARITHABORT OFF 
GO
ALTER DATABASE [cadastro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cadastro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cadastro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cadastro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cadastro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cadastro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cadastro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cadastro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cadastro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cadastro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cadastro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cadastro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cadastro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cadastro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cadastro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cadastro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cadastro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cadastro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cadastro] SET  MULTI_USER 
GO
ALTER DATABASE [cadastro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cadastro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cadastro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cadastro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cadastro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cadastro] SET QUERY_STORE = OFF
GO
USE [cadastro]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nomeCliente] [varchar](50) NOT NULL,
	[cnpj] [varchar](100) NULL,
	[dtNascimento] [date] NOT NULL,
	[endereco] [varchar](500) NOT NULL,
	[cep] [varchar](100) NOT NULL,
	[numero] [int] NOT NULL,
	[complemento] [varchar](500) NOT NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradasEstoque]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradasEstoque](
	[idEntrada] [int] IDENTITY(1,1) NOT NULL,
	[idProduto] [int] NOT NULL,
	[dataEntrada] [date] NOT NULL,
	[quantidade] [int] NOT NULL,
 CONSTRAINT [PK_EntradasEstoque] PRIMARY KEY CLUSTERED 
(
	[idEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faturamento]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faturamento](
	[idFaturamento] [int] IDENTITY(1,1) NOT NULL,
	[dataFaturamento] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_Faturamento] PRIMARY KEY CLUSTERED 
(
	[idFaturamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaturamentoItem]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaturamentoItem](
	[idFaturamento] [int] NOT NULL,
	[idProduto] [int] NOT NULL,
	[idPedido] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[idFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[parametro] [int] NOT NULL,
	[valor] [int] NOT NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[parametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[CodigoPedido] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [int] NOT NULL,
	[QuantidadeProduto] [int] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[CodigoPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidosC]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosC](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[dtCadastro] [date] NOT NULL,
	[dtPrevistaEntrega] [date] NOT NULL,
 CONSTRAINT [PK_PedidosC] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[DataCriacao] [date] NOT NULL,
	[Preço] [real] NOT NULL,
	[Modelo] [varchar](30) NULL,
	[Quantidade] [int] NULL,
	[Especificações] [ntext] NULL,
	[Nacional] [bit] NULL,
	[idFornecedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutosC]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutosC](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[Produto] [varchar](50) NOT NULL,
	[Valor] [float] NOT NULL,
	[qtdeEstoque] [int] NULL,
	[codigoBarras] [varchar](200) NOT NULL,
 CONSTRAINT [PK_ProdutosC] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tela]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tela](
	[idTela] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrição] [text] NULL,
 CONSTRAINT [PK_Tela] PRIMARY KEY CLUSTERED 
(
	[idTela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Senha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Tela]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Tela](
	[idUsuario] [int] NOT NULL,
	[idTela] [int] NOT NULL,
	[inserir] [bit] NULL,
	[alterar] [bit] NULL,
	[excluir] [bit] NULL,
	[imprimir] [bit] NULL,
 CONSTRAINT [PK_Usuario_Tela] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idTela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendasProdutos]    Script Date: 21/08/2020 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendasProdutos](
	[idPedido] [int] NOT NULL,
	[idProduto] [int] NOT NULL,
	[Quantidade] [int] NULL,
 CONSTRAINT [PK_VendasProdutos] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC,
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntradasEstoque]  WITH CHECK ADD  CONSTRAINT [FK_EntradasEstoque_ProdutosC] FOREIGN KEY([idProduto])
REFERENCES [dbo].[ProdutosC] ([idProduto])
GO
ALTER TABLE [dbo].[EntradasEstoque] CHECK CONSTRAINT [FK_EntradasEstoque_ProdutosC]
GO
ALTER TABLE [dbo].[Faturamento]  WITH CHECK ADD  CONSTRAINT [FK_Faturamento_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Faturamento] CHECK CONSTRAINT [FK_Faturamento_Cliente]
GO
ALTER TABLE [dbo].[FaturamentoItem]  WITH CHECK ADD  CONSTRAINT [FK_FaturamentoItem_Faturamento] FOREIGN KEY([idFaturamento])
REFERENCES [dbo].[Faturamento] ([idFaturamento])
GO
ALTER TABLE [dbo].[FaturamentoItem] CHECK CONSTRAINT [FK_FaturamentoItem_Faturamento]
GO
ALTER TABLE [dbo].[FaturamentoItem]  WITH CHECK ADD  CONSTRAINT [FK_FaturamentoItem_VendasProdutos] FOREIGN KEY([idPedido], [idProduto])
REFERENCES [dbo].[VendasProdutos] ([idPedido], [idProduto])
GO
ALTER TABLE [dbo].[FaturamentoItem] CHECK CONSTRAINT [FK_FaturamentoItem_VendasProdutos]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_Pedidos] FOREIGN KEY([codigo])
REFERENCES [dbo].[Produtos] ([codigo])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Produtos_Pedidos]
GO
ALTER TABLE [dbo].[PedidosC]  WITH CHECK ADD  CONSTRAINT [FK_PedidosC_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[PedidosC] CHECK CONSTRAINT [FK_PedidosC_Cliente]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Fornecedor_Produtos] FOREIGN KEY([idFornecedor])
REFERENCES [dbo].[Fornecedor] ([idFornecedor])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Fornecedor_Produtos]
GO
ALTER TABLE [dbo].[Usuario_Tela]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tela_Tela] FOREIGN KEY([idTela])
REFERENCES [dbo].[Tela] ([idTela])
GO
ALTER TABLE [dbo].[Usuario_Tela] CHECK CONSTRAINT [FK_Usuario_Tela_Tela]
GO
ALTER TABLE [dbo].[Usuario_Tela]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tela_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuario_Tela] CHECK CONSTRAINT [FK_Usuario_Tela_Usuario]
GO
ALTER TABLE [dbo].[VendasProdutos]  WITH CHECK ADD  CONSTRAINT [FK_VendasProdutos_PedidosC] FOREIGN KEY([idPedido])
REFERENCES [dbo].[PedidosC] ([idPedido])
GO
ALTER TABLE [dbo].[VendasProdutos] CHECK CONSTRAINT [FK_VendasProdutos_PedidosC]
GO
ALTER TABLE [dbo].[VendasProdutos]  WITH CHECK ADD  CONSTRAINT [FK_VendasProdutos_ProdutosC] FOREIGN KEY([idProduto])
REFERENCES [dbo].[ProdutosC] ([idProduto])
GO
ALTER TABLE [dbo].[VendasProdutos] CHECK CONSTRAINT [FK_VendasProdutos_ProdutosC]
GO
USE [master]
GO
ALTER DATABASE [cadastro] SET  READ_WRITE 
GO
