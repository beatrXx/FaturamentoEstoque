unit AcessoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase2 = class(TTelaBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase2: TTelaBase2;

implementation

{$R *.dfm}

uses UDM;



procedure TTelaBase2.FormShow(Sender: TObject);
begin
  DM.NomeForm := 'TelaBase2';
  inherited;



end;

initialization
  RegisterClass(TTelaBase2);

finalization
  UnRegisterClass(TTelaBase2);

end.
