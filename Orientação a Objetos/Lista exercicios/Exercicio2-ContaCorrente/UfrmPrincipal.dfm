object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 277
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 43
    Width = 63
    Height = 13
    Caption = 'N'#176' da Conta:'
  end
  object Label2: TLabel
    Left = 24
    Top = 91
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 24
    Top = 139
    Width = 60
    Height = 13
    Caption = 'Saldo Inicial:'
  end
  object Label4: TLabel
    Left = 216
    Top = 10
    Width = 113
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = 'Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 224
    Top = 131
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label6: TLabel
    Left = 376
    Top = 69
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label7: TLabel
    Left = 376
    Top = 10
    Width = 113
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = 'Alterar Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 10
    Width = 113
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumero: TEdit
    Left = 24
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 24
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSaldo: TEdit
    Left = 24
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object rbDeposito: TRadioButton
    Left = 224
    Top = 69
    Width = 113
    Height = 17
    Caption = 'Dep'#243'sito'
    TabOrder = 3
  end
  object rbSaque: TRadioButton
    Left = 224
    Top = 98
    Width = 113
    Height = 17
    Caption = 'Saque'
    TabOrder = 4
  end
  object edtOperacao: TEdit
    Left = 224
    Top = 147
    Width = 113
    Height = 21
    TabOrder = 5
  end
  object btnExecutar: TButton
    Left = 241
    Top = 195
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 6
    OnClick = btnExecutarClick
  end
  object btnCriarConta: TButton
    Left = 48
    Top = 195
    Width = 75
    Height = 25
    Caption = 'Criar Conta'
    TabOrder = 7
    OnClick = btnCriarContaClick
  end
  object edtAlterarNome: TEdit
    Left = 376
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object btnAlterarNome: TButton
    Left = 400
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 9
    OnClick = btnAlterarNomeClick
  end
  object Button1: TButton
    Left = 224
    Top = 235
    Width = 113
    Height = 25
    Caption = 'Exibir Saldo Atual'
    TabOrder = 10
    OnClick = Button1Click
  end
  object btnReset: TButton
    Left = 24
    Top = 235
    Width = 121
    Height = 25
    Caption = 'Resetar Cadastro'
    TabOrder = 11
    OnClick = btnResetClick
  end
end
