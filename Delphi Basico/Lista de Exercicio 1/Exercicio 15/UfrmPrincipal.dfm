object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 178
  ClientWidth = 192
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
    Top = 37
    Width = 121
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Insira um n'#250'mero:'
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 176
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Esse n'#250'mero est'#225' entre 100 e 200?'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 136
    Width = 176
    Height = 13
    Alignment = taCenter
    AutoSize = False
  end
  object edtNumero: TEdit
    Left = 32
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = edtNumeroChange
  end
end
