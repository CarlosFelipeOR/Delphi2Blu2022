object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Verifica N'#250'mero'
  ClientHeight = 217
  ClientWidth = 212
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
    Top = 37
    Width = 87
    Height = 13
    Caption = 'Insira um n'#250'mero:'
  end
  object lblResultado: TLabel
    Left = 0
    Top = 136
    Width = 204
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblResultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object edtNumero: TEdit
    Left = 24
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 64
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end
