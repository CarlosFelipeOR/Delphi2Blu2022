unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero: TEdit;
    lblResultado: TLabel;
    Label2: TLabel;
    procedure edtNumeroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtNumeroChange(Sender: TObject);
begin
 if StrToFloatDef(edtNumero.Text,0.0) > 10 then
   lblResultado.Caption := ' Esse N�mero � maior que 10'
 else
   lblResultado.Caption := ' Esse N�mero n�o � maior que 10';
end;

end.
