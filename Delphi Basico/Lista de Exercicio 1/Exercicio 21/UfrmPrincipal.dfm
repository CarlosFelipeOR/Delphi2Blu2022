object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Servi'#231'o Militar'
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
  object lblTitulo: TLabel
    Left = 128
    Top = 8
    Width = 138
    Height = 23
    Caption = 'Servi'#231'o Militar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCadastro: TButton
    Left = 128
    Top = 49
    Width = 145
    Height = 25
    Caption = 'Iniciar Cadastros'
    TabOrder = 0
    OnClick = btnCadastroClick
  end
  object mmListaAptos: TMemo
    Left = 24
    Top = 88
    Width = 161
    Height = 194
    Lines.Strings = (
      '')
    TabOrder = 1
    Visible = False
  end
  object mmListaNaoAptos: TMemo
    Left = 216
    Top = 88
    Width = 161
    Height = 194
    Lines.Strings = (
      '')
    TabOrder = 2
    Visible = False
  end
end
