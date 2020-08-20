unit UProdutosC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase4 = class(TTelaBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase4: TTelaBase4;

implementation

{$R *.dfm}

uses UDM;
procedure TTelaBase4.FormShow(Sender: TObject);
begin
  DM.NomeForm := 'TelaBase4';
  inherited;

end;

initialization
  RegisterClass(TTelaBase4);

finalization
  UnRegisterClass(TTelaBase4);

end.
