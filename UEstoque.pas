unit UEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase6 = class(TTelaBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DsProdutos: TDataSource;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase6: TTelaBase6;

implementation

{$R *.dfm}

procedure TTelaBase6.FormShow(Sender: TObject);
begin
  inherited;
    DsProdutos.DataSet.Open;
end;

initialization
  RegisterClass(TTelaBase6);

finalization
  UnRegisterClass(TTelaBase6);

end.
