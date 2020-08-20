object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 218
  ClientWidth = 229
  Color = 14680047
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblLogin: TLabel
    Left = 88
    Top = 24
    Width = 58
    Height = 26
    Caption = 'Login'
    Color = 10140754
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Bradley Hand ITC'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 30
    Top = 97
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblSenha: TLabel
    Left = 27
    Top = 124
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object txtNome: TEdit
    Left = 67
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtSenha: TEdit
    Left = 67
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 88
    Top = 172
    Width = 41
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
