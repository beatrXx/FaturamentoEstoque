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

