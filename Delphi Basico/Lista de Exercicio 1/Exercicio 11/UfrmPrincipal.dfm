object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Valor de Venda'
  ClientHeight = 225
  ClientWidth = 366
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
    Left = 25
    Top = 69
    Width = 101
    Height = 13
    Caption = 'Pre'#231'o de Custo (R$):'
  end
  object Label2: TLabel
    Left = 191
    Top = 69
    Width = 74
    Height = 13
    Caption = 'Acr'#233'scimo (%):'
  end
  object Label3: TLabel
    Left = 0
    Top = 24
    Width = 366
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'C'#225'lculo de valor de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 0
    Top = 176
    Width = 366
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 149
    Width = 366
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'O valor de venda ser'#225':'
  end
  object edtCusto: TEdit
    Left = 25
    Top = 88
    Width = 144
    Height = 21
    TabOrder = 0
    OnChange = edtCustoChange
  end
  object edtAcrescimo: TEdit
    Left = 191
    Top = 88
    Width = 144
    Height = 21
    TabOrder = 1
    OnChange = edtAcrescimoChange
  end
end
