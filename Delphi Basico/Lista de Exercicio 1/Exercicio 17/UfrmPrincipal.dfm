object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 197
  ClientWidth = 427
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
    Top = 104
    Width = 425
    Height = 73
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 0
    Top = 16
    Width = 425
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cadastre 80 n'#250'meros e verifique quantos est'#227'o entre 10 e 150:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIniciar: TButton
    Left = 120
    Top = 56
    Width = 177
    Height = 25
    Caption = 'Iniciar Cadastro dos N'#250'meros'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
end
