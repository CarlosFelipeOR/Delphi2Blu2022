object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 491
  ClientWidth = 674
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
    Left = 104
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 256
    Top = 56
    Width = 55
    Height = 13
    Caption = 'DataPedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 53
    Height = 13
    Caption = 'Comprador'
  end
  object Label5: TLabel
    Left = 16
    Top = 166
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 140
    Top = 240
    Width = 116
    Height = 18
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = dtsPedidos
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 72
    Width = 70
    Height = 21
    DataField = 'Id'
    DataSource = dtsPedidos
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 72
    Width = 134
    Height = 21
    DataField = 'Numero'
    DataSource = dtsPedidos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 256
    Top = 72
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = dtsPedidos
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 131
    Width = 374
    Height = 21
    DataField = 'idComprador'
    DataSource = dtsPedidos
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsComprador
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 185
    Width = 374
    Height = 21
    DataField = 'idFornecedor'
    DataSource = dtsPedidos
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsFornecedor
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 280
    Width = 374
    Height = 165
    DataSource = dtsItemCompra
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'Id Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookUpProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 396
    Top = 280
    Width = 25
    Height = 165
    DataSource = dtsItemCompra
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object FDPedidos: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.pedidocompra'
    Left = 584
    Top = 64
    object FDPedidosId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDPedidosNumero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDPedidosDataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDPedidosidComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDPedidosidFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object dtsPedidos: TDataSource
    DataSet = FDPedidos
    Left = 480
    Top = 56
  end
  object FDLookUpComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 584
    Top = 120
    object FDLookUpCompradorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDLookUpCompradorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDLookUpCompradorCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object dtsComprador: TDataSource
    DataSet = FDLookUpComprador
    Left = 480
    Top = 120
  end
  object dtsFornecedor: TDataSource
    DataSet = FDLookUpFornecedor
    Left = 480
    Top = 176
  end
  object FDLookUpFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 584
    Top = 176
    object FDLookUpFornecedorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDLookUpFornecedorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDLookUpFornecedorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
  object FDItemCompra: TFDTable
    BeforePost = FDItemCompraBeforePost
    IndexFieldNames = 'idPedidoCompra'
    MasterSource = dtsPedidos
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.itemcompra'
    Left = 584
    Top = 288
    object FDItemCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDItemCompraQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object FDItemCompraidPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDItemCompraidProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDItemCompraLookUpProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookUpProduto'
      LookupDataSet = FDLookUpProdutos
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object dtsItemCompra: TDataSource
    DataSet = FDItemCompra
    Left = 488
    Top = 288
  end
  object FDLookUpProdutos: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 584
    Top = 368
  end
end
