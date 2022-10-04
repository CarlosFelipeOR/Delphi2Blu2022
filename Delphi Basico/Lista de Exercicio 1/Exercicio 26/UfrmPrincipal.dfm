object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 205
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
    Left = 32
    Top = 48
    Width = 140
    Height = 13
    Caption = 'Escreva um n'#250'mero de 1 a 5:'
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 189
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'N'#250'mero Escrito por extenso:'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 136
    Width = 189
    Height = 89
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object edtNumero: TEdit
    Left = 32
    Top = 67
    Width = 140
    Height = 21
    TabOrder = 0
    OnChange = edtNumeroChange
  end
end
