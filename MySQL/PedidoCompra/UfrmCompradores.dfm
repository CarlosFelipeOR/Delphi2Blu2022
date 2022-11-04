object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 333
  ClientWidth = 600
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
    Top = 48
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 29
    Height = 13
    Caption = 'Cargo'
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
  object DBGrid1: TDBGrid
    Left = 24
    Top = 192
    Width = 545
    Height = 129
    DataSource = DataSource1
    TabOrder = 1
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
        FieldName = 'Nome'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Width = 190
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 61
    Width = 100
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 104
    Width = 240
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 144
    Width = 240
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource1
    TabOrder = 4
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 496
    Top = 72
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTableCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable
    Left = 432
    Top = 72
  end
end
