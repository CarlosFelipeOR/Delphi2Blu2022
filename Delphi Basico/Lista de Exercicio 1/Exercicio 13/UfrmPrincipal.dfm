object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Maior que 10?'
  ClientHeight = 155
  ClientWidth = 204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 0
    Top = 80
    Width = 204
    Height = 54
    Alignment = taCenter
    AutoSize = False
    Caption = 'Esse n'#250'mero n'#227'o '#233' maior que 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object Label2: TLabel
    Left = 40
    Top = 21
    Width = 121
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Insira um n'#250'mero:'
  end
  object edtNumero: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = edtNumeroChange
  end
end
