unit UTriangulo;

interface

type
  TTriangulo = class
    private
      FA: Double;
      FB: Double;
      FC: Double;

      function getA: double;
      function getB: double;
      function getC: double;

      procedure setA(const Value: double);
      procedure setB(const Value: double);
      procedure setC(const Value: double);

    public

    function Area:Double;

    property A: double read getA write setA;
    property B: double read getB write setB;
    property C: double read getC write setC;
  end;

implementation


{ TTriangulo }

function TTriangulo.Area: Double;
var
  xP: Double;
begin
  xP       := (FA + FB + FC) / 2;
  Result   :=  Sqrt (xP * (xP - FA) *  (xP - FB) * (xP - FC));
end;

function TTriangulo.getA: double;
begin
  result := FA;
end;

function TTriangulo.getB: double;
begin
  result := FB;
end;

function TTriangulo.getC: double;
begin
  result := FC;
end;

procedure TTriangulo.setA(const Value: double);
begin
  FA := Value;
end;

procedure TTriangulo.setB(const Value: double);
begin
  FB := Value;
end;

procedure TTriangulo.setC(const Value: double);
begin
  FC := Value;
end;

end.
