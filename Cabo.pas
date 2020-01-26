unit Cabo;

interface

type
  TCabo = class(TObject)
  public
    class function CalculaCumprimento(TotalDeCabos, PocisaoCabo: Integer; AlturaMaxima, ComprimentoMaximo: Double): Double;
  end;

implementation

{ TComprimentoCabo }

uses Triangulo;

{ TCabo }

class function TCabo.CalculaCumprimento(TotalDeCabos, PocisaoCabo: Integer;
  AlturaMaxima, ComprimentoMaximo: Double): Double;
var
  Cateto1, Cateto2: Double;
begin
  Cateto1 := (AlturaMaxima / TotalDeCabos) * PocisaoCabo;
  Cateto2 := (((ComprimentoMaximo / 2) / TotalDeCabos) * PocisaoCabo);
  Result := TTriangulo.GetValorHipotenusa(Cateto1, Cateto2);
end;

end.
