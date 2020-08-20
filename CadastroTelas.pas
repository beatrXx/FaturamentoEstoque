unit CadastroTelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase1 = class(TTelaBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase1: TTelaBase1;

implementation

{$R *.dfm}

uses UDM;

procedure TTelaBase1.FormShow(Sender: TObject);
begin
  DM.NomeForm :=  'TelaBase1';
  inherited;

end;

initialization
  RegisterClass(TTelaBase1);

finalization
  UnRegisterClass(TTelaBase1);

end.
