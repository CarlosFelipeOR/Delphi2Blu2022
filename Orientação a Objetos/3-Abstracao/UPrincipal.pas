unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Image1: TImage;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);private
{ Private declarations }
  public
{ Public declarations }
end;

  TArma = class
  private
    FModelo: String;
    FMarca: String;
    FQuantMunicao: Integer;
    FAutomatica: Boolean;
    function getAutomatica: Boolean;
    function getMarca: String;
    function getModelo: String;
    function getQuantMunicao: Integer;
    procedure setMarca(const Value: String);
    procedure setModelo(const Value: String);
    procedure setQuantMunicao(const Value: Integer);
    procedure setAutomatica(const Value: Boolean);

  public
    procedure AtirarCabeca;
    procedure AtirarCoracao;
    procedure AtirarPerna;
    procedure Coronhada;

    property Modelo: String read getModelo write setModelo;
    property Marca: String read getMarca write setMarca;
    property QuantMunicao: Integer read getQuantMunicao write setQuantMunicao;
    property Automatica: Boolean read getAutomatica write setAutomatica;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TArma }

procedure TArma.AtirarCabeca;
begin

end;

procedure TArma.AtirarCoracao;
begin

end;

procedure TArma.AtirarPerna;
begin

end;

procedure TArma.Coronhada;
begin

end;

function TArma.getAutomatica: Boolean;
begin
  Result := FAutomatica;
end;

function TArma.getMarca: String;
begin
  Result := FMarca;
end;

function TArma.getModelo: String;
begin
  Result := FModelo;
end;

function TArma.getQuantMunicao: Integer;
begin
  Result := FQuantMunicao;
end;

procedure TArma.setAutomatica(const Value: Boolean);
begin
  FAutomatica := Value;
end;

procedure TArma.setMarca(const Value: String);
begin
  FMarca := Value;
end;

procedure TArma.setModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TArma.setQuantMunicao(const Value: Integer);
begin
  FQuantMunicao := Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CheckBox1.Font.Color := clwhite;
end;

end.
