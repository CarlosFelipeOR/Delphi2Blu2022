unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnVerificar: TButton;
    lblResultado: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Verificar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.Verificar;
var
  xNumero1, xNumero2 : Double;
begin
  if not TryStrToFloat(edtNumero1.Text, xNumero1) then
    raise Exception.Create('Corrija o primeiro n�mero');
  if not TryStrToFloat(edtNumero2.Text, xNumero2) then
    raise Exception.Create('Corrija o segundo n�mero');

  if xNumero1 = xNumero2 then
    lblResultado.Caption := 'Os n�meros s�o iguais'

  else if xNumero1 > xNumero2 then
    lblResultado.Caption := 'Os n�meros s�o diferentes, o n�mero ' +
                             FloatToStr(xNumero1) +
                             ' � maior que o n�mero ' +
                             FloatToStr(xNumero2)
  else if xNumero1 < xNumero2 then
    lblResultado.Caption := 'Os n�meros s�o diferentes, o n�mero ' +
                             FloatToStr(xNumero2) +
                             ' � maior que o n�mero ' +
                             FloatToStr(xNumero1);
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  Self.Verificar;
end;

end.
