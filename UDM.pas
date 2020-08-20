unit UDM;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    conexaoBanco: TADOConnection;
    queryProduto: TADOQuery;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    cdsProdutocodigo: TAutoIncField;
    cdsProdutoNome: TStringField;
    cdsProdutoDataCriacao: TDateField;
    cdsProdutoPreço: TFloatField;
    cdsProdutoModelo: TStringField;
    cdsProdutoQuantidade: TIntegerField;
    cdsProdutoEspecificações: TWideMemoField;
    cdsProdutoNacional: TBooleanField;
    cdsProdutoidFornecedor: TIntegerField;
    queryFornecedor: TADOQuery;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    queryPedido: TADOQuery;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoCodigoPedido: TAutoIncField;
    cdsPedidocodigo: TIntegerField;
    cdsPedidoQuantidadeProduto: TIntegerField;
    cdsFornecedoridFornecedor: TAutoIncField;
    cdsFornecedornome: TStringField;
    dsFornecedor: TDataSource;
    dsPedido: TDataSource;
    queryUsuario: TADOQuery;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuarioidUsuario: TAutoIncField;
    cdsUsuarionome: TStringField;
    cdsUsuariosenha: TStringField;
    queryTela: TADOQuery;
    queryUsuTela: TADOQuery;
    dspTela: TDataSetProvider;
    cdsTela: TClientDataSet;
    dspUsuTela: TDataSetProvider;
    cdsUsuTela: TClientDataSet;
    cdsTelaidTela: TAutoIncField;
    cdsTelaNome: TStringField;
    cdsTelaDescrição: TMemoField;
    cdsUsuTelaidUsuario: TIntegerField;
    cdsUsuTelaidTela: TIntegerField;
    cdsUsuTelainserir: TBooleanField;
    cdsUsuTelaalterar: TBooleanField;
    cdsUsuTelaexcluir: TBooleanField;
    cdsUsuTelaimprimir: TBooleanField;
    queryCliente: TADOQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    queryProdutosC: TADOQuery;
    dspProdutosC: TDataSetProvider;
    cdsProdutosC: TClientDataSet;
    queryPedidosC: TADOQuery;
    dspPedidosC: TDataSetProvider;
    cdsPedidosC: TClientDataSet;
    queryVendasProdutos: TADOQuery;
    dspVendasProdutos: TDataSetProvider;
    cdsVendasProdutos: TClientDataSet;
    cdsClienteidCliente: TAutoIncField;
    cdsClientenomeCliente: TStringField;
    cdsClientecnpj: TStringField;
    cdsClientedtNascimento: TDateField;
    cdsClienteendereco: TStringField;
    cdsClientecep: TStringField;
    cdsClientenumero: TIntegerField;
    cdsClientecomplemento: TStringField;
    cdsClienteemail: TStringField;
    cdsProdutosCidProduto: TAutoIncField;
    cdsProdutosCProduto: TStringField;
    cdsProdutosCValor: TFloatField;
    cdsProdutosCqtdeEstoque: TIntegerField;
    cdsProdutosCcodigoBarras: TStringField;
    cdsPedidosCidPedido: TAutoIncField;
    cdsPedidosCidCliente: TIntegerField;
    cdsPedidosCdtCadastro: TDateField;
    cdsPedidosCdtPrevistaEntrega: TDateField;
    queryEstoque: TADOQuery;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    cdsEstoqueidEntrada: TAutoIncField;
    cdsEstoqueidProduto: TIntegerField;
    cdsEstoquedataEntrada: TDateField;
    cdsEstoquequantidade: TIntegerField;
    queryFaturamento: TADOQuery;
    dspFaturamento: TDataSetProvider;
    cdsFaturamento: TClientDataSet;
    queryFI: TADOQuery;
    dspFI: TDataSetProvider;
    cdsFI: TClientDataSet;
    cdsFaturamentoidFaturamento: TIntegerField;
    cdsFaturamentodataFaturamento: TDateField;
    cdsFaturamentoidCliente: TIntegerField;
    cdsFIidFaturamento: TIntegerField;
    cdsFIidProduto: TIntegerField;
    cdsFIidPedido: TIntegerField;
    queryP: TADOQuery;
    dspP: TDataSetProvider;
    cdsP: TClientDataSet;
    cdsPidPedido: TAutoIncField;
    cdsPidCliente: TIntegerField;
    cdsPdtCadastro: TDateField;
    cdsPdtPrevistaEntrega: TDateField;
    cdsVendasProdutosidPedido: TIntegerField;
    cdsVendasProdutosidProduto: TIntegerField;
    cdsVendasProdutosQuantidade: TIntegerField;
    queryVP: TADOQuery;
    dspVP: TDataSetProvider;
    cdsVP: TClientDataSet;
    cdsVPidPedido: TIntegerField;
    cdsVPidProduto: TIntegerField;
    cdsVPQuantidade: TIntegerField;
    queryProd: TADOQuery;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    cdsProdidPedido: TIntegerField;
    cdsProdidProduto: TIntegerField;
    cdsProdQuantidade: TIntegerField;
    procedure cdsProdutoAfterDelete(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsProdutoAfterCancel(DataSet: TDataSet);
    procedure cdsProdutoAfterInsert(DataSet: TDataSet);
    procedure conexaoBancoBeforeConnect(Sender: TObject);
    procedure cdsPedidoAfterCancel(DataSet: TDataSet);
    procedure cdsPedidoAfterPost(DataSet: TDataSet);
    procedure cdsPedidoAfterDelete(DataSet: TDataSet);
    procedure queryPedidoBeforeOpen(DataSet: TDataSet);
    procedure cdsProdutoAfterScroll(DataSet: TDataSet);
    procedure cdsFornecedorAfterCancel(DataSet: TDataSet);
    procedure cdsFornecedorAfterDelete(DataSet: TDataSet);
    procedure cdsFornecedorAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioAfterCancel(DataSet: TDataSet);
    procedure cdsUsuarioAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioAfterDelete(DataSet: TDataSet);
    procedure cdsTelaAfterCancel(DataSet: TDataSet);
    procedure cdsTelaAfterDelete(DataSet: TDataSet);
    procedure cdsTelaAfterPost(DataSet: TDataSet);
    procedure cdsUsuTelaAfterCancel(DataSet: TDataSet);
    procedure cdsUsuTelaAfterDelete(DataSet: TDataSet);
    procedure cdsUsuTelaAfterPost(DataSet: TDataSet);
    procedure cdsClienteAfterCancel(DataSet: TDataSet);
    procedure cdsClienteAfterDelete(DataSet: TDataSet);
    procedure cdsClienteAfterPost(DataSet: TDataSet);
    procedure cdsProdutosCAfterCancel(DataSet: TDataSet);
    procedure cdsProdutosCAfterDelete(DataSet: TDataSet);
    procedure cdsProdutosCAfterPost(DataSet: TDataSet);
    procedure cdsPedidosCAfterCancel(DataSet: TDataSet);
    procedure cdsPedidosCAfterDelete(DataSet: TDataSet);
    procedure cdsPedidosCAfterPost(DataSet: TDataSet);
    procedure cdsVendasProdutosAfterCancel(DataSet: TDataSet);
    procedure cdsVendasProdutosAfterDelete(DataSet: TDataSet);
    procedure cdsVendasProdutosAfterPost(DataSet: TDataSet);
    procedure cdsEstoqueAfterCancel(DataSet: TDataSet);
    procedure cdsEstoqueAfterDelete(DataSet: TDataSet);
    procedure cdsEstoqueAfterPost(DataSet: TDataSet);
    procedure cdsFaturamentoAfterCancel(DataSet: TDataSet);
    procedure cdsFaturamentoAfterDelete(DataSet: TDataSet);
    procedure cdsFIAfterCancel(DataSet: TDataSet);
    procedure cdsFIAfterDelete(DataSet: TDataSet);
    procedure cdsFIAfterPost(DataSet: TDataSet);
    procedure cdsFaturamentoAfterPost(DataSet: TDataSet);
    procedure cdsVPAfterCancel(DataSet: TDataSet);
    procedure cdsVPAfterDelete(DataSet: TDataSet);
    procedure cdsVPAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idUsuario : integer;
    usuario : string;
    NomeForm : string;
    idCliente : integer;
    idPedidoo : integer;
    idFaturamento : integer;
    idProduto : integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.cdsClienteAfterCancel(DataSet: TDataSet);
begin
 cdsCliente.CancelUpdates;
end;

procedure TDM.cdsClienteAfterDelete(DataSet: TDataSet);
begin
 cdsCliente.ApplyUpdates(-1);
end;

procedure TDM.cdsClienteAfterPost(DataSet: TDataSet);
begin
 cdsCliente.ApplyUpdates(-1);
end;

procedure TDM.cdsEstoqueAfterCancel(DataSet: TDataSet);
begin
 cdsEstoque.CancelUpdates;
end;

procedure TDM.cdsEstoqueAfterDelete(DataSet: TDataSet);
begin
 cdsEstoque.ApplyUpdates(-1);
end;

procedure TDM.cdsEstoqueAfterPost(DataSet: TDataSet);
begin
  cdsEstoque.ApplyUpdates(-1);
end;

procedure TDM.cdsFaturamentoAfterCancel(DataSet: TDataSet);
begin
 cdsFaturamento.CancelUpdates;
end;

procedure TDM.cdsFaturamentoAfterDelete(DataSet: TDataSet);
begin
 cdsFaturamento.ApplyUpdates(-1);
end;

procedure TDM.cdsFaturamentoAfterPost(DataSet: TDataSet);
begin
 cdsFaturamento.ApplyUpdates(-1);
end;

procedure TDM.cdsFIAfterCancel(DataSet: TDataSet);
begin
 cdsFI.CancelUpdates;
end;

procedure TDM.cdsFIAfterDelete(DataSet: TDataSet);
begin
  cdsFI.ApplyUpdates(-1);
end;

procedure TDM.cdsFIAfterPost(DataSet: TDataSet);
begin
  cdsFI.ApplyUpdates(-1);
end;

procedure TDM.cdsFornecedorAfterCancel(DataSet: TDataSet);
begin
  cdsFornecedor.CancelUpdates;
end;

procedure TDM.cdsFornecedorAfterDelete(DataSet: TDataSet);
begin
  cdsFornecedor.ApplyUpdates(-1);
end;

procedure TDM.cdsFornecedorAfterPost(DataSet: TDataSet);
begin
  cdsFornecedor.ApplyUpdates(-1);
end;

procedure TDM.cdsPedidoAfterCancel(DataSet: TDataSet);
begin
  cdsPedido.CancelUpdates;
end;

procedure TDM.cdsPedidoAfterDelete(DataSet: TDataSet);
begin
  cdsPedido.ApplyUpdates(-1);
end;

procedure TDM.cdsPedidoAfterPost(DataSet: TDataSet);
begin
  cdsPedido.ApplyUpdates(-1);
end;

procedure TDM.cdsPedidosCAfterCancel(DataSet: TDataSet);
begin
  cdsPedidosC.CancelUpdates;
end;

procedure TDM.cdsPedidosCAfterDelete(DataSet: TDataSet);
begin
  cdsPedidosC.ApplyUpdates(-1);
end;

procedure TDM.cdsPedidosCAfterPost(DataSet: TDataSet);
begin
  cdsPedidosC.ApplyUpdates(-1);
end;

procedure TDM.cdsProdutoAfterCancel(DataSet: TDataSet);
begin
  cdsProduto.CancelUpdates;
end;

procedure TDM.cdsProdutoAfterDelete(DataSet: TDataSet);
begin
  cdsProduto.ApplyUpdates(-1);
end;

procedure TDM.cdsProdutoAfterInsert(DataSet: TDataSet);
begin
  cdsProdutoDataCriacao.AsDateTime := Date;
  cdsProdutoPreço.AsFloat          := 0.00;
  cdsProdutoQuantidade.AsInteger   := 0;
  cdsProdutoNacional.AsBoolean     := False;
end;

procedure TDM.cdsProdutoAfterPost(DataSet: TDataSet);
begin
  cdsProduto.ApplyUpdates(-1);
end;

procedure TDM.cdsProdutoAfterScroll(DataSet: TDataSet);
begin
  queryPedido.Close;
  cdsPedido.Close;
  queryPedido.Open;
  cdsPedido.Open;
end;

procedure TDM.cdsProdutosCAfterCancel(DataSet: TDataSet);
begin
cdsProdutosC.CancelUpdates
end;

procedure TDM.cdsProdutosCAfterDelete(DataSet: TDataSet);
begin
cdsProdutosC.ApplyUpdates(-1);
end;

procedure TDM.cdsProdutosCAfterPost(DataSet: TDataSet);
begin
 cdsProdutosC.ApplyUpdates(-1);
end;

procedure TDM.cdsTelaAfterCancel(DataSet: TDataSet);
begin
 cdsTela.CancelUpdates;
end;

procedure TDM.cdsTelaAfterDelete(DataSet: TDataSet);
begin
  cdsTela.ApplyUpdates(-1);
end;

procedure TDM.cdsTelaAfterPost(DataSet: TDataSet);
begin
 cdsTela.ApplyUpdates(-1);
end;

procedure TDM.cdsUsuarioAfterCancel(DataSet: TDataSet);
begin
  cdsUsuario.CancelUpdates;
end;

procedure TDM.cdsUsuarioAfterDelete(DataSet: TDataSet);
begin
  cdsUsuario.ApplyUpdates(-1);
end;

procedure TDM.cdsUsuarioAfterPost(DataSet: TDataSet);
begin
  cdsUsuario.ApplyUpdates(-1);
end;

procedure TDM.cdsUsuTelaAfterCancel(DataSet: TDataSet);
begin
 cdsUsuTela.CancelUpdates;
end;

procedure TDM.cdsUsuTelaAfterDelete(DataSet: TDataSet);
begin
 cdsUsuTela.ApplyUpdates(-1);
end;

procedure TDM.cdsUsuTelaAfterPost(DataSet: TDataSet);
begin
  cdsUsuTela.ApplyUpdates(-1);
end;

procedure TDM.cdsVendasProdutosAfterCancel(DataSet: TDataSet);
begin
  cdsVendasProdutos.CancelUpdates;
end;

procedure TDM.cdsVendasProdutosAfterDelete(DataSet: TDataSet);
begin
  cdsVendasProdutos.ApplyUpdates(-1);
end;

procedure TDM.cdsVendasProdutosAfterPost(DataSet: TDataSet);
begin
  cdsVendasProdutos.ApplyUpdates(-1);
end;

procedure TDM.cdsVPAfterCancel(DataSet: TDataSet);
begin
 cdsVP.CancelUpdates;
end;

procedure TDM.cdsVPAfterDelete(DataSet: TDataSet);
begin
  cdsVP.ApplyUpdates(-1);
end;

procedure TDM.cdsVPAfterPost(DataSet: TDataSet);
begin
  cdsVP.ApplyUpdates(-1);
end;

procedure TDM.conexaoBancoBeforeConnect(Sender: TObject);
begin
  //conexaoBanco.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";' + 'Initial Catalog=cadastro;Data Source=.\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' + 'Workstation ID=DESKTOP-QRS1J44;Initial File Name="";Use Encryption for Data=False;Tag with column collation when possible=False;MARS Connection=False;DataTypeCompatibility=0;Trust Server Certificate=False;Application Intent=READWRITE;';
end;

procedure TDM.queryPedidoBeforeOpen(DataSet: TDataSet);
begin
  queryPedido.Parameters.ParamByName('codigo').Value := cdsProdutocodigo.AsInteger;
end;

end.
