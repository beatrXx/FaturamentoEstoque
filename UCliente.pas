unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase3 = class(TTelaBase)
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
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase3: TTelaBase3;

implementation

{$R *.dfm}

uses UDM;


procedure TTelaBase3.FormShow(Sender: TObject);
begin
  DM.NomeForm := 'TelaBase3';
  inherited;

end;

initialization
  RegisterClass(TTelaBase3);

finalization
  UnRegisterClass(TTelaBase3);

end.
