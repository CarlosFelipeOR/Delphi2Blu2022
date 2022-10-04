unit UfrmProceduresFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;


type
  TfrmProceduresFunctions = class(TForm)
    btnProcedure: TButton;
    btnFunction: TButton;
    btnParametrosReferencia: TButton;
    btnParametrosConstantes: TButton;
    btnArrayAberto: TButton;
    btnArrayAbertoConst: TButton;
    btnFormat: TButton;
    btnDataFormatar: TButton;
    btnOverloadFunction: TButton;
    btnParametrosDefault: TButton;
    btnDeclaracaoFoward: TButton;
    procedure btnProcedureClick(Sender: TObject);
    procedure btnFunctionClick(Sender: TObject);
    procedure btnParametrosReferenciaClick(Sender: TObject);
    procedure btnParametrosConstantesClick(Sender: TObject);
    procedure btnArrayAbertoClick(Sender: TObject);
    procedure btnArrayAbertoConstClick(Sender: TObject);
    procedure btnFormatClick(Sender: TObject);
    procedure btnDataFormatarClick(Sender: TObject);
    procedure btnOverloadFunctionClick(Sender: TObject);
    procedure btnParametrosDefaultClick(Sender: TObject);
    procedure btnDeclaracaoFowardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProceduresFunctions: TfrmProceduresFunctions;

implementation

{$R *.dfm}

///// PROCEDURES E FUNCTIONS //////


// Isso � uma procedure
procedure OlaMundo;
begin
  ShowMessage('Ol� Mundo!!!');
end;

//Isso � uma fun��o
function RetornarNomeSobrenome: String;
begin
  Result:= 'Carlos Raymundo'; //ou RetornarNomeSobrenome:= 'Carlos Raymundo
end;

// procedure com par�metro por refer�ncia
procedure DoubleTheValue(var Value: Integer);
begin
  Value := Value * 2;
end;

// Parametros Constantes
function DoubleTheValue2(const Value: Integer): Integer;
begin
  //Value := Value * 2; // Compiler error
  Result := Value;
end;

// Parametros com Array Aberto
function Sum(const A: Array of Integer): Integer;
var
  I: Integer;
begin
  Result := 0;

  for I:= Low(A) to High(A) do
    Result := Result + A[I];
end;

 // Parametros com Array Aberto

procedure TfrmProceduresFunctions.btnArrayAbertoClick(Sender: TObject);
var
  xSoma: Integer;
begin
  xSoma := Sum([1,2,3]);

  ShowMessage(xSoma.ToString);
end;

  // Sobrecarga de fun��es
function Min(A, B: Integer): Integer; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Double): Double; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Extended): Extended; overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

  // Parametros Default
procedure NewMessage (aMsg: String; aCaption: String = 'Message';
                      aSeparator: String = sLineBreak);
var
  xMensagem: String;

begin
  xMensagem := aCaption;
  xMensagem := xMensagem + ': ';
  xMensagem := xMensagem + aMsg;
  xMensagem := xMensagem + aSeparator;

  ShowMessage(xMensagem);

end;

  // Declara��o Forward - Serve pra quando usa uma procedure usa um posterior
  //                      e a procedure posterior usa a anterior.
procedure Hello; forward;
procedure DoubleHello; forward;

Procedure Hello;
begin
  if MessageDlg('Do you want a double message?', mtConfirmation,
                [mbYes, mbNo], 0) = mrYes then
    DoubleHello
  else
    ShowMessage('Hello');
end;

procedure DoubleHello;
begin
  Hello;
  Hello;
end;

//-------- Eventos bot�es: ------------

procedure TfrmProceduresFunctions.btnFormatClick(Sender: TObject);
var
  text: string;
begin
  // Somente 1 item
  ShowMessage(Format('%s',['Hello']));

  // Mistura de texto e dados
  ShowMessage(Format('String = %s', ['Hello']));
  ShowMessage('');

  //Example de cada tipo
  ShowMessage(Format('Decimal            = %d', [-123]));
  ShowMessage(Format('Exponent           = %e', [12345.678]));
  ShowMessage(Format('Fixed              = %f', [12345.678]));
  ShowMessage(Format('General            = %g', [12345.678]));
  ShowMessage(Format('Number             = %n', [12345.678]));
  ShowMessage(Format('Money              = %m', [12345.678]));
  ShowMessage(Format('Pointer            = %p', [addr(text)]));
  ShowMessage(Format('String             = %s', ['Hello']));
  ShowMessage(Format('Unsigned Signal    = %u', [123]));
  ShowMessage(Format('Hexadecimal        = %x', [140]));

