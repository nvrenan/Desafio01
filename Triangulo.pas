unit Triangulo;

interface

type
  TTriangulo = class(TObject)
  public
    class function GetValorHipotenusa(Cateto1, Cateto2: Double): Double;
  end;

implementation

uses
  Math;

{ TTriangulo }

class function TTriangulo.GetValorHipotenusa(Cateto1, Cateto2: Double): Double;
var
  SomaDosQuadradosDosCatetos: Double;
begin
  SomaDosQuadradosDosCatetos := Power(Cateto1, 2) + Power(Cateto2, 2);
  Result := Sqrt(SomaDosQuadradosDosCatetos);
end;

end.
