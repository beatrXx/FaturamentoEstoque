USE master
GO

CREATE DATABASE cadastro
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC cadastro.dbo.sp_fulltext_database @action = 'enable'
end
GO

ALTER DATABASE cadastro SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE cadastro SET ANSI_NULLS OFF 
GO

ALTER DATABASE cadastro SET ANSI_PADDING OFF 
GO

ALTER DATABASE cadastro SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE cadastro SET ARITHABORT OFF 
GO

ALTER DATABASE cadastro SET AUTO_CLOSE OFF 
GO

ALTER DATABASE cadastro SET AUTO_SHRINK OFF 
GO

ALTER DATABASE cadastro SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE cadastro SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE cadastro SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE cadastro SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE cadastro SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE cadastro SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE cadastro SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE cadastro SET  DISABLE_BROKER 
GO

ALTER DATABASE cadastro SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE cadastro SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE cadastro SET TRUSTWORTHY OFF 
GO

ALTER DATABASE cadastro SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE cadastro SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE cadastro SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE cadastro SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE cadastro SET RECOVERY SIMPLE 
GO

ALTER DATABASE cadastro SET  MULTI_USER 
GO

ALTER DATABASE cadastro SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE cadastro SET DB_CHAINING OFF 
GO

ALTER DATABASE cadastro SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE cadastro SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE cadastro SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE cadastro SET QUERY_STORE = OFF
GO

ALTER DATABASE cadastro SET  READ_WRITE 
GO

USE cadastro
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Fornecedor(
	idFornecedor int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nome varchar(50) NOT NULL,
 )

USE cadastro
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Produtos(
	codigo int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nome varchar(50) NOT NULL,
	DataCriacao date NOT NULL,
	Preço real NOT NULL,
	Modelo varchar(30) NULL,
	Quantidade int NULL,
	Especificações ntext NULL,
	Nacional bit NULL,
	idFornecedor int NULL,
)

ALTER TABLE Produtos  WITH CHECK ADD  CONSTRAINT FK_Fornecedor_Produtos FOREIGN KEY(idFornecedor)
REFERENCES Fornecedor (idFornecedor)
GO

ALTER TABLE Produtos CHECK CONSTRAINT FK_Fornecedor_Produtos
GO

USE cadastro
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Pedidos(
	CodigoPedido int IDENTITY(1,1) NOT NULL,
	codigo int NOT NULL,
	QuantidadeProduto int NOT NULL
)
GO

ALTER TABLE Pedidos  WITH CHECK ADD  CONSTRAINT FK_Produtos_Pedidos FOREIGN KEY(codigo)
REFERENCES Produtos (codigo)
GO

ALTER TABLE Pedidos CHECK CONSTRAINT FK_Produtos_Pedidos
GO
