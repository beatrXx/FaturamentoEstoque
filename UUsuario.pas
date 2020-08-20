unit UUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, UDM, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFUsuario = class(TTelaBase)
    lblIDUsuario: TLabel;
    dbeIDUsuario: TDBEdit;
    lnlNome: TLabel;
    dbeNome: TDBEdit;
    lblSenha: TLabel;
    dbeSenha: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuario: TFUsuario;

implementation

{$R *.dfm}

procedure TFUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
end;

procedure TFUsuario.FormShow(Sender: TObject);
begin
  DM.NomeForm :=  'FUsuario';
  inherited;

end;

initialization
  RegisterClass(TFUsuario);

finalization
  UnRegisterClass(TFUsuario);

end.
