object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conta de Luz'
  ClientHeight = 403
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnIniciar: TButton
    Left = 96
    Top = 32
    Width = 179
    Height = 25
    Caption = 'Iniciar C'#225'lculo da Conta de Luz'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object mmValorConta: TMemo
    Left = 24
    Top = 80
    Width = 329
    Height = 297
    TabOrder = 1
  end
end
