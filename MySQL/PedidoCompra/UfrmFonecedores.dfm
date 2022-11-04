object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
  ClientHeight = 336
  ClientWidth = 558
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
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 72
    Width = 50
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 112
    Width = 240
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 152
    Width = 240
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 200
    Width = 505
    Height = 112
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 300
        Visible = True
      end>
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 416
    Top = 32
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 352
    Top = 32
  end
end