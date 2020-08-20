inherited TelaBase3: TTelaBase3
  Caption = 'TelaBase3'
  ClientHeight = 453
  ClientWidth = 560
  ExplicitWidth = 576
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited barraSuperior: TPanel
    Width = 560
    ExplicitWidth = 560
    inherited tituloTela: TLabel
      Left = 180
      Caption = 'Cadastro de Clientes'
      ExplicitLeft = 180
    end
  end
  inherited grupoFoco: TGroupBox
    Width = 560
    Height = 88
    ExplicitWidth = 560
    ExplicitHeight = 88
    object Label1: TLabel
      Left = 15
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Color = 15661548
      FocusControl = DBEdit1
      ParentColor = False
    end
    object Label2: TLabel
      Left = 62
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
      Color = 15661548
      FocusControl = DBEdit2
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 43
      Width = 33
      Height = 21
      TabStop = False
      Color = 11924723
      DataField = 'idCliente'
      DataSource = dataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 62
      Top = 43
      Width = 343
      Height = 21
      DataField = 'nomeCliente'
      DataSource = dataSource
      TabOrder = 1
    end
  end
  inherited pageControl: TPageControl
    Top = 153
    Width = 560
    Height = 300
    ActivePage = informacoes
    ExplicitTop = 153
    ExplicitWidth = 560
    ExplicitHeight = 300
    inherited informacoes: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 552
      ExplicitHeight = 272
      inherited grupoInformacoes: TGroupBox
        Width = 552
        Height = 272
        ExplicitWidth = 552
        ExplicitHeight = 272
        object Label3: TLabel
          Left = 348
          Top = 142
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          Color = 14745585
          FocusControl = DBEdit3
          ParentColor = False
        end
        object Label4: TLabel
          Left = 16
          Top = 142
          Width = 55
          Height = 13
          Caption = 'Nascimento'
          Color = 14745585
          FocusControl = DBEdit4
          ParentColor = False
        end
        object Label5: TLabel
          Left = 16
          Top = 22
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          Color = 14745585
          FocusControl = DBEdit5
          ParentColor = False
        end
        object Label6: TLabel
          Left = 168
          Top = 142
          Width = 19
          Height = 13
          Caption = 'CEP'
          Color = 14745585
          FocusControl = DBEdit6
          ParentColor = False
        end
        object Label7: TLabel
          Left = 16
          Top = 80
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Color = 14745585
          FocusControl = DBEdit7
          ParentColor = False
        end
        object Label8: TLabel
          Left = 75
          Top = 80
          Width = 65
          Height = 13
          Caption = 'Complemento'
          Color = 14745585
          FocusControl = DBEdit8
          ParentColor = False
        end
        object Label9: TLabel
          Left = 16
          Top = 200
          Width = 28
          Height = 13
          Caption = 'E-mail'
          Color = 14745585
          FocusControl = DBEdit9
          ParentColor = False
        end
        object DBEdit3: TDBEdit
          Left = 348
          Top = 161
          Width = 169
          Height = 21
          DataField = 'cnpj'
          DataSource = dataSource
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 161
          Width = 134
          Height = 21
          DataField = 'dtNascimento'
          DataSource = dataSource
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 41
          Width = 423
          Height = 21
          DataField = 'endereco'
          DataSource = dataSource
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 168
          Top = 161
          Width = 157
          Height = 21
          DataField = 'cep'
          DataSource = dataSource
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 16
          Top = 99
          Width = 45
          Height = 21
          DataField = 'numero'
          DataSource = dataSource
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 75
          Top = 99
          Width = 334
          Height = 21
          DataField = 'complemento'
          DataSource = dataSource
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 219
          Width = 289
          Height = 21
          DataField = 'email'
          DataSource = dataSource
          TabOrder = 6
        end
      end
    end
    inherited filtrosPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 552
      ExplicitHeight = 272
      inherited grupoFiltros: TGroupBox
        Width = 552
        ExplicitWidth = 552
      end
      inherited tabela: TDBGrid
        Width = 552
        Height = 172
        Columns = <
          item
            Expanded = False
            FieldName = 'idCliente'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeCliente'
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtNascimento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Visible = True
          end>
      end
      inherited barraStatus: TStatusBar
        Top = 253
        Width = 552
        ExplicitTop = 253
        ExplicitWidth = 552
      end
    end
  end
  inherited iconesBotoes: TImageList
    Top = 80
  end
  inherited dataSource: TDataSource
    DataSet = DM.cdsCliente
    Left = 504
    Top = 80
  end
end
