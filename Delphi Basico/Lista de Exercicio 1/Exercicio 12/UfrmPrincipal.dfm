object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Valor de Venda'
  ClientHeight = 301
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
    Left = 105
    Top = 61
    Width = 94
    Height = 13
    Caption = 'Custo F'#225'brica (R$):'
  end
  object Label2: TLabel
    Left = 105
    Top = 109
    Width = 62
    Height = 13
    Caption = 'Imposto(%):'
  end
  object Label3: TLabel
    Left = 0
    Top = 24
    Width = 366
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Valor Final do Carro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 0
    Top = 256
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
    Top = 229
    Width = 366
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'O valor de venda ser'#225':'
  end
  object Label5: TLabel
    Left = 105
    Top = 157
    Width = 131
    Height = 13
    Caption = 'Acr'#233'scimo Distribuidor (%):'
  end
  object edtCusto: TEdit
    Left = 105
    Top = 80
    Width = 144
    Height = 21
    TabOrder = 0
    OnChange = edtCustoChange
  end
  object edtImposto: TEdit
    Left = 105
    Top = 128
    Width = 144
    Height = 21
    TabOrder = 1
    Text = '45'
    OnChange = edtImpostoChange
  end
  object edtPercentDistribuidor: TEdit
    Left = 105
    Top = 176
    Width = 144
    Height = 21
    TabOrder = 2
    Text = '28'
    OnChange = edtPercentDistribuidorChange
  end
end
