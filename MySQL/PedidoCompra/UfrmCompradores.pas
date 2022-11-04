unit UfrmCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCompradores = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDTable: TFDTable;
    FDTableId: TFDAutoIncField;
    FDTableNome: TStringField;
    FDTableCargo: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompradores: TfrmCompradores;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmCompradores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDTable.Close;

  frmCompradores := nil;
end;

procedure TfrmCompradores.FormCreate(Sender: TObject);
begin
  FDTable.Open;
end;

end.
