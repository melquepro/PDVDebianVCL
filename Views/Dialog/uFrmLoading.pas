unit uFrmLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TFrmCarregarTela = class(TForm)
    qryGeral: TFDQuery;
    pnlFundo: TPanel;
    lblMsg: TLabel;
    imgProgress: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaTarefas(iClear : boolean);
    procedure ThreadFim(Sender: TObject);
  end;

var
  FrmCarregarTela: TFrmCarregarTela;

implementation

{$R *.dfm}

uses uConexao, uPrincipal, Funcao.Classe, Esmaecer.TelaFundo;

procedure TFrmCarregarTela.ThreadFim(Sender: TObject);
begin

   FrmFrCaixa.ListVenda; // Lista Item
  FrmFrCaixa.mDescProduto(true); // Focar no EdtPesquisaCodBarra  do Frente Caixa
   FrmCarregarTela.Close;

    if Assigned(TThread(Sender).FatalException) then
    FrmCarregarTela.Close;
        //showmessage(Exception(TThread(Sender).FatalException).Message);
end;

procedure TFrmCarregarTela.CarregaTarefas(iClear : boolean);
var
    FThread : TThread;
begin
    if iClear then

    FThread := TThread.CreateAnonymousThread(
    procedure
    var
     Line : Integer;
    begin
        // Busca
        qryGeral.Active := false;
        qryGeral.sql.Clear;
        qryGeral.sql.Add('SELECT * FROM ITEM_VENDA ORDER BY IDITEMVENDA');
        qryGeral.Active := true;
        Line := 0;
        qryGeral.First;
        while not qryGeral.Eof do
        begin
         while Line <= qryGeral.FieldDefs.DataSet.RecordCount -1 do
            begin
            Inc(line,1);
            lblMsg.Caption := 'Aguarde, carregando dados... '+Line.ToString +'/'+IntToStr(qryGeral.RecordCount);
            qryGeral.Next;
            TThread.Sleep(1000);
//           TThread.Synchronize(nil, procedure
//            begin
//             //Add Item
//
//            end);
            end;
        end;
     end);
    FThread.OnTerminate := ThreadFim;
    FThread.Start;
end;





procedure TFrmCarregarTela.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
(imgProgress.Picture.Graphic as TGIFImage).Animate := true;
end;

procedure TFrmCarregarTela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmCarregarTela.FormCreate(Sender: TObject);
begin
CarregaTarefas(true);
FrmEsmaecerTela.Show;
end;

procedure TFrmCarregarTela.FormResize(Sender: TObject);
begin

  FrmCarregarTela.Top  := Round(FrmCarregarTela.Height/2 - FrmCarregarTela.Height/2);
  FrmCarregarTela.Left := Round(FrmCarregarTela.Width/2 - FrmCarregarTela.Width/2);
end;

end.
