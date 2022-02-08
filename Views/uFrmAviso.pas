unit uFrmAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCGrids,
  Vcl.DBCtrls, Vcl.Tabs, Vcl.Imaging.pngimage;

type
  TFrmAviso = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    pnlBarCod: TPanel;
    Label1: TLabel;
    Image1: TImage;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAviso: TFrmAviso;

implementation

{$R *.dfm}

uses uConexao, Esmaecer.TelaFundo, uPrincipal,
  Funcao.Classe;

procedure TFrmAviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmAviso.FormCreate(Sender: TObject);
begin


ArredondaPainel(pnlbarcod,12);
ArredondaPainel(pnlFundo,12);



FrmEsmaecerTela.Show;
FrmEsmaecerTela.AlphaBlendValue := 160;
end;

procedure TFrmAviso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
begin
  FrmAviso.close;
  FrmFrCaixa.mDescProduto(true); // Focar no EdtPesquisaCodBarra  do Frente Caixa
  end;
end;

procedure TFrmAviso.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
begin
  FrmAviso.close;
  FrmFrCaixa.mDescProduto(true); // Focar no EdtPesquisaCodBarra  do Frente Caixa
  end;
end;

procedure TFrmAviso.FormResize(Sender: TObject);
begin

  pnlFundo.Top  := Round(FrmAviso.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmAviso.Width/2 - pnlFundo.Width/2);
end;

end.
