unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    imgSeta: TImage;
    lblEsseEMaior: TLabel;
    procedure QualEMaior;
    procedure edtNumero1Change(Sender: TObject);
    procedure edtNumero2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtNumero1Change(Sender: TObject);
begin
  QualEMaior;
end;

procedure TForm1.edtNumero2Change(Sender: TObject);
begin
  QualEMaior;
end;

procedure Tform1.QualEMaior;
begin
  if StrToFloatDef(edtNumero1.Text,0.0) > StrToFloatDef(edtNumero2.Text,0.0) then
  begin
    imgSeta.Left := 62;
    lblEsseEMaior.Left := 62;
  end
  else if StrToFloatDef(edtNumero2.Text,0.0) >
          StrToFloatDef(edtNumero1.Text,0.0) then
  begin
    imgSeta.Left := 224;
    lblEsseEMaior.Left := 224;
  end
  else
  begin
    imgSeta.Left := -100;
    lblEsseEMaior.Left := -100;
  end;


end;

end.
