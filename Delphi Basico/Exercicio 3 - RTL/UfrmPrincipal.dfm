object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 322
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
    Left = 16
    Top = 16
    Width = 286
    Height = 22
    Caption = 'Usando a RTL e Tipo de Dados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 53
    Width = 62
    Height = 15
    Caption = 'Valor String'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 40
    Top = 166
    Width = 63
    Height = 16
    Caption = 'Resultado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtEntrada: TEdit
    Left = 40
    Top = 74
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object btnInteiro: TButton
    Left = 40
    Top = 104
    Width = 113
    Height = 25
    Caption = 'Inteiro'
    TabOrder = 1
    OnClick = btnInteiroClick
  end
  object btnData: TButton
    Left = 40
    Top = 135
    Width = 113
    Height = 25
    Caption = 'Data'
    TabOrder = 2
    OnClick = btnDataClick
  end
  object btnPontoFlutuante: TButton
    Left = 160
    Top = 104
    Width = 113
    Height = 25
    Caption = 'Ponto Flutuante'
    TabOrder = 3
    OnClick = btnPontoFlutuanteClick
  end
  object btnDataExtenso: TButton
    Left = 160
    Top = 135
    Width = 113
    Height = 25
    Caption = 'Data (Extenso)'
    TabOrder = 4
    OnClick = btnDataExtensoClick
  end
end
