program Project6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xQtdeEntrada: integer;
  xNumero: Integer;
  I: Integer;
  xSoma: Integer;

begin
  try
    xSoma := 0;

    //Imprimir a soma da quantidade de n�mero de entrada
    Writeln ('Entre com a quantidade total de n�meros: ');
    Readln(xQtdeEntrada);

    for I := 0 to xQtdeEntrada-1 do  //DOWNTO: for I := xQtdeEntrada downto 1 do
    begin
      WriteLn('Entre com o ' + IntToStr (I+1) + '� n�mero: ');
      Readln(xNumero);

      xSoma := xSoma+xNumero;
    end;

    WriteLn ('A soma dos n�meros �: ' + IntToStr(xSoma));
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
