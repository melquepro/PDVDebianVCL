unit uFrmReforcoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCGrids,
  Vcl.DBCtrls, Vcl.Tabs, Vcl.Imaging.pngimage, Vcl.Samples.Gauges, Vcl.ComCtrls,
  ACBrGIF, Vcl.Buttons, Vcl.Imaging.GIFImg, Data.DB;

type
  TFrmReforcoCaixa = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Image1: TImage;
    Label1: TLabel;
    pnlBarCod: TPanel;
    EdtValor: TEdit;
    dsCaixa: TDataSource;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmReforcoCaixa: TFrmReforcoCaixa;

implementation

{$R *.dfm}

uses CommCtrl,uConexao,  Esmaecer.TelaFundo, uPrincipal,
  Funcao.Classe, uDMComERP;

procedure TFrmReforcoCaixa.EdtValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then
begin
    dsCaixa.DataSet.Edit;

    DMComERP.qryCaixadtabertura.AsDateTime:=now;
    // Aqui faz a funcai imprimir comprovante de reforco
  // dsCaixa.DataSet.FieldByname('valreforco').AsFloat;
      dsCaixa.DataSet.FieldByname('idcaixa').AsString := '101';
     dsCaixa.DataSet.FieldByname('idempresa').AsString := '1';
     dsCaixa.DataSet.FieldByname('idusuario').AsString := '1';
  dsCaixa.DataSet.FieldByname('valreforcocx').AsFloat := StrToCurr(EdtValor.Text);
  dsCaixa.DataSet.Post;

  Close;
end;
end;

procedure TFrmReforcoCaixa.EdtValorKeyPress(Sender: TObject; var Key: Char);
var
vValor : Double;
begin

vValor := StrToCurr(EdtValor.Text);
EdtValor.Text:= FormatFloat('##,###,###.00',vValor);


 if Key = #13 then
    begin
    dsCaixa.DataSet.Edit;

    DMComERP.qryCaixadtabertura.AsDateTime:=now;
    // Aqui faz a funcai imprimir comprovante de reforco
  // dsCaixa.DataSet.FieldByname('valreforco').AsFloat;
     dsCaixa.DataSet.FieldByname('idcaixa').AsString := '101';
     dsCaixa.DataSet.FieldByname('idempresa').AsString := '1';
     dsCaixa.DataSet.FieldByname('idusuario').AsString := '1';
       dsCaixa.DataSet.FieldByname('valreforcocx').AsFloat := vValor;

       dsCaixa.DataSet.Post;
  FrmFrCaixa.EdtDescProduto.Visible := false;
  FrmFrCaixa.pnlDescricao.Visible := true;
  FrmFrCaixa.pnlDescricao.Caption := 'REFORÇO CONCLUÍDO';
//      DMComERP.qryCaixavalreforcocx.AsCurrency:= StrToCurr(EdtValor.Text);
      Close;
    end;




// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
begin
Key :=#0;
 end;
end;

procedure TFrmReforcoCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmReforcoCaixa.FormCreate(Sender: TObject);
begin



ArredondaPainel(pnlbarcod,12);
ArredondaPainel(pnlFundo,12);



FrmEsmaecerTela.Show;
FrmEsmaecerTela.AlphaBlendValue := 160;
end;

procedure TFrmReforcoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
if not EdtValor.Focused then
begin
 //(imgProgress.Picture.Graphic as TGIFImage).Animate := False; // Desativa o GIF para digitar o peso caso aperta "ESC"
  EdtValor.Enabled := true;
  EdtValor.SetFocus;
end
else
begin
  FrmFrCaixa.EdtDescProduto.Clear;
  //FrmFrCaixa.EdtDescProduto.SetFocus;
  FrmReforcoCaixa.Close;
end;
end;

procedure TFrmReforcoCaixa.FormResize(Sender: TObject);
begin
  pnlFundo.Top  := Round(FrmReforcoCaixa.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmReforcoCaixa.Width/2 - pnlFundo.Width/2);
end;

end.
