unit UFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase7 = class(TTelaBase)
    Label1: TLabel;
    txtCod: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cbCliente: TDBLookupComboBox;
    Label3: TLabel;
    dsCliente: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cbClienteClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure tabelaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase7: TTelaBase7;

implementation

{$R *.dfm}

uses ULogin, UDM;

procedure TTelaBase7.btnGravarClick(Sender: TObject);
begin

  inherited;


   //PAROU AQUI
  //showmessage('texto: '+ trim(txtcod.Text));
  //DM.idFaturamento := strtoint(trim(txtCod.Text));
  //showmessage('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
end;



procedure TTelaBase7.cbClienteClick(Sender: TObject);

begin
  inherited;

        //showmessage('CLIENTE2:     ' + inttostr(DM.cdsClienteidCliente.AsInteger));

end;

procedure TTelaBase7.FormShow(Sender: TObject);
begin
  inherited;
  DsCliente.DataSet.Open;



end;


procedure TTelaBase7.tabelaDblClick(Sender: TObject);
var
  cliente : string;
begin
     inherited;
    cliente := cbCliente.Text;
    DM.conexaoBanco.Connected := true;
    DM.cdsCliente.Active := true;
    DM.cdsCliente.First;


     while  not(DM.cdsCliente.Eof)    do
     begin

         if (cliente = DM.cdsCliente.FieldByName('nomeCliente').AsString) then
         begin
           DM.idCliente := DM.cdsCliente.FieldByName('idCliente').AsInteger;

         end;


            DM.cdsCliente.Next;


     end;

  showmessage('Cliente: '+ inttostr(DM.idCliente));
  DM.idFaturamento := strtoint(txtCod.Text);



  Form1.chamaTela('TelaBase8');

end;

initialization
  RegisterClass(TTelaBase7);

finalization
  UnRegisterClass(TTelaBase7);

end.
