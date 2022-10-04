unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    ReajusteSalario1: TMenuItem;
    Sair1: TMenuItem;
    ReajusteSalrios1: TMenuItem;
    ConverteMses1: TMenuItem;
    OrdemCrescente1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
