object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 242
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtDia: TEdit
    Left = 16
    Top = 16
    Width = 97
    Height = 21
    TabOrder = 0
    Text = 'Dia'
  end
  object edtTemperatura: TEdit
    Left = 16
    Top = 43
    Width = 97
    Height = 21
    TabOrder = 1
    Text = 'Temperatura'
  end
  object mmHistorico: TMemo
    Left = 16
    Top = 80
    Width = 185
    Height = 145
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 126
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnConsultar: TButton
    Left = 126
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = btnConsultarClick
  end
end
