unit Esmaecer.MsgErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmMsgErro = class(TForm)
    pnlMsg: TPanel;
    tmShow: TTimer;
    tmClose: TTimer;
    Image1: TImage;
    procedure tmShowTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmCloseTimer(Sender: TObject);


    procedure MsgText(mText: String; imgIcone:Boolean; pnlCor :TColor);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmMsgErro: TFrmMsgErro;

implementation

{$R *.dfm}

procedure TFrmMsgErro.FormCreate(Sender: TObject);
begin
AlphaBlend := true;
AlphaBlendValue := 0;
end;

procedure TFrmMsgErro.FormShow(Sender: TObject);
begin
FrmMsgErro.Width := 2000;
Enabled := false;
tmShow.Enabled := true;
end;

procedure TFrmMsgErro.MsgText(mText: String; imgIcone:Boolean; pnlCor :TColor);
begin

//FrmMsgErro := TFrmMsgErro.Create(nil);
FrmMsgErro.Show;
pnlMsg.Caption := mText;
pnlMsg.Color := pnlCor;
Image1.Visible := imgIcone;

end;


procedure TFrmMsgErro.tmCloseTimer(Sender: TObject);
begin
try
    AlphaBlendValue :=   AlphaBlendValue - 10;
    if AlphaBlendValue < 255 then
    begin
     tmClose.Enabled := false;
     Close;
    end;
except
      tmShow.Enabled := false;
      ShowMessage('eero');
  end;
end;

procedure TFrmMsgErro.tmShowTimer(Sender: TObject);
begin
try
    AlphaBlendValue :=   AlphaBlendValue + 10;
    if AlphaBlendValue > 254 then
    begin
     tmClose.Enabled := true;
     tmShow.Enabled := false;
     //AlphaBlend := False;
     //Enabled := true;
     end;
Except
on E: Exception do
  begin
      tmShow.Enabled := false;
      tmClose.Enabled := true;
     //ShowMessage('Erro:' + E.Message );
 //   Close;
  end;
end;
end;


end.
