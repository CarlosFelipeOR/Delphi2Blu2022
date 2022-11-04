unit UfrmFonecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmFornecedores = class(TForm)
    DBNavigator1: TDBNavigator;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1Id: TFDAutoIncField;
    FDTable1CNPJ: TStringField;
    FDTable1Nome: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDTable1.Close;

  frmFornecedores := nil;
end;

procedure TfrmFornecedores.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
end;

end.
