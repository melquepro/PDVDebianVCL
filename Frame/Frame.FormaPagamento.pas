unit Frame.FormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameFormaPg = class(TFrame)
    pnlFundo: TPanel;
    shTipoPg: TShape;
    pnlTipoPg: TPanel;
    EdtValor: TEdit;
    lblTipoPg: TLabel;
    procedure FrameResize(Sender: TObject);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses Funcao.Classe;

procedure TFrameFormaPg.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
begin
key :=#0;
end;
end;

procedure TFrameFormaPg.FrameResize(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
end;

end.
