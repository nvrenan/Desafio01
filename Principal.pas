unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtComprimento: TEdit;
    btnCalcular: TButton;
    lblComprimento: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Ponte;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  CumprimentoDaPonte: Double;
  Ponte: TPonte;
begin
  CumprimentoDaPonte := StrToFloat(edtComprimento.Text);
  Ponte := TPonte.Create(CumprimentoDaPonte);
  try
    ShowMessage(Ponte.Resultado);
  finally
    Ponte.Free;
  end;
end;

end.
