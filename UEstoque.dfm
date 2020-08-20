inherited TelaBase6: TTelaBase6
  Caption = 'TelaBase6'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Left = 220
      Caption = 'Estoque'
      ExplicitLeft = 220
    end
  end
  inherited grupoFoco: TGroupBox
    object Label1: TLabel
      Left = 220
      Top = 24
      Width = 89
      Height = 13
      Caption = 'C'#243'digo da Entrada'
      Color = 15661548
      FocusControl = DBEdit1
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 245
      Top = 43
      Width = 48
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'idEntrada'
      DataSource = dataSource
      TabOrder = 0
    end
  end
  inherited pageControl: TPageControl
    ActivePage = informacoes
    inherited informacoes: TTabSheet
      inherited grupoInformacoes: TGroupBox
        object Label2: TLabel
          Left = 321
          Top = 40
          Width = 136
          Height = 13
          Caption = 'Data de Entrada no Estoque'
          Color = 14745585
          FocusControl = DBEdit2
          ParentColor = False
        end
        object Label3: TLabel
          Left = 233
          Top = 117
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          Color = 14745585
          FocusControl = DBEdit3
          ParentColor = False
        end
        object Label4: TLabel
          Left = 72
          Top = 37
          Width = 38
          Height = 13
          Caption = 'Produto'
          Color = 14745585
          ParentColor = False
        end
        object DBEdit2: TDBEdit
          Left = 321
          Top = 59
          Width = 134
          Height = 21
          DataField = 'dataEntrada'
          DataSource = dataSource
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 233
          Top = 136
          Width = 56
          Height = 21
          DataField = 'quantidade'
          DataSource = dataSource
          TabOrder = 1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 72
          Top = 56
          Width = 145
          Height = 21
          DataField = 'idProduto'
          DataSource = dataSource
          KeyField = 'idProduto'
          ListField = 'Produto'
          ListSource = DsProdutos
          TabOrder = 2
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      inherited tabela: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idEntrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataEntrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
      end
    end
  end
  inherited iconesBotoes: TImageList
    Left = 424
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsEstoque
    Left = 488
  end
  object DsProdutos: TDataSource
    DataSet = DM.cdsProdutosC
    Left = 360
    Top = 89
  end
end
