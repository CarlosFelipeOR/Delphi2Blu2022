object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 239
  ClientWidth = 308
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
    Left = 16
    Top = 16
    Width = 263
    Height = 22
    Caption = 'COMANDOS DE REPETI'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rdgComandos: TRadioGroup
    Left = 41
    Top = 56
    Width = 216
    Height = 105
    Caption = 'Comandos'
    Items.Strings = (
      'For'
      'While'
      'Repeat')
    TabOrder = 0
  end
  object edtNumero1: TEdit
    Left = 40
    Top = 167
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNumero2: TEdit
    Left = 40
    Top = 194
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnExecutar: TButton
    Left = 182
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = btnExecutarClick
  end
end
