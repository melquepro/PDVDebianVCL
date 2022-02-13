program OnyxPDV;

{
Apocalipse 22
…20 Aquele que dá testemunho destas palavras afirma: “Com toda a certeza, venho rapidamente!” Amém. Vem, Senhor Jesus!
.21 A graça do Senhor Jesus seja com todos. Amém!
}

uses
  Vcl.Forms,
  uFrmReforcoCaixa in 'Views\uFrmReforcoCaixa.pas' {FrmReforcoCaixa},
  uFrmLoading in 'Views\Dialog\uFrmLoading.pas' {FrmCarregarTela},
  uFrmFormaPagamento in 'Views\uFrmFormaPagamento.pas' {FrmFormaPagamento},
  uFrmEntrega in 'Views\uFrmEntrega.pas' {FrmEntrega},
  uFrmLogin in 'Views\uFrmLogin.pas' {FrmLogin},
  uFrmOpcaoConfig in 'Views\Dialog\uFrmOpcaoConfig.pas' {FrmOpcaoConfig},
  uConexao in 'Views\uConexao.pas' {DM: TDataModule},
  uFrmAviso in 'Views\uFrmAviso.pas' {FrmAviso},
  uFrmAvisoProcesso in 'Views\uFrmAvisoProcesso.pas' {FrmAvisoProcesso},
  uFrmImpOrcamento in 'Views\uFrmImpOrcamento.pas' {FrmImpOrcamento},
  uFrmConsCliente in 'Views\uFrmConsCliente.pas' {FrmConsCliente},
  uFrmConsPreco in 'Views\uFrmConsPreco.pas' {FrmConsultaPreco},
  uFrmConsProduto in 'Views\uFrmConsProduto.pas' {FrmConsProduto},
  Frame.AvisoProcessos in 'Frame\Frame.AvisoProcessos.pas' {FrameAvisoProcesso: TFrame},
  Frame.CancelarItem in 'Frame\Frame.CancelarItem.pas' {FrameCancelarItem: TFrame},
  Frame.FormaPagamento in 'Frame\Frame.FormaPagamento.pas' {FrameFormaPg: TFrame},
  Frame.ListItem in 'Frame\Frame.ListItem.pas' {FrameListItem: TFrame},
  uConexaoERP in 'Conexao\uConexaoERP.pas' {DMConexaoERP: TDataModule},
  uDMComERP in 'Conexao\uDMComERP.pas' {DMComERP: TDataModule},
  Funcao.Classe in 'Classes\Funcao.Classe.pas',
  Funcao.Format in 'Classes\Funcao.Format.pas',
  uFormat in 'Classes\uFormat.pas',
  Balanca.TelaView in 'Views\Dialog\Balanca.TelaView.pas' {FrmBalanca},
  CancelVenda.TelaView in 'Views\Dialog\CancelVenda.TelaView.pas' {FrmOpcaoCancelVenda},
  Esmaecer.TelaFundo in 'Views\Dialog\Esmaecer.TelaFundo.pas' {FrmEsmaecerTela},
  OpcaoPesquisa.TelaView in 'Views\Dialog\OpcaoPesquisa.TelaView.pas' {FrmOpcaoPesquisa},
  Esmaecer.MsgErro in 'Views\Dialog\Esmaecer.MsgErro.pas' {FrmMsgErro},
  LoadingItem.TelaView in 'Views\Dialog\LoadingItem.TelaView.pas' {FrmLoadingItem},
  OpcaoDescAcres.TelaView in 'Views\Dialog\OpcaoDescAcres.TelaView.pas' {FrmDescAcres},
  Splash.TelaView in 'Views\Dialog\Splash.TelaView.pas' {FrmSplash},
  Tela.LoadingView in 'Views\Dialog\Tela.LoadingView.pas' {FrmCarregaBalanca},
  uPrincipal in 'Views\uPrincipal.pas' {FrmFrCaixa},
  Frame.ResumoVenda in 'Frame\Frame.ResumoVenda.pas' {FrameResumoVenda: TFrame},
  uFrmCancelItem in 'Views\uFrmCancelItem.pas' {FrmCancelItem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmFrCaixa, FrmFrCaixa);
  Application.CreateForm(TFrmMsgErro, FrmMsgErro);
  Application.CreateForm(TFrmEsmaecerTela, FrmEsmaecerTela);
  Application.CreateForm(TFrmEsmaecerTela, FrmEsmaecerTela);
  Application.CreateForm(TDMConexaoERP, DMConexaoERP);
  Application.CreateForm(TDMComERP, DMComERP);
  Application.Run;

end.

