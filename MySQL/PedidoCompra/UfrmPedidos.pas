unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    FDPedidos: TFDTable;
    dtsPedidos: TDataSource;
    DBNavigator1: TDBNavigator;
    FDPedidosId: TFDAutoIncField;
    FDPedidosNumero: TLongWordField;
    FDPedidosDataPedido: TDateField;
    FDPedidosidComprador: TLongWordField;
    FDPedidosidFornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    FDLookUpComprador: TFDTable;
    dtsComprador: TDataSource;
    FDLookUpCompradorId: TFDAutoIncField;
    FDLookUpCompradorNome: TStringField;
    FDLookUpCompradorCargo: TStringField;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsFornecedor: TDataSource;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    FDLookUpFornecedor: TFDTable;
    FDLookUpFornecedorId: TFDAutoIncField;
    FDLookUpFornecedorCNPJ: TStringField;
    FDLookUpFornecedorNome: TStringField;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    FDItemCompra: TFDTable;
    dtsItemCompra: TDataSource;
    FDItemCompraId: TFDAutoIncField;
    FDItemCompraQuantidade: TFloatField;
    FDItemCompraidPedidoCompra: TLongWordField;
    FDItemCompraidProduto: TLongWordField;
    FDLookUpProdutos: TFDTable;
    FDItemCompraLookUpProduto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDItemCompraBeforePost(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmPedidos.DBGrid1Enter(Sender: TObject);
begin
  FDPedidos.Post;
end;

procedure TfrmPedidos.FDItemCompraBeforePost(DataSet: TDataSet);
begin
  FDItemCompraidPedidoCompra.AsInteger := FDPedidosid.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDPedidos.Close;
  FDLookUpComprador.Close;
  FDLookUpFornecedor.Close;
  FDItemCompra.Close;
  FDLookUpProdutos.Close;

  frmPedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  FDPedidos.Open;
  FDLookUpComprador.Open;
  FDLookUpFornecedor.Open;
  FDItemCompra.Open;
  FDLookUpProdutos.Open;
end;

end.
