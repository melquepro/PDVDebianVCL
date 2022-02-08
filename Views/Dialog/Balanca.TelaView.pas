unit Balanca.TelaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCGrids,
  Vcl.DBCtrls, Vcl.Tabs, Vcl.Imaging.pngimage, Vcl.Samples.Gauges, Vcl.ComCtrls,
  ACBrGIF, Vcl.Buttons, Vcl.Imaging.GIFImg;

type
  TFrmBalanca = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    pnlBarCod: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    lblMsg: TLabel;
    edtPeso: TEdit;
    lblkg: TLabel;
    imgProgress: TImage;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPesoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmBalanca: TFrmBalanca;

implementation

{$R *.dfm}

uses CommCtrl,uConexao,  Esmaecer.TelaFundo, uPrincipal,
  Funcao.Classe;

procedure TFrmBalanca.edtPesoKeyPress(Sender: TObject; var Key: Char);
begin
// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
key :=#0;
end;

procedure TFrmBalanca.FormActivate(Sender: TObject);
begin
(imgProgress.Picture.Graphic as TGIFImage).Animate := true;
end;

procedure TFrmBalanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmBalanca.FormCreate(Sender: TObject);
var
vPeso : Currency;
begin

vPeso := StrToFloat(edtPeso.Text);
edtPeso.Text:= FormatFloat('##,###,###.000',vPeso);

ArredondaPainel(pnlbarcod,12);
ArredondaPainel(pnlFundo,12);



FrmEsmaecerTela.Show;
FrmEsmaecerTela.AlphaBlendValue := 160;
end;

procedure TFrmBalanca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
if not edtPeso.Focused then
begin
 //(imgProgress.Picture.Graphic as TGIFImage).Animate := False; // Desativa o GIF para digitar o peso caso aperta "ESC"
  lblMsg.Caption := 'Digita o peso';
  edtPeso.Enabled := true;
  edtPeso.SetFocus;
  lblkg.Enabled := true;
  imgProgress.Visible := false;
end
else
begin
  //FrmFrCaixa.EdtDescProduto.Clear;
  //FrmFrCaixa.EdtDescProduto.SetFocus;
  FrmBalanca.Close;
end;
end;

procedure TFrmBalanca.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  //FrmFrCaixa.EdtDescProduto.SetFocus;
  //FrmFrCaixa.pnlDescricao.Visible := true;
  //FrmFrCaixa.pnlDescricao.Caption := 'CAIXA LIVRE';
  Close;
  end;
end;

procedure TFrmBalanca.FormResize(Sender: TObject);
begin
  pnlFundo.Top  := Round(FrmBalanca.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmBalanca.Width/2 - pnlFundo.Width/2);
end;

end.
