unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtTempC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xResultado : Double;
begin
  xResultado := (9*StrToFloat(edtTempC.Text)+160) / 5;
  lblResultado.Caption := FloatToStr(xResultado) + ' ° F.';

end;

end.
