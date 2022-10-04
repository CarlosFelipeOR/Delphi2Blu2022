object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 396
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
    Left = 72
    Top = 8
    Width = 248
    Height = 19
    Caption = 'Positivos, Negativos ou Zeros?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIniciar: TButton
    Left = 128
    Top = 52
    Width = 131
    Height = 25
    Caption = 'Iniciar Verfica'#231#227'o'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object mmListaNumeros: TMemo
    Left = 8
    Top = 104
    Width = 378
    Height = 169
    TabOrder = 1
  end
end
