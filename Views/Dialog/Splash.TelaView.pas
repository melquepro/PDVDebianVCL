unit Splash.TelaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Samples.Gauges;

type
  TFrmSplash = class(TForm)
    pnlFundo: TPanel;
    Image4: TImage;
    Label3: TLabel;
    Label5: TLabel;
    imgFundo: TImage;
    Image2: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Gauge1: TGauge;
    lbQtd: TLabel;
    lblMsg: TLabel;
    Label2: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);



    procedure FormKeyPress(Sender: TObject; var Key: Char);



  private
    { Private declarations }
  public
    { Public declarations }
    FThread : TThread;
    procedure Progress(iClear : boolean);
    procedure ThreadFim(Sender: TObject);

  end;

var
  FrmSplash: TFrmSplash;





implementation

{$R *.dfm}

uses uPrincipal, Funcao.Classe, uFrmLogin;


procedure TFrmSplash.ThreadFim(Sender: TObject);
begin
       Application.CreateForm(TFrmLogin, FrmLogin);
       FrmLogin.ShowModal;
       FrmSplash.Close;
   if Assigned(TThread(Sender).FatalException) then
   FrmSplash.Close;
 // showmessage(Exception(TThread(Sender).FatalException).Message);
end;

procedure TFrmSplash.Progress(iClear : boolean);
begin
    if iClear then

    FThread := TThread.CreateAnonymousThread(
    procedure
    var
     Line : Integer;
    begin
        // Busca

       Gauge1.Progress := 0;

        Line := 0;


         while Line <= Gauge1.Progress do
            begin
            Inc(line);
            //lblMsg.Caption := 'Aguarde, carregando dados... '+Line.ToString +'/'+IntToStr(qryGeral.RecordCount);
            Gauge1.Progress := Gauge1.Progress+1;

             lbQtd.Caption := Line.ToString +'/100';
            TThread.Sleep(100);
           TThread.Synchronize(nil, procedure
            begin
             //Add Item
                     // Inicio eventos
            if Gauge1.Progress = 10 then lblMsg.Visible:= true;
            if Gauge1.Progress = 30 then lblMsg.Caption:= 'Verificando balança...';

            if Gauge1.Progress = 50 then lblMsg.Caption:= 'Verificando impressora...';
            if Gauge1.Progress = 70 then lblMsg.Caption:= 'Verificando informações para emissão de Nota...';
            if Gauge1.Progress = 100 then lblMsg.Caption:= 'Verificando informações para emissão de Nota...';
            // fim eventos
            end);
            end;
          end);
    FThread.OnTerminate := ThreadFim;
    FThread.Start;
end;



procedure TFrmSplash.FormCreate(Sender: TObject);
begin
ArredondaPainel(pnlFundo, 12);
Progress(True);
end;

procedure TFrmSplash.FormKeyPress(Sender: TObject; var Key: Char);
begin
       FThread.Suspend;
       Application.CreateForm(TFrmLogin, FrmLogin);
       FrmLogin.ShowModal;
       FrmSplash.Close;
end;

procedure TFrmSplash.FormResize(Sender: TObject);
begin
  pnlfundo.Top  := Round(FrmSplash.Height/2 - pnlFundo.Height/2);
  pnlfundo.Left := Round(FrmSplash.Width/2 - pnlFundo.Width/2);
end;

end.
