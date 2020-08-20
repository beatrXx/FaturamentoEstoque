inherited FUsuario: TFUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientWidth = 559
  ExplicitWidth = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    Width = 559
    ExplicitWidth = 559
  end
  inherited grupoFoco: TGroupBox
    Width = 559
    ExplicitWidth = 559
    object lblIDUsuario: TLabel
      Left = 24
      Top = 21
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Color = 15661548
      FocusControl = dbeIDUsuario
      ParentColor = False
    end
    object lnlNome: TLabel
      Left = 84
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object dbeIDUsuario: TDBEdit
      Left = 24
      Top = 37
      Width = 33
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'idUsuario'
      DataSource = dataSource
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 84
      Top = 37
      Width = 246
      Height = 21
      DataField = 'nome'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    Width = 559
    ActivePage = informacoes
    ExplicitWidth = 559
    inherited informacoes: TTabSheet
      ExplicitWidth = 551
      inherited grupoInformacoes: TGroupBox
        Width = 551
        ExplicitWidth = 551
        object lblSenha: TLabel
          Left = 20
          Top = 16
          Width = 30
          Height = 13
          Caption = 'Senha'
          FocusControl = dbeSenha
        end
        object dbeSenha: TDBEdit
          Left = 20
          Top = 35
          Width = 219
          Height = 21
          DataField = 'senha'
          DataSource = dataSource
          TabOrder = 0
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsUsuario
  end
end
