object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 406
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
    Left = 39
    Top = 8
    Width = 326
    Height = 23
    Caption = 'Calculo de descontos nos ve'#237'culos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 128
    Top = 49
    Width = 145
    Height = 25
    Caption = 'Calcular Descontos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mmValoresCalculados: TMemo
    Left = 24
    Top = 88
    Width = 353
    Height = 194
    Lines.Strings = (
      '')
    TabOrder = 1
  end
end
