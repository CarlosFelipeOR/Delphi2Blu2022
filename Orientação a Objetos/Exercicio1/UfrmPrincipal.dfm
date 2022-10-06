object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = #193'reas Tri'#226'ngulos'
  ClientHeight = 341
  ClientWidth = 333
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
    Left = 133
    Top = 13
    Width = 72
    Height = 16
    Caption = 'Tri'#226'ngulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 51
    Width = 11
    Height = 13
    Caption = 'A:'
  end
  object Label3: TLabel
    Left = 119
    Top = 51
    Width = 10
    Height = 13
    Caption = 'B:'
  end
  object Label4: TLabel
    Left = 223
    Top = 51
    Width = 11
    Height = 13
    Caption = 'C:'
  end
  object Label5: TLabel
    Left = 133
    Top = 95
    Width = 72
    Height = 16
    Caption = 'Tri'#226'ngulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 15
    Top = 131
    Width = 11
    Height = 13
    Caption = 'A:'
  end
  object Label7: TLabel
    Left = 119
    Top = 131
    Width = 10
    Height = 13
    Caption = 'B:'
  end
  object Label8: TLabel
    Left = 223
    Top = 131
    Width = 11
    Height = 13
    Caption = 'C:'
  end
  object lblAreaX: TLabel
    Left = 0
    Top = 232
    Width = 337
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lblAreaY: TLabel
    Left = 0
    Top = 264
    Width = 337
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lblComparacao: TLabel
    Left = 0
    Top = 296
    Width = 337
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object edtTrianguloXA: TEdit
    Left = 29
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object edtTrianguloXB: TEdit
    Left = 133
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object edtTrianguloXC: TEdit
    Left = 237
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object edtTrianguloYA: TEdit
    Left = 29
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object edtTrianguloYB: TEdit
    Left = 133
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object edtTrianguloYC: TEdit
    Left = 237
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOPP: TButton
    Left = 192
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Calcular OPP'
    TabOrder = 7
    OnClick = btnCalcularOPPClick
  end
end
