inherited TelaBase8: TTelaBase8
  Caption = 'TelaBase8'
  ClientHeight = 435
  ClientWidth = 557
  ExplicitWidth = 573
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    Width = 557
    ExplicitWidth = 557
    inherited tituloTela: TLabel
      Left = 173
      Top = 10
      Caption = 'Faturamento Item'
      ExplicitLeft = 173
      ExplicitTop = 10
    end
  end
  inherited grupoFoco: TGroupBox
    Width = 557
    Height = 48
    ExplicitWidth = 557
    ExplicitHeight = 48
  end
  inherited pageControl: TPageControl
    Top = 113
    Width = 557
    Height = 322
    ActivePage = informacoes
    ExplicitTop = 113
    ExplicitWidth = 557
    ExplicitHeight = 322
    inherited informacoes: TTabSheet
      ExplicitWidth = 549
      ExplicitHeight = 294
      inherited grupoInformacoes: TGroupBox
        Width = 549
        Height = 294
        ExplicitWidth = 549
        ExplicitHeight = 294
        object DBGrid1: TDBGrid
          Left = 64
          Top = 27
          Width = 422
          Height = 141
          DataSource = dsPedido
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'idPedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtCadastro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtPrevistaEntrega'
              Visible = True
            end>
        end
        object Button1: TButton
          Left = 232
          Top = 232
          Width = 65
          Height = 41
          Caption = 'Faturar'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitWidth = 549
      ExplicitHeight = 294
      inherited grupoFiltros: TGroupBox
        Width = 549
        ExplicitWidth = 549
      end
      inherited tabela: TDBGrid
        Width = 549
        Height = 194
        Columns = <
          item
            Expanded = False
            FieldName = 'idFaturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idPedido'
            Visible = True
          end>
      end
      inherited barraStatus: TStatusBar
        Top = 275
        Width = 549
        ExplicitTop = 275
        ExplicitWidth = 549
      end
    end
  end
  inherited iconesBotoes: TImageList
    Left = 392
    Top = 72
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsFI
    Left = 464
    Top = 72
  end
  object dsFataturamento: TDataSource
    DataSet = DM.cdsFaturamento
    Left = 320
    Top = 73
  end
  object dsPedido: TDataSource
    DataSet = DM.cdsP
    Left = 256
    Top = 73
  end
  object dsProduto: TDataSource
    DataSet = DM.cdsProdutosC
    Left = 200
    Top = 73
  end
end
