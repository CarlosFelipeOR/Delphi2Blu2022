program Project9;

uses
  Vcl.Forms,
  ufrmDebugger in 'ufrmDebugger.pas' {Form1},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
