unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFrmLogin = class(TForm)
    pnlFundo: TPanel;
    rectLogin: TShape;
    rectSenha: TShape;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Edtlogin: TEdit;
    EdtSenha: TEdit;
    Image4: TImage;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    procedure FormResize(Sender: TObject);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtloginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Esmaecer.MsgErro;

procedure TFrmLogin.EdtloginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    EdtSenha.SetFocus;
    EdtSenha.SelectAll;
  end;
end;

procedure TFrmLogin.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin

    // Verificar se for Administrador Mostra a opcaoa de entrar no PDV ou Config
    if (Edtlogin.Text = '1') and (EdtSenha.Text = '1') then
    begin
       //FrmConfigPeriferico := TFrmConfigPeriferico.Create(Self);
       //FrmConfigPeriferico.ShowModal;
      /// FrmLogin.Hide;

    end
    else
    begin
       //rectLogin.Brush.Color := $FFEAEAEA;
       //rectSenha.Brush.Color := $FFEAEAEA;
      Edtlogin.SetFocus;
      FrmMsgErro.MsgText('Usuário ou senha inválido', true, clRed);
    end;
  end;
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
  pnlFundo.Top := Round(FrmLogin.Height / 2 - pnlFundo.Height / 2);
  pnlFundo.Left := Round(FrmLogin.Width / 2 - pnlFundo.Width / 2);
end;

end.
