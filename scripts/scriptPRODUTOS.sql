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

