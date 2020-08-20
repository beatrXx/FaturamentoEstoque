inherited TelaBase9: TTelaBase9
  Caption = 'TelaBase9'
  ClientWidth = 394
  ExplicitWidth = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    Width = 394
    ExplicitWidth = 394
    inherited tituloTela: TLabel
      Left = 119
      Caption = 'Itens do Pedido'
      ExplicitLeft = 119
    end
    inherited barraFerramentas: TToolBar
      Left = 4
      Top = 0
      ExplicitLeft = 4
      ExplicitTop = 0
    end
  end
  inherited grupoFoco: TGroupBox
    Width = 394
    Height = 24
    Caption = ''
    Color = 15661548
    ExplicitWidth = 394
    ExplicitHeight = 24
  end
  inherited pageControl: TPageControl
    Top = 89
    Width = 394
    Height = 313
    ExplicitTop = 89
    ExplicitWidth = 394
    ExplicitHeight = 313
    inherited informacoes: TTabSheet
      ExplicitWidth = 386
      ExplicitHeight = 285
      inherited grupoInformacoes: TGroupBox
        Width = 386
        Height = 285
        ExplicitWidth = 386
        ExplicitHeight = 285
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited grupoFiltros: TGroupBox
        Width = 386
        ExplicitWidth = 386
      end
      inherited tabela: TDBGrid
        Width = 386
        Height = 185
        Columns = <
          item
            Expanded = False
            FieldName = 'idPedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Visible = True
          end>
      end
      inherited barraStatus: TStatusBar
        Top = 266
        Width = 386
        ExplicitTop = 266
        ExplicitWidth = 386
      end
      object Button1: TButton
        Left = 138
        Top = 32
        Width = 75
        Height = 33
        Caption = 'Button1'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  inherited iconesBotoes: TImageList
    Left = 288
    Top = 16
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsProd
    Left = 344
    Top = 8
  end
end
