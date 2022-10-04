unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    edtNumero: TEdit;
    Label1: TLabel;
    btnVerificar: TButton;
    lblResultado: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaNumero;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.VerificaNumero;
var
  xNumero : Double;
begin
  if not TryStrToFloat(edtNumero.Text,xNumero) then
    raise Exception.Create('Erro: Insira um número');

  if xNumero > 80 then
    lblResultado.Caption := 'O número é maior que 80'
  else if xNumero < 25 then
    lblResultado.Caption := 'O número é menor que 25'
  else if xNumero = 40 then
    lblResultado.Caption := 'O número é igual a 40'
  else
    lblResultado.Caption := 'O número é INVÁLIDO';

  lblResultado.Visible := True;
end;

procedure TFrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  Self.VerificaNumero;
end;

end.
