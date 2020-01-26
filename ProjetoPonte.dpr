program ProjetoPonte;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Ponte in 'Ponte.pas',
  Cabo in 'Cabo.pas',
  Triangulo in 'Triangulo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
