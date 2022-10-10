object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'OOP'
  ClientHeight = 124
  ClientWidth = 193
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
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Animal'
  end
  object btnIniciar: TButton
    Left = 24
    Top = 70
    Width = 145
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object cmbAnimais: TComboBox
    Left = 24
    Top = 43
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
end
