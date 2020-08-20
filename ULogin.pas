unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblLogin: TLabel;
    lblNome: TLabel;
    txtNome: TEdit;
    lblSenha: TLabel;
    txtSenha: TEdit;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    usuario: string;
    senha: string;
    idUsuario: integer;
    procedure chamaTela(t: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDM, UDirecionadorr, AcessoUsuario;




procedure TForm1.btnLoginClick(Sender: TObject);

var
  nomeU : boolean;
  senhaU : boolean;
begin
       nomeU := false;
       senhaU := false;
    //Se o nome estiver dentro do banco
    //se a senha é valida

   DM.conexaoBanco.Connected := true;
   DM.cdsusuario.Active := true;
   DM.cdsusuario.First;

  while  not(DM.cdsusuario.Eof)    do
  begin
      if txtNome.Text = trim(DM.cdsusuario.fieldbyname('Nome').AsString) then
      begin

          nomeU:= true;
        if txtSenha.Text = trim(DM.cdsusuario.FieldByName('Senha').AsString) then
        begin

            senha :=  DM.cdsusuario.FieldByName('Senha').AsString;
            idUsuario :=  DM.cdsusuario.FieldByName('idUsuario').AsInteger;
            dm.idUsuario := DM.cdsusuario.FieldByName('idUsuario').AsInteger;
            dm.usuario :=  DM.cdsusuario.FieldByName('Nome').AsString;


            senhaU := true;
        end;
      end;

      DM.cdsusuario.Next;
  end;

  if (nomeU = false) or (senhaU = false) then
  begin
     showMessage('Login incorreto!');
  end
  else
  begin


   //condicoes



   showmessage('login efetuado com sucesso');
      //showmessage('idUsuario: '+ inttostr(idUsuario));
    chamaTela('FDirecionado');

  end;
end;




procedure TForm1.chamaTela(t: string);
  var
    pc : TPersistentClass;
begin
  pc:= GetClass ('T' + trim (T));
  if (pc<>nil) then
  begin
     with tformclass(pc).Create(Application) do
     try
       Name := T;
       Application.Title := 'Developed by BEATRIZ MARQUES FRANCO - : ' + copy(t,2, length(t));
       ShowModal;
     finally
        Free;
        tFormClass(pc) := nil;

     end;
  end;
end;


end.
