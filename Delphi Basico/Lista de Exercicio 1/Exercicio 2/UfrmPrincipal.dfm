object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 184
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 144
    Width = 177
    Height = 16
    Caption = 'O resultado da opera'#231#227'o '#233':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlBottom
  end
  object Label2: TLabel
    Left = 19
    Top = 24
    Width = 120
    Height = 13
    Caption = 'Insira o primeiro n'#250'mero:'
  end
  object Label3: TLabel
    Left = 157
    Top = 24
    Width = 123
    Height = 13
    Caption = 'Insira o segundo n'#250'mero:'
  end
  object lblResultado: TLabel
    Left = 191
    Top = 141
    Width = 10
    Height = 19
    Alignment = taCenter
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object edtNumero1: TEdit
    Left = 19
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 157
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnExecutar: TButton
    Left = 114
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object cmbOperacao: TComboBox
    Left = 78
    Top = 75
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Soma'
    Items.Strings = (
      'Soma'
      'Subtra'#231#227'o'
      'Multiplica'#231#227'o'
      'Divis'#227'o')
  end
end
