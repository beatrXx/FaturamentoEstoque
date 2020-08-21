inherited TelaBase10: TTelaBase10
  Caption = 'TelaBase10'
  ClientHeight = 434
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Caption = 'Estoque'
    end
  end
  inherited grupoFoco: TGroupBox
    Height = 56
    ExplicitHeight = 56
    object Label2: TLabel
      Left = 224
      Top = 14
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Color = 15661548
      FocusControl = DBEdit1
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 224
      Top = 29
      Width = 50
      Height = 21
      DataField = 'idEntrada'
      DataSource = dataSource
      TabOrder = 0
    end
  end
  inherited pageControl: TPageControl
    Top = 121
    Height = 313
    ActivePage = informacoes
    ExplicitTop = 121
    ExplicitHeight = 313
    inherited informacoes: TTabSheet
      ExplicitHeight = 285
      inherited grupoInformacoes: TGroupBox
        Height = 285
        ExplicitHeight = 285
        object Label1: TLabel
          Left = 176
          Top = 21
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de Barras'
          Color = 14745585
          ParentColor = False
        end
        object Label3: TLabel
          Left = 214
          Top = 205
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          Color = 14745585
          FocusControl = txtQuant
          ParentColor = False
        end
        object txtcodBARRAS: TEdit
          Left = 176
          Top = 40
          Width = 161
          Height = 21
          TabOrder = 0
          OnKeyPress = txtcodBARRASKeyPress
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 81
          Width = 537
          Height = 104
          DataSource = dsprodEstoque
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'idProduto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Produto'
              Width = 168
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
        object txtQuant: TDBEdit
          Left = 208
          Top = 224
          Width = 78
          Height = 21
          DataField = 'quantidade'
          DataSource = dataSource
          TabOrder = 2
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitHeight = 285
      inherited tabela: TDBGrid
        Height = 185
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
          end>
      end
      inherited barraStatus: TStatusBar
        Top = 266
        ExplicitTop = 266
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsEstoque
  end
  object dsprodEstoque: TDataSource
    DataSet = DM.cdsPRODestoque
    Left = 352
    Top = 73
  end
end
