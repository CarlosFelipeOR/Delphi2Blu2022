unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtCusto: TEdit;
    edtImposto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResultado: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtPercentDistribuidor: TEdit;
    procedure CalculoValorVenda;
    procedure edtCustoChange(Sender: TObject);
    procedure edtImpostoChange(Sender: TObject);
    procedure edtPercentDistribuidorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalculoValorVenda;
var
  xResultado : Double;

begin
  xResultado := StrToFloatDef(edtCusto.Text,0.00) *
                (1 + StrToFloatDef(edtImposto.text,0.00)/100) *
                (1 + StrToFloatDef(edtPercentDistribuidor.text,0.00)/100);
  lblResultado.Caption := FormatFloat('R$ #0.00', xResultado);
end;


procedure TForm1.edtImpostoChange(Sender: TObject);
begin
  CalculoValorVenda;
end;

procedure TForm1.edtPercentDistribuidorChange(Sender: TObject);
begin
  CalculoValorVenda;
end;

procedure TForm1.edtCustoChange(Sender: TObject);
begin
  CalculoValorVenda;
end;

end.
