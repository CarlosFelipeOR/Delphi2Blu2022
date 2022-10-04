unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtValorCompra: TEdit;
    Label1: TLabel;
    lblResultado: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure edtValorCompraChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtValorCompraChange(Sender: TObject);
var
  xResultado : Double;

begin
  xResultado := StrToFloatDef(edtValorCompra.Text,0.0)/5;
  lblResultado.Caption := FormatFloat('R$ #0.00', xResultado);
end;

end.
