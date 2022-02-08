unit LoadingItem.TelaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TFrmLoadingItem = class(TForm)
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
  FrmLoadingItem: TFrmLoadingItem;

implementation

{$R *.dfm}

uses uConexao, uPrincipal, Funcao.Classe, Esmaecer.TelaFundo;

procedure TFrmLoadingItem.ThreadFim(Sender: TObject);
begin

  FrmFrCaixa.ListVenda; // Lista Item


    if Assigned(TThread(Sender).FatalException) then
    Close;
        //showmessage(Exception(TThread(Sender).FatalException).Message);
end;

procedure TFrmLoadingItem.CarregaTarefas(iClear : boolean);
var
    sThread : TThread;
begin
    if iClear then

    sThread := TThread.CreateAnonymousThread(
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
            lblMsg.Caption := 'Carregando dados. Aguarde! -'+Line.ToString +'/'+IntToStr(qryGeral.FieldDefs.Count-1);
            TThread.Sleep(1000);
            qryGeral.Next;
           TThread.Synchronize(nil, procedure
            begin
             //Add Item

            end);
            end;
        end;
     end);
    sThread.OnTerminate := ThreadFim;
    sThread.Start;
end;





procedure TFrmLoadingItem.FormActivate(Sender: TObject);
begin
(imgProgress.Picture.Graphic as TGIFImage).Animate := true;

ArredondaPainel(pnlFundo,12);
end;

procedure TFrmLoadingItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmLoadingItem.FormCreate(Sender: TObject);
begin

   FrmEsmaecerTela.Show;
end;

procedure TFrmLoadingItem.FormResize(Sender: TObject);
begin

  pnlFundo.Top  := Round(FrmLoadingItem.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmLoadingItem.Width/2 - pnlFundo.Width/2);
end;

end.
