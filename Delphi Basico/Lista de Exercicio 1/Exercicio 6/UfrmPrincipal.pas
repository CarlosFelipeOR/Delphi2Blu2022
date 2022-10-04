unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtVariavelA: TEdit;
    edtVariavelB: TEdit;
    Image1: TImage;
    btnTrocar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnTrocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTrocarClick(Sender: TObject);
var
  xvariavelA, xvariavelB, xVariavelControle : String;
begin
  xvariavelA := edtVariavelA.text;
  xvariavelB := edtVariavelB.text;
  xVariavelControle := xVariavelA;
  xVariavelA := xVariavelB;
  xVariavelB := xVariavelControle;
  edtVariavelA.text :=  xVariavelA;
  edtVariavelB.text :=  xVariavelB;

end;

end.
