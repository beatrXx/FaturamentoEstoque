inherited TelaBase1: TTelaBase1
  Caption = 'TelaBase1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    inherited tituloTela: TLabel
      Caption = 'Cadastro de Telas'
    end
  end
  inherited grupoFoco: TGroupBox
    Height = 107
    ExplicitHeight = 107
    object Label1: TLabel
      Left = 20
      Top = 32
      Width = 28
      Height = 13
      Caption = 'idTela'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 97
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 51
      Width = 45
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'idTela'
      DataSource = dataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 97
      Top = 51
      Width = 270
      Height = 21
      DataField = 'Nome'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    Top = 172
    Height = 230
    ExplicitTop = 172
    ExplicitHeight = 230
    inherited informacoes: TTabSheet
      inherited grupoInformacoes: TGroupBox
        Height = 202
        ExplicitHeight = 202
        object Label3: TLabel
          Left = 16
          Top = 24
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBMemo1
        end
        object DBMemo1: TDBMemo
          Left = 17
          Top = 43
          Width = 185
          Height = 89
          DataField = 'Descri'#231#227'o'
          DataSource = dataSource
          TabOrder = 0
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitHeight = 202
      inherited tabela: TDBGrid
        Height = 102
      end
      inherited barraStatus: TStatusBar
        Top = 183
        ExplicitTop = 183
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsTela
    Left = 496
  end
end