end;

procedure TfrmProceduresFunctions.btnFunctionClick(Sender: TObject);
var
  xNomeSobrenome:String;
begin
  xNomeSobrenome := RetornarNomeSobrenome;
  ShowMessage(xNomeSobrenome);
  //� poss�vel substituir por:
  //ShowMessage(RetornarNomeSobrenome);
end;

procedure TfrmProceduresFunctions.btnOverloadFunctionClick(Sender: TObject);
var
  xNum1, xNum2: Integer;
  xNum3, xNum4: Double;
  xNum5, xNum6: Extended;

begin
  xNum1 := 1; xNum2 := 2;
  xNum3 := 1; xNum4 := 2;
  xNum5 := 1; xNum6 := 2;

  ShowMessage(Min(xNum1, xNum2).toString);
  ShowMessage(Min(xNum3, xNum4).toString);
  ShowMessage(Min(xNum5, xNum6).toString);

end;

procedure TfrmProceduresFunctions.btnParametrosConstantesClick(Sender: TObject);
var
  x: Integer;
begin
  x := 10;
  DoubleTheValue2(x);
  ShowMessage(x.ToString);

end;

procedure TfrmProceduresFunctions.btnParametrosDefaultClick(Sender: TObject);
begin
  NewMessage('Something wrong here!');
  NewMessage('Something wrong here!','Attention');
  NewMessage('Somethin wrong here!','Message', '--');
end;

procedure TfrmProceduresFunctions.btnParametrosReferenciaClick(Sender: TObject);
var
  x: Integer;
begin
  x := 10;
  DoubleTheValue(x);
  ShowMessage(x.ToString);
end;

procedure TfrmProceduresFunctions.btnProcedureClick(Sender: TObject);
begin
  OlaMundo;
end;

procedure TfrmProceduresFunctions.btnArrayAbertoConstClick(Sender: TObject);
var
  xNum1: Integer;
  xNum2: Double;

begin
  xNum1 := 20;
  xNum2 := 1500.50;

  ShowMessage(
    Format('Total do caixa � de: %d', [xNum1]));

  ShowMessage(
    Format('Ol� %s, money: %f', ['Carlos', xNum2]));
end;

procedure TfrmProceduresFunctions.btnDataFormatarClick(Sender: TObject);
var
  myDate: TDateTime;

begin
  // Setup our TDateTime variable with a full date and time!
  // 5th of June 2000 at 01:02:02.004 (.004 milli-Seconds)
  myDate := EncodeDateTime(2000, 6, 5, 1, 2, 3, 4);

  //Date only - numeric value with no leading zeroes (except year)
  ShowMessage('d/m/y = ' +
              FormatDateTime('d/m/y', myDate));

  //Date only - Date only - numeric values with no leading zeroes (except year)
  ShowMessage('dd/mm/yy = ' +
              FormatDateTime ('dd/mm/yy', myDate));

  //Use short names for the day, month, and add freeform text ('of')
  ShowMessage(' ddd d of mm yyyy = ' +
              FormatDateTime('ddd d of mm yyyy', myDate));

    // Use long names for the day and month
  ShowMessage('dddd d of mmmm yyyy = '+
              FormatDateTime('dddd d of mmmm yyyy', myDate));

  // Use the ShortDateFormat settings only
  ShowMessage('              ddddd = '+
              FormatDateTime('ddddd', myDate));

  // Use the LongDateFormat settings only
  ShowMessage('             dddddd = '+
              FormatDateTime('dddddd', myDate));

  // Use the ShortDateFormat + LongTimeFormat settings
  ShowMessage('                  c = '+
              FormatDateTime('c', myDate));

end;

procedure TfrmProceduresFunctions.btnDeclaracaoFowardClick(Sender: TObject);
begin
  DoubleHello;
end;

end.
