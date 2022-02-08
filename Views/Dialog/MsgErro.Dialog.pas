unit MsgErro.Dialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmMsgErro = class(TForm)
    pnlMsg: TPanel;
    tmShow: TTimer;
    tmClose: TTimer;
    procedure tmShowTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmCloseTimer(Sender: TObject);
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
tmShow.Enabled := true;
end;

procedure TFrmMsgErro.tmCloseTimer(Sender: TObject);
begin
try
    AlphaBlendValue :=   AlphaBlendValue - 10;
    if AlphaBlendValue > 11 then
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
     AlphaBlend := False;
     //Close;
    end;
except
      tmShow.Enabled := false;
      tmClose.Enabled := true;
      ShowMessage('eero');
    end;
  end;
end.
