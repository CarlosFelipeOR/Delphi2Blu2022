object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 528
  ClientWidth = 397
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
    Top = 29
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object lblCPFCNPJ: TLabel
    Left = 24
    Top = 170
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object lblIdadeIE: TLabel
    Left = 24
    Top = 218
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object edtNome: TEdit
    Left = 24
    Top = 48
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object btnCadastrar: TButton
    Left = 136
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btnCadastrarClick
  end
  object edtEndereco: TEdit
    Left = 24
    Top = 96
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object rbPessoaFisica: TRadioButton
    Left = 80
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Pessoa F'#237'sica'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = rbPessoaFisicaClick
  end
  object rbPessoaJuridica: TRadioButton
    Left = 216
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Pessoa Juridica'
    TabOrder = 3
    OnClick = rbPessoaJuridicaClick
  end
  object edtCPFCNPJ: TEdit
    Left = 24
    Top = 189
    Width = 337
    Height = 21
    TabOrder = 4
  end
  object edtIdadeIE: TEdit
    Left = 24
    Top = 237
    Width = 337
    Height = 21
    TabOrder = 6
  end
  object mmDados: TMemo
    Left = 24
    Top = 328
    Width = 337
    Height = 145
    Lines.Strings = (
      '')
    TabOrder = 7
  end
end
