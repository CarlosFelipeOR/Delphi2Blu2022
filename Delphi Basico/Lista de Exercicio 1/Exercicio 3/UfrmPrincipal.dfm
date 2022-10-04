object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumo M'#233'dio'
  ClientHeight = 154
  ClientWidth = 309
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
    Top = 37
    Width = 123
    Height = 13
    Caption = 'Dist'#226'ncia Percorrida (km):'
  end
  object Label2: TLabel
    Left = 8
    Top = 125
    Width = 186
    Height = 13
    Caption = 'O Consumo m'#233'dio desse autom'#243'vel '#233': '
  end
  object lblResultado: TLabel
    Left = 200
    Top = 123
    Width = 29
    Height = 16
    Caption = 'km/l'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 287
    Height = 16
    Caption = 'C'#193'LCULO DE CONSUMO M'#201'DIO DE UM VE'#205'CULO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 161
    Top = 37
    Width = 108
    Height = 13
    Caption = 'Combust'#237'vel gasto (L):'
  end
  object edtDistancia: TEdit
    Left = 16
    Top = 56
    Width = 127
    Height = 21
    TabOrder = 0
  end
  object edtCombustivel: TEdit
    Left = 159
    Top = 56
    Width = 130
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 114
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
