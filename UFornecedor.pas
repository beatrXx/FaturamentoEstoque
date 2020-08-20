unit UFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, UDM, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFFornecedor = class(TTelaBase)
    lblID: TLabel;
    dbeIdFornecedor: TDBEdit;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFornecedor: TFFornecedor;

implementation

{$R *.dfm}

procedure TFFornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
end;

procedure TFFornecedor.FormShow(Sender: TObject);
begin
  DM.NomeForm :=  'FFornecedor';
  inherited;



end;

initialization
  RegisterClass(TFFornecedor);

finalization
  UnRegisterClass(TFFornecedor);

end.
