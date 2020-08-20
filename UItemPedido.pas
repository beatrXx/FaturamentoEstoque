unit UItemPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls;

type
    TTelaBase9 = class(TTelaBase)
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase9: TTelaBase9;

implementation

{$R *.dfm}

uses UDM;



procedure TTelaBase9.Button1Click(Sender: TObject);
begin
  inherited;
  DM.cdsFI.Open;
  DM.cdsFI.Append;  //adicionar no banco

  //Colocando no Banco as informacoes manualmente
 // DM.idProduto := DM.cdsProdidProduto.AsInteger;





  DM.cdsFIidFaturamento.AsInteger := UDM.DM.idFaturamento;
  DM.cdsFIidPedido.AsInteger := UDM.DM.idPedidoo;
  DM.cdsFIidProduto.AsInteger := DM.cdsProdidProduto.AsInteger;

  showmessage('Produto2: '+ inttostr(DM.cdsProdidProduto.AsInteger));

  //verif.

  DM.cdsFI.Post;


end;

procedure TTelaBase9.FormShow(Sender: TObject);
begin


  inherited;


  DM.cdsProd.Close;
  DM.queryProd.Parameters[0].Value := DM.idPedidoo;
  DM.cdsProd.open;

  //DM.idProduto := strtoint(tabela.Columns.Items[1].Field.text);

  //showmessage('Produto: '+ inttostr(DM.idProduto));









end;

initialization
  RegisterClass(TTelaBase9);

finalization
  UnRegisterClass(TTelaBase9);

end.
