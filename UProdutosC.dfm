inherited TelaBase4: TTelaBase4
  Caption = 'TelaBase4'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Left = 165
      Caption = 'Cadastro de Produtos'
      ExplicitLeft = 165
    end
  end
  inherited grupoFoco: TGroupBox
    object Label1: TLabel
      Left = 80
      Top = 21
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Color = 15661548
      FocusControl = DBEdit1
      ParentColor = False
    end
    object Label2: TLabel
      Left = 138
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Nome'
      Color = 15661548
      FocusControl = DBEdit2
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 40
      Width = 33
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'idProduto'
      DataSource = dataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 138
      Top = 40
      Width = 229
      Height = 21
      DataField = 'Produto'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    ActivePage = informacoes
    inherited informacoes: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 543
      ExplicitHeight = 220
      inherited grupoInformacoes: TGroupBox
        object Label3: TLabel
          Left = 24
          Top = 45
          Width = 27
          Height = 13
          Caption = 'Pre'#231'o'
          Color = 14745585
          FocusControl = DBEdit3
          ParentColor = False
        end
        object Label4: TLabel
          Left = 161
          Top = 48
          Width = 115
          Height = 13
          Caption = 'Quantidade em Estoque'
          Color = 14745585
          FocusControl = DBEdit4
          ParentColor = False
        end
        object Label5: TLabel
          Left = 27
          Top = 109
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de Barras'
          Color = 14745585
          FocusControl = DBEdit5
          ParentColor = False
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 64
          Width = 73
          Height = 21
          DataField = 'Valor'
          DataSource = dataSource
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 161
          Top = 67
          Width = 73
          Height = 21
          DataField = 'qtdeEstoque'
          DataSource = dataSource
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 24
          Top = 128
          Width = 271
          Height = 21
          DataField = 'codigoBarras'
          DataSource = dataSource
          TabOrder = 2
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 543
      ExplicitHeight = 220
      inherited tabela: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdeEstoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoBarras'
            Visible = True
          end>
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsProdutosC
    Left = 496
  end
end
