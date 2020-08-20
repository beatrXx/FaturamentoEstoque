inherited TelaBase2: TTelaBase2
  Caption = 'TelaBase2'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Left = 135
      Width = 278
      Caption = 'Definir Acesso de Usu'#225'rio'
      ExplicitLeft = 135
      ExplicitWidth = 278
    end
  end
  inherited pageControl: TPageControl
    ActivePage = TabSheet1
    inherited informacoes: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 543
      ExplicitHeight = 220
      inherited grupoInformacoes: TGroupBox
        object Label1: TLabel
          Left = 144
          Top = 48
          Width = 88
          Height = 13
          Caption = 'C'#243'digo De Usu'#225'rio'
          Color = 14745585
          FocusControl = DBEdit1
          ParentColor = False
        end
        object Label2: TLabel
          Left = 292
          Top = 48
          Width = 71
          Height = 13
          Caption = 'C'#243'digo de Tela'
          Color = 14745585
          FocusControl = DBEdit2
          ParentColor = False
        end
        object DBEdit1: TDBEdit
          Left = 160
          Top = 67
          Width = 44
          Height = 21
          DataField = 'idUsuario'
          DataSource = dataSource
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 308
          Top = 67
          Width = 45
          Height = 21
          DataField = 'idTela'
          DataSource = dataSource
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 201
          Top = 129
          Width = 56
          Height = 17
          Caption = 'inserir'
          DataField = 'inserir'
          DataSource = dataSource
          TabOrder = 2
        end
        object DBCheckBox2: TDBCheckBox
          Left = 201
          Top = 169
          Width = 56
          Height = 17
          Caption = 'alterar'
          DataField = 'alterar'
          DataSource = dataSource
          TabOrder = 3
        end
        object DBCheckBox3: TDBCheckBox
          Left = 289
          Top = 128
          Width = 97
          Height = 17
          Caption = 'excluir'
          DataField = 'excluir'
          DataSource = dataSource
          TabOrder = 4
        end
        object DBCheckBox4: TDBCheckBox
          Left = 289
          Top = 168
          Width = 97
          Height = 17
          Caption = 'imprimir'
          DataField = 'imprimir'
          DataSource = dataSource
          TabOrder = 5
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 543
      ExplicitHeight = 220
    end
    object TabSheet1: TTabSheet
      Caption = 'Visualiza'#231#227'o'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 16
        Width = 537
        Height = 98
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'idUsuario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 120
        Width = 537
        Height = 96
        DataSource = DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'idTela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited iconesBotoes: TImageList
    Left = 400
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsUsuTela
    Left = 488
  end
  object DataSource1: TDataSource
    DataSet = DM.cdsUsuario
    Left = 336
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = DM.cdsTela
    Left = 256
    Top = 97
  end
end
