unit UfrmRTL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRTL = class(TForm)
    btnDLG1: TButton;
    btnDLG2: TButton;
    btnStringReplace: TButton;
    btnTrim: TButton;
    procedure btnDLG1Click(Sender: TObject);
    procedure btnDLG2Click(Sender: TObject);
    procedure btnStringReplaceClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRTL: TfrmRTL;

implementation

{$R *.dfm}

procedure TfrmRTL.btnDLG1Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  //Show a confirmation dialog
  buttonSelected := MessageDLG('Confirma��o',mtError,mbOKCancel, 0);

  //Show the button type selected
  if buttonSelected = mrOK then  ShowMessage('OK pressionado');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressionado');
end;



procedure TfrmRTL.btnDLG2Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a custom dialog
  buttonSelected := MessageDlg('Custom dialog',mtCustom,
                              [mbYes,mbAll,mbCancel], 0);

  // Show the button type selected
  if buttonSelected = mrYes    then ShowMessage('Yes pressed');
  if buttonSelected = mrAll    then ShowMessage('All pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

procedure TfrmRTL.btnStringReplaceClick(Sender: TObject);
var
  before, after : string;

begin
  // Try to replace all occurrences of a or A to THE
  before := 'This is a way to live A big life';

  after  := StringReplace(before, ' a ', ' THE ',
                          [rfReplaceAll, rfIgnoreCase]);
  ShowMessage('Before = '+before);
  ShowMessage('After  = '+after);
end;


procedure TfrmRTL.btnTrimClick(Sender: TObject);
const
  PaddedString = '  Letters     ';
begin
  ShowMessage('[' + TrimLeft(PaddedString)  + ']');
  ShowMessage('[' + TrimRight(PaddedString) + ']');
  ShowMessage('[' + Trim(PaddedString)      + ']');
end;

end.
