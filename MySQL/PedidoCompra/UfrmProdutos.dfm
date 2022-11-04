object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 339
  ClientWidth = 536
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
    Left = 16
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 91
    Height = 13
    Caption = 'Unidade de Medida'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 194
    Width = 497
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
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
        FieldName = 'Descricao'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookUpUnidadeMedida'
        Title.Caption = 'Unidade Medida'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 72
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 112
    Width = 240
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 155
    Width = 145
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Descricao'
    ListSource = DataSource2
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 456
    Top = 56
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTable1idUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
    object FDTable1LookUpUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'LookUpUnidadeMedida'
      LookupDataSet = FDTableLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idUnidadeMedida'
      Size = 100
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 368
    Top = 56
  end
  object FDTableLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 456
    Top = 112
    object FDTableLookupId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableLookupDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTableLookup
    Left = 368
    Top = 112
  end
end
