program Debugger;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x, y: Integer;

begin
  try
    x := 5;
    y := 0;

    while (x > 2) do
    begin
      writeln(x);

    //  if x = 4 then  Isso serve para retornar a linha por come�o do while
        //continue;    com o objetivo de pular um trecho que n�o quer execultar
                      // Nesse caso foi criado um loop infinitivo, CUIDAR!!!
      y := y + x;
      x:= x - 1;

      //if x = 3 then  Com isso n�o execultaria a ultima itera��o, usado p/
       // break;       testes
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
