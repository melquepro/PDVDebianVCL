unit OpcaoDescAcres.TelaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmDescAcres = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDescAcres: TFrmDescAcres;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe,
  uPrincipal, uFrmFormaPagamento;

procedure TFrmDescAcres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmDescAcres.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
ArredondaPainel(pnlFundo,12);
end;

procedure TFrmDescAcres.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key= VK_ESCAPE then
FrmDescAcres.Close;

end;

procedure TFrmDescAcres.FormKeyPress(Sender: TObject; var Key: Char);
begin

if key = #49 then // Tecla 1
begin
FrmFormaPagamento.FormaDescAcrescimo;
DescRealPerc := true;  // valore real
FrmDescAcres.Close;
end;
if key = #50 then // Tecla 2
begin
FrmFormaPagamento.FormaDescAcrescimo;
DescRealPerc := false; // valor percentual
FrmDescAcres.Close;

end;
end;

end.
