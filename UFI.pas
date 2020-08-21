unit UFI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TTelaBase8 = class(TTelaBase)
    dsFataturamento: TDataSource;
    dsPedido: TDataSource;
    dsProduto: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure tabelaDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase8: TTelaBase8;

implementation

{$R *.dfm}

uses UDM, ULogin;



procedure TTelaBase8.Button1Click(Sender: TObject);
begin
  inherited;
  DM.idPedidoo := DM.cdsPidPedido.AsInteger;
  showmessage('Pedido2: '+ inttostr(DM.cdsPidPedido.AsInteger));
  form1.chamaTela('TelaBase9');

  DM.cdsP.Close;
  DM.queryP.Parameters[0].Value := DM.idCliente;
  DM.cdsP.Open;

end;

procedure TTelaBase8.DBGrid1DblClick(Sender: TObject);

begin
  inherited;
  //dbgrid1.columns.items[0].field.text


  // DM.idPedidoo := strtoint(dbgrid1.Columns.Items[0].Field.text);

   //showmessage('PEDIDO: '+ inttostr(DM.idPedidoo));




end;

procedure TTelaBase8.FormShow(Sender: TObject);
begin
   DM.cdsFI.Open;
   DM.cdsP.Close;
   DM.cdsProdutosC.Close;
   DM.cdsFaturamento.Close;
   DM.cdsVendasProdutos.Close;
   //DM.queryP.Close;

   //DM.cdsP.Close;
  DM.queryP.Parameters[0].Value := DM.idCliente;
  //DM.cdsP.Open;


  DM.cdsVP.Open;
  DM.cdsProdutosC.Open;
  DM.cdsP.Open;
  DM.cdsFaturamento.Open;



  inherited;






end;

procedure TTelaBase8.tabelaDblClick(Sender: TObject);
begin
  DM.cdsFI.Close;
  DM.cdsFI.Open;
  inherited;

end;

initialization
  RegisterClass(TTelaBase8);

finalization
  UnRegisterClass(TTelaBase8);

end.
