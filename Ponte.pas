unit Ponte;

interface

uses
  System.Classes;

type
  TPonte = class(TObject)
  private
    FListaResultado: TStringList;
    FAlturaMaxima: Double;
    FComprimento: Double;
    FQtdeTotalComprimentoDeCabos: Double;
    function getResultado: string;
  public
    property QtdeTotalComprimentoDeCabos: Double read FQtdeTotalComprimentoDeCabos;
    property Resultado: string read getResultado;
    constructor Create(Comprimento: Double; QtdCabos: Integer = 5; Proporcao: Integer = 20; QtdHastes: Integer = 4); reintroduce;
    destructor Destroy; override;
  end;

implementation

{ TPonte }

uses Math, System.SysUtils, Cabo;

constructor TPonte.Create(Comprimento: Double; QtdCabos: Integer = 5; Proporcao: Integer = 20; QtdHastes: Integer = 4);
var
  I: Integer;
  SomaDaExtensaoDosCabos, ExtensaoCaboAtual: Double;
begin
  FComprimento := Comprimento;
  FAlturaMaxima := (FComprimento / Proporcao);

  FListaResultado := TStringList.Create;
  FListaResultado.Add('Comprimento ponte: ' + FloatToStr(FComprimento) + ' m.');
  FListaResultado.Add('Altura haste: ' + FloatToStr(FAlturaMaxima) + ' m.');

  SomaDaExtensaoDosCabos := 0;
  for I := 1 to QtdCabos do
  begin
    ExtensaoCaboAtual := TCabo.CalculaCumprimento(QtdCabos, I, FAlturaMaxima, FComprimento);
    SomaDaExtensaoDosCabos := SomaDaExtensaoDosCabos + ExtensaoCaboAtual;
    FListaResultado.Add('Comprimento da ' + IntToStr(I) + 'º corda: ' +
                        FloatToStr(ExtensaoCaboAtual) + ' m.');
  end;
  FListaResultado.Add('Comprimento total corda para metede de um lado: ' +
                      FloatToStr(SomaDaExtensaoDosCabos) + ' m.');

  FQtdeTotalComprimentoDeCabos := SomaDaExtensaoDosCabos * QtdHastes;
  FListaResultado.Add('Comprimento total corda ponte: ' +
                      FloatToStr(FQtdeTotalComprimentoDeCabos) + ' m.');
end;

destructor TPonte.Destroy;
begin
  FListaResultado.Free;
  inherited;
end;

function TPonte.getResultado: string;
begin
  Result := FListaResultado.Text;
end;

end.
