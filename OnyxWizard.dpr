program OnyxWizard;

uses
  Vcl.Forms,
  uFrmConfigPeriferico in 'Views\uFrmConfigPeriferico.pas' {FrmConfigPeriferico},
  Funcao.Classe in 'Classes\Funcao.Classe.pas',
  uConexao in 'Views\uConexao.pas' {DM: TDataModule},
  Esmaecer.MsgErro in 'Views\Dialog\Esmaecer.MsgErro.pas' {FrmMsgErro},
  uFrmLogin in 'Views\uFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMsgErro, FrmMsgErro);
  Application.Run;
end.
