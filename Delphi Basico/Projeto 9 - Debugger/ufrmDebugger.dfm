object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Explorando o Debugger'
  ClientHeight = 241
  ClientWidth = 378
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
    Left = 40
    Top = 16
    Width = 273
    Height = 19
    Caption = 'Explorando o Debugger do Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmAtalhos1: TMemo
    Left = 16
    Top = 48
    Width = 161
    Height = 137
    Lines.Strings = (
      'F7 - Debug - Trace Into'
      'Ctrl + F7 - Evaluate/Modify'
      'F8 - Debug - Step Over'
      'F9 - Run'
      'Ctrl + F9 - Compile Project'
      'F11 - Object Inspector'
      'F12 - Toggle Form/Unit'
      'Ctrl + F12 - Search Units'
      'Shift + F12 - Search Forms'
      'F5 - Adiciona um Break')
    TabOrder = 0
  end
  object mmAtalhos2: TMemo
    Left = 193
    Top = 48
    Width = 161
    Height = 137
    Lines.Strings = (
      'BreakPoints - Ctrl + Alt + B'
      'Call Stack - Ctrl + Alt + S'
      'Watches - Ctrl + Alt + W'
      'Threads - Ctrl + Alt + T')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 136
    Top = 208
    Width = 107
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
