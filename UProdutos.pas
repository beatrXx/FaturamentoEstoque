unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, UDM, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFProdutos = class(TTelaBase)
    lblCodigo: TLabel;
    dbeCodigo: TDBEdit;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    grupoDadosProduto: TGroupBox;
    lblDataCriacao: TLabel;
    dbeDataCriacao: TDBEdit;
    lblPreco: TLabel;
    dbePreco: TDBEdit;
    lblModelo: TLabel;
    dbeModelo: TDBEdit;
    lblQuantidade: TLabel;
    dbeQuantidade: TDBEdit;
    lblEspecificacoes: TLabel;
    dbeEspecificacoes: TDBMemo;
    dbeNacional: TDBCheckBox;
    grupoPedidos: TGroupBox;
    tabelaPedidos: TDBGrid;
    cbbFornecedor: TDBLookupComboBox;
    lblFornecedor: TLabel;
    btnAddPedido: TSpeedButton;
    btnDelPedido: TSpeedButton;
    quantidadeProdutosPedido: TEdit;
    lblQuantidadePedido: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddPedidoClick(Sender: TObject);
    procedure btnDelPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

procedure TFProdutos.btnAddPedidoClick(Sender: TObject);
begin
  inherited;
  if (DM.cdsProdutocodigo.AsInteger > 0) and (StrToInt(quantidadeProdutosPedido.Text) >= 0) then
  begin
    DM.cdsPedido.Append;
    DM.cdsPedidocodigo.AsInteger            := DM.cdsProdutocodigo.AsInteger;
    DM.cdsPedidoQuantidadeProduto.AsInteger := StrToInt(quantidadeProdutosPedido.Text);
    DM.cdsPedido.Post;
    DM.queryPedido.Close;
    DM.cdsPedido.Close;
    DM.queryPedido.Open;
    DM.cdsPedido.Open;
    quantidadeProdutosPedido.Text := '';
  end;
end;

procedure TFProdutos.btnDelPedidoClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Excluir o registro atual?', 'Excluir', MB_YESNO + MB_ICONQUESTION) = ID_YES then
    DM.cdsPedido.Delete;
end;

procedure TFProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
end;

procedure TFProdutos.FormShow(Sender: TObject);
begin
   DM.NomeForm :=  'FProdutos';
  inherited;
  DM.cdsPedido.Open;
  DM.cdsFornecedor.Open;


end;

initialization
  RegisterClass(TFProdutos);

finalization
  UnRegisterClass(TFProdutos);

end.
