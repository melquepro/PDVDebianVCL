unit uFrmAvisoProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;


type
  TFrmAvisoProcesso = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    pnlDescricao: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sbProcesso: TScrollBox;
    pnSbox: TPanel;
    pnFundo: TPanel;
    EdtSenhaSupervisor: TEdit;
    Button1: TButton;
    pnlFundo: TPanel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }



  public
    { Public declarations }
  end;

var
  FrmAvisoProcesso: TFrmAvisoProcesso;




implementation

{$R *.dfm}

uses Frame.AvisoProcessos, uFrmCancelItem, Frame.CancelarItem, uConexao,
  uPrincipal, Esmaecer.TelaFundo,  Esmaecer.MsgErro, Funcao.Classe;


procedure TFrmAvisoProcesso.Button1Click(Sender: TObject);
begin



   FrmFrCaixa.qryItemVenda.Edit;
   FrmFrCaixa.qryItemVenda.FieldByName('itemcancel').AsString := '1';
   FrmFrCaixa.qryItemVenda.Post;
   FrmFrCaixa.ListVenda;
   close;
   FrmFrCaixa.qryItemVenda.Delete;

end;

procedure TFrmAvisoProcesso.FormActivate(Sender: TObject);
begin
 ArredondaPainel(pnSbox,12);
ArredondaPainel(pnFundo,12);
ArredondaPainel(pnlFundo,12);
end;

procedure TFrmAvisoProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //FrmEsmaecerTela.Hide;
  Action := caFree;
end;

procedure TFrmAvisoProcesso.FormCreate(Sender: TObject);
begin
//FrmEsmaecerTela.Show;
end;


procedure TFrmAvisoProcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin
// Se for cancelar o Item ele edita a coluna "ItemCancel" e depois deleta o item.

if Key = #27 then
close;
FrmCancelItem.gridItem.SetFocus;

// 1 = Cancelado
if key = #13 then
  if EdtSenhaSupervisor.Text = '1' then
   begin
      Button1.Click; // Clique para deletar item
      close; // Fecha a tela se a senha estiver certa
   end
   else
   FrmMsgErro.MsgText('Usuario não encontrado',true,clRed);
   EdtSenhaSupervisor.Clear;
   EdtSenhaSupervisor.SetFocus;
   // Se estiver errado permanece na tela e mostra um efeito de avisso que usuario nao permitido
end;

procedure TFrmAvisoProcesso.FormResize(Sender: TObject);
begin



 pnlFundo.Top  := Round(FrmAvisoProcesso.Height/2 - pnlFundo.Height/2);
 pnlFundo.Left := Round(FrmAvisoProcesso.Width/2 - pnlFundo.Width/2);
end;

procedure TFrmAvisoProcesso.FormShow(Sender: TObject);
var
 FrameProcesso: TFrameAvisoProcesso; // Frame da tela de Libera Processos
 sUN, sVlrTotal : String;
begin

      FrameProcesso := TFrameAvisoProcesso.Create(nil);
      FrameProcesso.Align := alTop;
      FrameProcesso.Parent:= sbProcesso;
      FrameProcesso.Top := sbProcesso.Top + sbProcesso.Height;
      FrameProcesso.Height := 75;

      sUN := FrmCancelItem.qryConsItem.FieldByName('medida').AsString;
      sVlrTotal := FormatFloat('R$ #,##0.00', StrToFloat(FrmCancelItem.qryConsItem.FieldByName('vlrtotal').AsString));

      FrameProcesso.lblSeqItem.Caption        :=  FrmCancelItem.qryConsItem.FieldByName('idproduto').AsString;
      FrameProcesso.lblDescricaoItem.Caption  :=  'Cancelar o item '+FrmCancelItem.qryConsItem.FieldByName('descproduto').AsString+' '+sUN+' no valor de '+sVlrTotal;
      FrameProcesso.lblMotivo.Caption         := 'Motivo: CANCELAMENTO CUPOM';
      sbProcesso.ScrollInView(FrameProcesso);
end;

end.
