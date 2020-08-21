unit UEstoque2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaBase10 = class(TTelaBase)
    Label1: TLabel;
    txtcodBARRAS: TEdit;
    DBGrid1: TDBGrid;
    dsprodEstoque: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    txtQuant: TDBEdit;
    procedure txtcodBARRASKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    quant : integer;
    novaQuant : integer;
  public
    { Public declarations }
  end;

var
  TelaBase10: TTelaBase10;

implementation

{$R *.dfm}

uses UDM;




procedure TTelaBase10.btnGravarClick(Sender: TObject);
begin



   // DM.cdsPRODestoque.Edit;
   dsprodEstoque.DataSet.Edit;
   DM.cdsPRODestoqueqtdeEstoque.AsInteger := DM.cdsPRODestoqueqtdeEstoque.AsInteger+ strtoint(txtQuant.Text);
   // DM.cdsPRODestoque.Post;
   dsprodEstoque.DataSet.Post;



    //acrescentando o IDproduto do DBgrid
    DM.cdsEstoqueidProduto.AsInteger := DM.cdsPRODestoqueidProduto.AsInteger;
    inherited;





   DM.cdsEstoque.Close;
   DM.queryEstoque.Close;
   //DM.cdsPRODestoque.Close;
   DM.queryEstoque.Open;
   DM.cdsEstoque.Open;

  // DM.cdsPRODestoque.Open;
end;

procedure TTelaBase10.txtcodBARRASKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    //busco no BD se esse codigo no txt é igual ao codigo do produto do BD

    //DM.conexaoBanco.Connected := true;
    DM.cdsPRODestoque.Close;
    DM.queryPRODestoque.Close;
    DM.queryPRODestoque.Parameters[0].Value := txtcodBarras.text;
    DM.cdsPRODestoque.Open;
    //quant := DM.cdsPRODestoqueqtdeEstoque.ASinteger;
    //printat quant pra ver
    //showmessage('QUANTIDADE EM PRODUTO: '+ inttostr(quant));

  end;
end;

initialization
  RegisterClass(TTelaBase10);

finalization
  UnRegisterClass(TTelaBase10);

end.
