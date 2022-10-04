program RTM;

uses
  Vcl.Forms,
  UfrmRTL in 'UfrmRTL.pas' {frmRTL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRTL, frmRTL);
  Application.Run;
end.
