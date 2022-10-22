object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Bomba Combust'#237'vel'
  ClientHeight = 281
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblAbastecer: TLabel
    Left = 48
    Top = 125
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label1: TLabel
    Left = 16
    Top = 221
    Width = 202
    Height = 13
    Caption = 'Quantidade de Combust'#237'vel na bomba (L):'
  end
  object lblQuantCombustivel: TLabel
    Left = 16
    Top = 245
    Width = 202
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object rgTipoAbastecer: TRadioGroup
    Left = 48
    Top = 24
    Width = 137
    Height = 73
    Caption = 'Abastecer por:'
    Items.Strings = (
      'Valor'
      'Litro')
    TabOrder = 0
  end
  object rgCombustivel: TRadioGroup
    Left = 240
    Top = 24
    Width = 137
    Height = 73
    Caption = 'Combust'#237'vel:'
    Items.Strings = (
      'Gasolina'
      'Etanol')
    TabOrder = 1
    OnClick = rgCombustivelClick
  end
  object edtAbastecer: TEdit
    Left = 48
    Top = 144
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object btnAbastecer: TButton
    Left = 240
    Top = 142
    Width = 137
    Height = 25
    Caption = 'Abastecer'
    TabOrder = 3
    OnClick = btnAbastecerClick
  end
  object btnQuantCombustivel: TButton
    Left = 240
    Top = 240
    Width = 169
    Height = 25
    Caption = 'Adicionar Combust'#237'vel na Bomba'
    TabOrder = 4
    OnClick = btnQuantCombustivelClick
  end
end
