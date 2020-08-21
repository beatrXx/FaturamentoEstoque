unit UPedidosVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TTelaBase5 = class(TTelaBase)
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DScliente: TDataSource;
    GroupBox3: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dsVendas: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    tabela2: TDBGrid;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    btnDelet: TSpeedButton;
    dsProduto: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeletClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabelaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaBase5: TTelaBase5;

implementation

{$R *.dfm}

uses UDM;

procedure TTelaBase5.btnCancelClick(Sender: TObject);
begin
  inherited;
  ActiveControl := Nil;
  if not (Sender is TForm) then
    if Application.MessageBox('Cancelar o registro atual?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = ID_YES then
      dsVendas.DataSet.Cancel;

  //dsVendas.DataSet.Close;
  //dsVendas.DataSet.Open;
end;

procedure TTelaBase5.btnDeletClick(Sender: TObject);
begin
  inherited;
  if dsVendas.DataSet.Active then
    if not dsVendas.DataSet.IsEmpty then
    begin
      if Application.MessageBox('Deseja realmente excluir o registro atual?', 'Excluir', MB_YESNO + MB_ICONQUESTION) = ID_YES then
        dsVendas.DataSet.Delete;
    end
    else
      ShowMessage('Não há registros a excluir!');


   // dsVendas.DataSet.Close;
 // dsVendas.DataSet.Open;
end;

procedure TTelaBase5.btnEditClick(Sender: TObject);
begin
  inherited;
   if dsVendas.DataSet.Active then
    if not dsVendas.DataSet.IsEmpty then
    begin
      dsVendas.DataSet.Edit;
      pageControl.ActivePageIndex := 0;
    end
    else
      ShowMessage('Não há Registros a Alterar!');

       //dsVendas.DataSet.Close;
      //dsVendas.DataSet.Open;
end;

procedure TTelaBase5.btnSaveClick(Sender: TObject);
begin
  inherited;
    //ActiveControl := Nil;
    DM.cdsVendasProdutosidPedido.AsInteger := strtoint(DBEdit1.Text);
    DM.cdsVendasProdutosidProduto.AsInteger := DM.cdsProdutosCidProduto.AsInteger;
    dsVendas.DataSet.Post;

  // Após salvar atualiza
  //btnPesquisarClick(btnPesquisar);

   //DM.cdsVendasProdutos.Close;
   //DM.queryVendasProdutos.Close;
   //DM.queryVendasProdutos.Open;
   //DM.cdsVendasProdutos.Open;



end;

procedure TTelaBase5.FormShow(Sender: TObject);
begin
  DM.NomeForm := 'TelaBase5';


  dsCliente.DataSet.Open;
  //dsVendas.DataSet.Open;
  dsProduto.DataSet.Open;
  inherited;

end;


procedure TTelaBase5.tabelaDblClick(Sender: TObject);
begin
  inherited;
  DM.cdsVendasProdutos.Close;
  DM.queryVendasProdutos.Close;
  //showmessage('PEDIDOOOOO:  '+ intTostr(DM.cdsPedidosCidPedido.AsInteger));
  DM.queryVendasProdutos.Parameters[0].Value := DM.cdsPedidosCidPedido.AsInteger;
  DM.queryVendasProdutos.Open;
  DM.cdsVendasProdutos.Open;

end;

procedure TTelaBase5.btnAddClick(Sender: TObject);
begin
  inherited;
if ActiveControl = tabela2 then
    ActiveControl := Nil;

  if not dsVendas.DataSet.Active then
    dsVendas.DataSet.Open;

  dsVendas.DataSet.Append;
  pageControl.ActivePageIndex := 0;

  //dsVendas.DataSet.Close;
  //dsVendas.DataSet.Open;
end;


initialization
  RegisterClass(TTelaBase5);

finalization
  UnRegisterClass(TTelaBase5);

end.
