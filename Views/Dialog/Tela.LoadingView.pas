unit Tela.LoadingView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmCarregaBalanca = class(TForm)
    pnlFundo: TPanel;
    imgProgress: TImage;
    lblPeso: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarregaBalanca: TFrmCarregaBalanca;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe;

procedure TFrmCarregaBalanca.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
(imgProgress.Picture.Graphic as TGIFImage).Animate := true;
end;

procedure TFrmCarregaBalanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FrmEsmaecerTela.Hide;
end;

procedure TFrmCarregaBalanca.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
end;

procedure TFrmCarregaBalanca.FormResize(Sender: TObject);
begin
  pnlFundo.Top  := Round(FrmCarregaBalanca.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmCarregaBalanca.Width/2 - pnlFundo.Width/2);
end;

end.
