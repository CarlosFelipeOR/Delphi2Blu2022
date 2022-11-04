unit UfrmUnMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.DataSet,
  Vcl.ExtCtrls, FireDAC.Comp.Client;

type
  TfrmUnMedida = class(TForm)
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    FDTable1Id: TFDAutoIncField;
    FDTable1Descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnMedida: TfrmUnMedida;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmUnMedida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  FDTable1.Close;

  frmUnMedida := nil;
end;

procedure TfrmUnMedida.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
end;

end.
