unit uFrmConsultaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmConsultaPreco = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    pnlCod: TPanel;
    Panel1: TPanel;
    lblkg: TLabel;
    EdtCod: TEdit;
    spFundo: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    Label8: TLabel;
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
  FrmConsultaPreco: TFrmConsultaPreco;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe;

procedure TFrmConsultaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmConsultaPreco.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlCod,12);
end;

procedure TFrmConsultaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key= VK_ESCAPE then
Close;
end;

procedure TFrmConsultaPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
Key :=#0;
if key = #49 then
ShowMessage('Voce apertoiu tecla numero "1"');
if key = #50 then
ShowMessage('Voce apertoiu tecla numero "2"');

end;

end.
