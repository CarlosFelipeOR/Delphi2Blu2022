object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculo de Lucro'
  ClientHeight = 397
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 161
    Top = 8
    Width = 137
    Height = 23
    Caption = 'Custo e Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCadastro: TButton
    Left = 153
    Top = 49
    Width = 145
    Height = 25
    Caption = 'Iniciar Cadastros'
    TabOrder = 0
    OnClick = btnCadastroClick
  end
  object mmListaProdutos: TMemo
    Left = 24
    Top = 88
    Width = 425
    Height = 289
    Lines.Strings = (
      '')
    TabOrder = 1
    Visible = False
  end
end
