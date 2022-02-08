unit uFrmOpcaoConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmOpcaoConfig = class(TForm)
    pnlFundo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOpcaoConfig: TFrmOpcaoConfig;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe,  uPrincipal;

procedure TFrmOpcaoConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmOpcaoConfig.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
ArredondaPainel(pnlFundo,12);
end;

procedure TFrmOpcaoConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key= VK_ESCAPE then
FrmOpcaoConfig.Close;

end;

procedure TFrmOpcaoConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin

if key = #49 then // Tecla 1
begin
FrmFrCaixa :=  TFrmFrCaixa.Create(nil);
FrmFrCaixa.ShowModal;
FrmOpcaoConfig.Close;

end;
if key = #50 then // Tecla 2
begin
//FrmConfigPeriferico := TFrmConfigPeriferico.Create(Self);
//FrmConfigPeriferico.ShowModal;
FrmOpcaoConfig.Close;

end;
end;


procedure TFrmOpcaoConfig.FormResize(Sender: TObject);
begin
  pnlFundo.Top  := Round(FrmOpcaoConfig.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmOpcaoConfig.Width/2 - pnlFundo.Width/2);
end;

end.
