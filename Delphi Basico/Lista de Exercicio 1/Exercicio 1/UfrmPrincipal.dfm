object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Soma'
  ClientHeight = 138
  ClientWidth = 296
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 16
    Top = 106
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 120
    Height = 13
    Caption = 'Insira o primeiro n'#250'mero:'
  end
  object Label2: TLabel
    Left = 153
    Top = 24
    Width = 123
    Height = 13
    Caption = 'Insira o segundo n'#250'mero:'
  end
  object edtNumero1: TEdit
    Left = 16
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 152
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnSoma: TButton
    Left = 107
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = btnSomaClick
  end
end
