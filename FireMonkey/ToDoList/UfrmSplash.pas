unit UfrmSplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts;

type
  TfrmSplash = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.fmx}

uses UfrmPrincipal;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.MainForm := frmPrincipal;
  frmPrincipal.Show;

  Timer1.Enabled := False;

  Self.Close;
end;

end.
