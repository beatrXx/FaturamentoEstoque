inherited FFornecedor: TFFornecedor
  Caption = 'Cadastro de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Left = 133
      Width = 248
      Caption = 'Cadastro de Fornecedores'
      ExplicitLeft = 133
      ExplicitWidth = 248
    end
  end
  inherited grupoFoco: TGroupBox
    object lblID: TLabel
      Left = 20
      Top = 21
      Width = 84
      Height = 13
      Caption = 'ID do Fornecedor'
      FocusControl = dbeIdFornecedor
    end
    object lblNome: TLabel
      Left = 160
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object dbeIdFornecedor: TDBEdit
      Left = 20
      Top = 37
      Width = 134
      Height = 21
      DataField = 'idFornecedor'
      DataSource = dataSource
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 160
      Top = 37
      Width = 230
      Height = 21
      DataField = 'nome'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    ActivePage = informacoes
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsFornecedor
  end
end
