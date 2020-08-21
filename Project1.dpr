program Project1;

uses
  Vcl.Forms,
  UDM in 'UDM.pas' {DM},
  UTelaBase in 'UTelaBase.pas' {TelaBase: elaBase},
  UProdutos in 'UProdutos.pas' {FProdutos},
  UFornecedor in 'UFornecedor.pas' {FFornecedor},
  UUsuario in 'UUsuario.pas' {FUsuario},
  CadastroTelas in 'CadastroTelas.pas' {TelaBase1},
  AcessoUsuario in 'AcessoUsuario.pas' {TelaBase2},
  UDirecionadorr in 'UDirecionadorr.pas' {FDirecionado},
  ULogin in 'ULogin.pas' {Form1},
  UCliente in 'UCliente.pas' {TelaBase3},
  UProdutosC in 'UProdutosC.pas' {TelaBase4},
  UPedidosVendas in 'UPedidosVendas.pas' {TelaBase5},
  UEstoque in 'UEstoque.pas' {TelaBase6},
  UFaturamento in 'UFaturamento.pas' {TelaBase7},
  UFI in 'UFI.pas' {TelaBase8},
  UItemPedido in 'UItemPedido.pas' {TelaBase9},
  UEstoque2 in 'UEstoque2.pas' {TelaBase10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TDirecionador, Direcionador);
  //Application.CreateForm(TFDirecionado, FDirecionado);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
