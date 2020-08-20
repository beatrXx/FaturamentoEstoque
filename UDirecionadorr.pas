unit UDirecionadorr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Outline,
  Vcl.ExtCtrls;

type
    TFDirecionado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblUsuario: TLabel;
    Image1: TImage;
    Outline1: TOutline;
    btnAbrir: TButton;
    lblLogin: TLabel;
    lblUsuarioo: TLabel;
    procedure btnAbrirClick(Sender: TObject);
    procedure Outline1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    ListaTelasDoUsuario: tstringlist;
    idUsuario : Integer;
    procedure criarListaUsuTela();

  end;

var
  FDirecionado: TFDirecionado;

implementation

{$R *.dfm}

uses UDM,ULogin;

procedure TFDirecionado.btnAbrirClick(Sender: TObject);

 var  i: integer;

begin
     if outline1.Lines.Count > 0  then
     begin
      DM.conexaoBanco.Connected := true;
      DM.cdsTela.Active := true;
      DM.cdsTela.First;

      while not DM.cdsTela.Eof do
      begin
        if outline1.Lines.Strings[outline1.SelectedItem-1] = DM.cdstela.FieldByName('Nome').AsString then
          begin
              //showmessage((trim(DataModule2.Mtela.FieldByName('Nome').AsString)));
            Form1.chamaTela(trim(DM.cdsTela.FieldByName('Nome').AsString));
            break;
          end;

          DM.cdsTela.Next;

      end;

      end;
end;




procedure TFDirecionado.criarListaUsuTela();
var idTela : integer;
begin
       //showmessage('entrou no cria lista');
      DM.conexaoBanco.Connected := true;
      DM.cdsTela.Active := true;
      DM.cdsusuTela.First;
      ListaTelasDoUsuario := tstringlist.create;


      while  not(DM.cdsusuTela.Eof)    do
      begin

        if Form1.idUsuario = DM.cdsusuTela.FieldByName('idUsuario').AsInteger then
        begin
                          showmessage('entrou no IF');
                 idTela := DM.cdsTela.FieldByName('idTela').AsInteger;

                ListaTelasDoUsuario.Add(intTostr(idTela));

        end;

        DM.cdsusuTela.Next;

      end;





end;



procedure TFDirecionado.FormShow(Sender: TObject);

var
     i: Integer;
begin


     lblUsuarioo.Caption := dm.usuario;
     ListaTelasDoUsuario := tstringlist.Create;
     DM.conexaoBanco.Connected := true;
     DM.cdsusuTela.Active := true;
     DM.cdsusuTela.First;

     while not DM.cdsusuTela.Eof do
     begin



          if DM.idUsuario = DM.cdsusuTela.FieldByName('idUsuario').AsInteger then
          begin

            ListaTelasDoUsuario.Add(inttostr(DM.cdsusuTela.FieldByName('idTela').AsInteger));
          end;

          DM.cdsusuTela.Next;
     end;

     DM.cdsusuTela.Active := false;




     DM.cdstela.Active := true;
     DM.cdstela.First;

     for i := 0 to ListaTelasDoUsuario.Count-1 do
       begin
             while not DM.cdstela.Eof do
             begin
              if ListaTelasDoUsuario.Strings[i] = intToStr(DM.cdstela.FieldByName('idTela').AsInteger) then
              begin
                 outline1.Lines.Add(DM.cdstela.FieldByName('Nome').AsString);
              end;
               DM.cdstela.Next;
              end;

              DM.cdstela.First;

       end;




 end;



procedure TFDirecionado.Outline1KeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13) then
      btnAbrirClick(Sender);
end;






 Initialization
  RegisterClass(TFDirecionado);

 Finalization
    UnRegisterClass(TFDirecionado);
end.
