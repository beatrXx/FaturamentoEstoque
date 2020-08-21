inherited TelaBase7: TTelaBase7
  Caption = 'TelaBase7'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Caption = 'Faturamento'
    end
  end
  inherited grupoFoco: TGroupBox
    object Label1: TLabel
      Left = 248
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Color = 15661548
      FocusControl = txtCod
      ParentColor = False
    end
    object txtCod: TDBEdit
      Left = 248
      Top = 51
      Width = 49
      Height = 21
      Color = clWhite
      DataField = 'idFaturamento'
      DataSource = dataSource
      TabOrder = 0
    end
  end
  inherited pageControl: TPageControl
    inherited informacoes: TTabSheet
      inherited grupoInformacoes: TGroupBox
        object Label2: TLabel
          Left = 56
          Top = 56
          Width = 103
          Height = 13
          Caption = 'Data de Faturamento'
          Color = 14745585
          FocusControl = DBEdit2
          ParentColor = False
        end
        object Label3: TLabel
          Left = 236
          Top = 53
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Color = 14745585
          ParentColor = False
        end
        object DBEdit2: TDBEdit
          Left = 56
          Top = 72
          Width = 134
          Height = 21
          DataField = 'dataFaturamento'
          DataSource = dataSource
          TabOrder = 0
        end
        object cbCliente: TDBLookupComboBox
          Left = 236
          Top = 72
          Width = 145
          Height = 21
          DataField = 'idCliente'
          DataSource = dataSource
          KeyField = 'idCliente'
          ListField = 'nomeCliente'
          ListSource = dsCliente
          TabOrder = 1
          OnClick = cbClienteClick
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      inherited tabela: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idFaturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataFaturamento'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCliente'
            Visible = True
          end>
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsFaturamento
    Left = 496
  end
  object dsCliente: TDataSource
    DataSet = DM.cdsCliente
    Left = 360
    Top = 97
  end
end
