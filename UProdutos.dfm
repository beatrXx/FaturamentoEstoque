inherited FProdutos: TFProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 494
  ClientWidth = 577
  ExplicitWidth = 593
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    Width = 577
    ExplicitWidth = 577
    inherited tituloTela: TLabel
      Left = 183
      Caption = 'Cadastro de Produtos'
      ExplicitLeft = 183
    end
    inherited barraFerramentas: TToolBar
      Left = 370
      ExplicitLeft = 370
    end
  end
  inherited grupoFoco: TGroupBox
    Width = 577
    ExplicitWidth = 577
    object lblCodigo: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbeCodigo
    end
    object lblNome: TLabel
      Left = 69
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object dbeCodigo: TDBEdit
      Left = 8
      Top = 40
      Width = 41
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'codigo'
      DataSource = dataSource
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 69
      Top = 40
      Width = 286
      Height = 21
      DataField = 'Nome'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    Width = 577
    Height = 340
    ActivePage = informacoes
    ExplicitWidth = 577
    ExplicitHeight = 340
    inherited informacoes: TTabSheet
      ExplicitWidth = 569
      ExplicitHeight = 312
      inherited grupoInformacoes: TGroupBox
        Width = 569
        Height = 312
        ExplicitWidth = 569
        ExplicitHeight = 312
        object grupoDadosProduto: TGroupBox
          Left = 2
          Top = 15
          Width = 565
          Height = 122
          Align = alTop
          Caption = 'Dados do Produto'
          TabOrder = 0
          object lblDataCriacao: TLabel
            Left = 16
            Top = 24
            Width = 77
            Height = 13
            Caption = 'Data de Cria'#231#227'o'
            FocusControl = dbeDataCriacao
          end
          object lblPreco: TLabel
            Left = 16
            Top = 69
            Width = 27
            Height = 13
            Caption = 'Pre'#231'o'
            FocusControl = dbePreco
          end
          object lblModelo: TLabel
            Left = 156
            Top = 24
            Width = 34
            Height = 13
            Caption = 'Modelo'
            FocusControl = dbeModelo
          end
          object lblQuantidade: TLabel
            Left = 156
            Top = 69
            Width = 56
            Height = 13
            Caption = 'Quantidade'
            FocusControl = dbeQuantidade
          end
          object lblEspecificacoes: TLabel
            Left = 296
            Top = 24
            Width = 69
            Height = 13
            Caption = 'Especifica'#231#245'es'
            FocusControl = dbeEspecificacoes
          end
          object lblFornecedor: TLabel
            Left = 455
            Top = 24
            Width = 55
            Height = 13
            Caption = 'Fornecedor'
          end
          object dbeDataCriacao: TDBEdit
            Left = 16
            Top = 40
            Width = 134
            Height = 21
            DataField = 'DataCriacao'
            DataSource = dataSource
            TabOrder = 0
          end
          object dbePreco: TDBEdit
            Left = 16
            Top = 85
            Width = 134
            Height = 21
            DataField = 'Pre'#231'o'
            DataSource = dataSource
            TabOrder = 1
          end
          object dbeModelo: TDBEdit
            Left = 156
            Top = 40
            Width = 134
            Height = 21
            DataField = 'Modelo'
            DataSource = dataSource
            TabOrder = 2
          end
          object dbeQuantidade: TDBEdit
            Left = 156
            Top = 85
            Width = 134
            Height = 21
            DataField = 'Quantidade'
            DataSource = dataSource
            TabOrder = 3
          end
          object dbeEspecificacoes: TDBMemo
            Left = 296
            Top = 40
            Width = 153
            Height = 66
            DataField = 'Especifica'#231#245'es'
            DataSource = dataSource
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object dbeNacional: TDBCheckBox
            Left = 455
            Top = 84
            Width = 97
            Height = 17
            Caption = 'Nacional'
            DataField = 'Nacional'
            DataSource = dataSource
            TabOrder = 5
          end
          object cbbFornecedor: TDBLookupComboBox
            Left = 455
            Top = 41
            Width = 100
            Height = 21
            DataField = 'idFornecedor'
            DataSource = dataSource
            KeyField = 'idFornecedor'
            ListField = 'nome'
            ListSource = DM.dsFornecedor
            TabOrder = 6
          end
        end
        object grupoPedidos: TGroupBox
          Left = 2
          Top = 137
          Width = 565
          Height = 88
          Align = alTop
          Caption = 'Pedidos'
          TabOrder = 1
          object btnAddPedido: TSpeedButton
            Left = 189
            Top = 48
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000230B0000230B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5280F
              A5280FA5280FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF0FA5287EE09E51CD830FA528FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287E
              E09E38C2730FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C2730FA528FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287E
              E09E38C2730FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
              0FA5280FA5280FA5280FA5280FA5287EE09E38C2730FA5280FA5280FA5280FA5
              280FA5280FA528FF00FFFF00FF0FA5287EE09E38C27338C27338C27338C27338
              C27338C27338C27338C27338C27338C27351CD830FA528FF00FFFF00FF0FA528
              5FD38B5FD38B5FD38B5FD38B5FD38B51CD8338C2735FD38B5FD38B5FD38B5FD3
              8B5FD38B0FA528FF00FFFF00FF0FA5280FA5280FA5280FA5280FA5280FA5287E
              E09E38C2730FA5280FA5280FA5280FA5280FA5280FA528FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C2730FA528FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287E
              E09E38C2730FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C2730FA528FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA52851
              CD835FD38B0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF0FA5280FA5280FA5280FA528FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = btnAddPedidoClick
          end
          object btnDelPedido: TSpeedButton
            Left = 218
            Top = 48
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000230B0000230B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001890
              0018900018900018900018900018900018900018900018900018900018900018
              90001890001890FF00FFFF00FF0018908B9EF12952E72952E72952E72952E729
              52E72952E72952E72952E72952E72952E73D59DB001890FF00FFFF00FF001890
              8B9EF1718BED718BED718BED718BED718BED718BED718BED718BED718BED718B
              ED3D59DB001890FF00FFFF00FF00189000189000189000189000189000189000
              1890001890001890001890001890001890001890001890FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = btnDelPedidoClick
          end
          object lblQuantidadePedido: TLabel
            Left = 16
            Top = 29
            Width = 167
            Height = 13
            Caption = 'Quantidade de Produtos no Pedido'
          end
          object quantidadeProdutosPedido: TEdit
            Left = 16
            Top = 48
            Width = 167
            Height = 21
            NumbersOnly = True
            TabOrder = 0
          end
        end
        object tabelaPedidos: TDBGrid
          Left = 2
          Top = 225
          Width = 565
          Height = 85
          Align = alClient
          DataSource = DM.dsPedido
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitWidth = 569
      ExplicitHeight = 312
      inherited grupoFiltros: TGroupBox
        Width = 569
        ExplicitWidth = 569
      end
      inherited tabela: TDBGrid
        Width = 569
        Height = 212
      end
      inherited barraStatus: TStatusBar
        Top = 293
        Width = 569
        ExplicitTop = 293
        ExplicitWidth = 569
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsProduto
  end
end
