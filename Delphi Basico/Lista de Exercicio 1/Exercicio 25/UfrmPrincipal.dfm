object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Iguais Ou Diferentes?'
  ClientHeight = 281
  ClientWidth = 328
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
    Left = 24
    Top = 37
    Width = 90
    Height = 13
    Caption = 'Insira o 1'#176' N'#250'mero'
  end
  object Label2: TLabel
    Left = 176
    Top = 37
    Width = 90
    Height = 13
    Caption = 'Insira o 2'#176' N'#250'mero'
  end
  object lblResultado: TLabel
    Left = 24
    Top = 152
    Width = 273
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object edtNumero1: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnVerificar: TButton
    Left = 120
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = btnVerificarClick
  end
end
