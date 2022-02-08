unit uFrmConfigPeriferico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, ACBrBase, ACBrBAL, Vcl.Samples.Spin, Vcl.NumberBox,
  ACBrPosPrinter, Vcl.Mask, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg,
  IdBaseComponent, IdComponent, IdIPWatch;

type
  TFrmConfigPeriferico = class(TForm)
    Panel1: TPanel;
    spBtnFechar: TSpeedButton;
    pgConfg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlMenu: TPanel;
    ImageList1: TImageList;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    CAIXA: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Edit1: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Line: TSplitter;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Shape2: TShape;
    SpeedButton7: TSpeedButton;
    rectGravarKey: TShape;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1idteclado: TFDAutoIncField;
    FDQuery1descrfuncao: TStringField;
    FDQuery1descrkeycode: TStringField;
    qryConfigBalanca: TFDQuery;
    Label8: TLabel;
    rgUso: TDBRadioGroup;
    Label7: TLabel;
    dsConfigBalanca: TDataSource;
    shModelo: TShape;
    shPorta: TShape;
    Label9: TLabel;
    spBitRate: TShape;
    Label10: TLabel;
    shParidade: TShape;
    Label11: TLabel;
    Label12: TLabel;
    shBitDados: TShape;
    Label14: TLabel;
    shBitstop: TShape;
    Label15: TLabel;
    sbGravarTeste: TSpeedButton;
    shBtnGrava: TShape;
    shFluxo: TShape;
    Label17: TLabel;
    cmbBalanca: TDBComboBox;
    cmbPortaSerial: TDBComboBox;
    cmbBaudRate: TDBComboBox;
    cmbParity: TDBComboBox;
    cmbDataBits: TDBComboBox;
    cmbStopBits: TDBComboBox;
    cmbHandShaking: TDBComboBox;
    ACBrBAL1: TACBrBAL;
    qryConfigBalancaidbalanca: TFDAutoIncField;
    qryConfigBalancabalmodelo: TStringField;
    qryConfigBalancaportacom: TStringField;
    qryConfigBalancabitsegundo: TIntegerField;
    qryConfigBalancabitdados: TIntegerField;
    qryConfigBalancaparidade: TStringField;
    qryConfigBalancabitsstop: TStringField;
    qryConfigBalancautilizar: TIntegerField;
    qryConfigBalancaHandshaking: TStringField;
    lblPeso: TLabel;
    sTimer: TTimer;
    Label13: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape4: TShape;
    Shape7: TShape;
    impPorta: TDBComboBox;
    Shape8: TShape;
    Label22: TLabel;
    Shape9: TShape;
    Label23: TLabel;
    impModelo: TDBComboBox;
    Shape10: TShape;
    Label24: TLabel;
    Label25: TLabel;
    impPagCod: TDBComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Shape11: TShape;
    Label28: TLabel;
    Shape12: TShape;
    qryConfigImpressora: TFDQuery;
    dsConfigImpressora: TDataSource;
    qryConfigImpressoraidimpressora: TFDAutoIncField;
    qryConfigImpressoraimpressora_modelo: TStringField;
    qryConfigImpressoraportacomusb: TStringField;
    qryConfigImpressoracolunas: TIntegerField;
    qryConfigImpressoralinhapular: TIntegerField;
    qryConfigImpressoraespacoslinha: TIntegerField;
    qryConfigImpressorapagcod: TStringField;
    qryConfigImpressorabuffer: TIntegerField;
    EdtEspacoLinha: TDBEdit;
    ACBrPosPrinter1: TACBrPosPrinter;
    EdtPulaLinha: TDBEdit;
    EdtColuna: TDBEdit;
    SpeedButton10: TSpeedButton;
    rbManual: TRadioButton;
    rbAuto: TRadioButton;
    qryConfigImpressoratipo_impressao: TStringField;
    Memo1: TMemo;
    pnlRede: TPanel;
    pnLine: TPanel;
    BtnPDV: TPanel;
    BtnImpressora: TPanel;
    BtnTeclas: TPanel;
    BtnCaixa: TPanel;
    BtnGaveta: TPanel;
    BtnBalanca: TPanel;
    CheckBox4: TCheckBox;
    TabSheet6: TTabSheet;
    Label21: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit2: TEdit;
    Shape5: TShape;
    Shape13: TShape;
    Edit3: TEdit;
    Shape14: TShape;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label4: TLabel;
    rectResetKey: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    sbGravarKey: TSpeedButton;
    sbRestPadraoKey: TSpeedButton;
    Panel2: TPanel;
    pnlGrid: TPanel;
    pnlAvisoBalanca: TPanel;
    imgGif: TImage;
    lblMsgBalanca: TLabel;
    rgConexao: TDBRadioGroup;
    EdtIP: TDBEdit;
    Shape3: TShape;
    Label31: TLabel;
    Shape6: TShape;
    EdtSubRede: TDBEdit;
    Label32: TLabel;
    EdtGateway: TDBEdit;
    Label33: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    EdtDNS1: TDBEdit;
    Label34: TLabel;
    Shape17: TShape;
    EdtDNS2: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    SpeedButton2: TSpeedButton;
    Shape18: TShape;
    pnlAvisoPDV: TPanel;
    imgGIF2: TImage;
    Label37: TLabel;
    qryConfigIP: TFDQuery;
    dsConfigIP: TDataSource;
    qryConfigIPidrede: TFDAutoIncField;
    qryConfigIPtipo_conexao: TIntegerField;
    qryConfigIPaddressip: TStringField;
    qryConfigIPsubrede: TStringField;
    qryConfigIPgateway: TStringField;
    qryConfigIPdns1: TStringField;
    qryConfigIPdns2: TStringField;
    Label38: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Shape19: TShape;
    SpeedButton3: TSpeedButton;
    procedure spBtnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure sbGravarTesteClick(Sender: TObject);
    procedure sTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pgConfgDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure SpeedButton10Click(Sender: TObject);
    procedure rbAutoClick(Sender: TObject);
    procedure rbManualClick(Sender: TObject);
    procedure BtnTeclasClick(Sender: TObject);
    procedure BtnImpressoraClick(Sender: TObject);
    procedure BtnBalancaClick(Sender: TObject);
    procedure BtnCaixaClick(Sender: TObject);
    procedure BtnPDVMouseEnter(Sender: TObject);
    procedure pnlRedeClick(Sender: TObject);
    procedure BtnPDVClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgUsoChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure rgConexaoChange(Sender: TObject);
    procedure BtnGavetaClick(Sender: TObject);
  private
    { Private declarations }
     Function Converte( cmd : String) : String;
     procedure AtivarBalanca;
     procedure AtivarPosPrinter;
     procedure ConfigurarPosPrinter;
     procedure AdicionarLinhaImpressao(ALinha: String);
     procedure AdicionarImpressora;
     procedure SearchPrint;
     procedure ResetIPDNS;
     procedure OcultarEdit;

  public
    { Public declarations }
     Segundos : Integer;
     TimeOut : Integer;
  end;

  type
  tmControl     = class(TControl);

var
  FrmConfigPeriferico: TFrmConfigPeriferico;

implementation

{$R *.dfm}

Uses
  typinfo,
  ACBrUtil, ACBrDeviceSerial, Funcao.Classe, uConexao,
  Esmaecer.MsgErro,  IniFiles, dateutils, math, strutils,
   ACBrDelphiZXingQRCode,ShellApi;


procedure TFrmConfigPeriferico.AdicionarImpressora;
var
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin



  impModelo.Items.Clear ;
  For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     impModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  impPagCod.Items.Clear ;
  For O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     impPagCod.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

end;

procedure TFrmConfigPeriferico.AdicionarLinhaImpressao(ALinha: String);
begin
 Memo1.Lines.Add(ALinha);
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Imprimir(ALinha);
end;


procedure TFrmConfigPeriferico.ConfigurarPosPrinter;
begin
  //AdicionarLinhaLog('- ConfigurarPosPrinter');
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( impModelo.ItemIndex );
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( impPagCod.ItemIndex );
  ACBrPosPrinter1.Porta := impPorta.Text;
  ACBrPosPrinter1.ColunasFonteNormal := StrToInt(EdtColuna.Text);
  ACBrPosPrinter1.LinhasEntreCupons := StrToInt(EdtPulaLinha.Text);
  ACBrPosPrinter1.EspacoEntreLinhas := StrToInt(EdtEspacoLinha.Text);
end;

procedure TFrmConfigPeriferico.AtivarPosPrinter;
begin
 // AdicionarLinhaLog('- AtivarPosPrinter');
  ConfigurarPosPrinter;
  if (ACBrPosPrinter1.Porta <> '') then
    ACBrPosPrinter1.Ativar
  else
    raise Exception.Create('Porta não definida');
end;


procedure TFrmConfigPeriferico.AtivarBalanca;
begin
  // se houver conexão aberta, Fecha a conexão
try
   if acbrBal1.Ativo then
      ACBrBAL1.Desativar;

   // configura porta de comunicação
   ACBrBAL1.Modelo           := TACBrBALModelo( cmbBalanca.ItemIndex );
   ACBrBAL1.Device.HandShake := TACBrHandShake( cmbHandShaking.ItemIndex );
   ACBrBAL1.Device.Parity    := TACBrSerialParity( cmbParity.ItemIndex );
   ACBrBAL1.Device.Stop      := TACBrSerialStop( cmbStopBits.ItemIndex );
   ACBrBAL1.Device.Data      := StrToInt( cmbDataBits.text );
   ACBrBAL1.Device.Baud      := StrToInt( cmbBaudRate.Text );
   ACBrBAL1.Device.Porta     := cmbPortaSerial.Text;
   //ACBrBAL1.ArqLOG           := edLog.Text;
   // Conecta com a balança
   ACBrBAL1.Ativar;
except
ACBrBAL1.Desativar;
//ShowMessage('Não conectou balanca');
end;
end;

function TFrmConfigPeriferico.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + ' ';
  end ;
end;



procedure TFrmConfigPeriferico.rgConexaoChange(Sender: TObject);
begin


     OcultarEdit; // Ativar Edits


end;

procedure TFrmConfigPeriferico.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var
valid : integer;
begin

 lblPeso.Caption := formatFloat('##0.000', Peso );

 if Peso > 0 then
 begin
  sTimer.Enabled := false;
  FrmMsgerro.MsgText('Configuração salva com sucesso!',false,$0085DE60);
  qryConfigBalanca.Edit;
  qryConfigBalanca.Post;
  sbGravarTeste.Caption := 'Gravar e Testar';
  pnlMenu.Enabled := true;
  pnlAvisoBalanca.Visible := false;
 end
   else
    begin
      valid := Trunc(ACBrBAL1.UltimoPesoLido);

      case valid of
         0 : begin
         FrmMsgerro.MsgText('Não foi possível capturar o Peso',false,clRed);
         sbGravarTeste.Caption := 'Gravar e Testar';
         pnlMenu.Enabled := true;
         pnlAvisoBalanca.Visible := false;
         end;
      end;
    end;
end;

procedure TFrmConfigPeriferico.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlGrid,12);
(imgGif.Picture.Graphic as TGIFImage).Animate := true;
(imgGif2.Picture.Graphic as TGIFImage).Animate := true;

end;

procedure TFrmConfigPeriferico.FormCreate(Sender: TObject);
var
  I : TACBrBALModelo ;
  tabPages : integer;
begin
  cmbBalanca.Items.Clear ;

  //--------------ADICIONA OS MODELOS DAS IMPRESSORA-------------//
  For I := Low(TACBrBALModelo) to High(TACBrBALModelo) do
  begin
     cmbBalanca.Items.Add( GetEnumName(TypeInfo(TACBrBALModelo), integer(I) ) ) ;
     cmbBalanca.ItemIndex := 0;
  end;

  pgConfg.ActivePageIndex := 0; // TabConfigRede;

   //-------------REMOVE OS TABS CRIADO------------//
  pgConfg.OwnerDraw := true;
  for tabPages := 0 to pgConfg.PageCount-1 do
  begin
  //TmControl(PageControl1.Pages[i]).Color := clAqua; // Muda a cor do fundo TAB
  TmControl(pgConfg).Color := clWhite;
  //TmControl(PageControl1).Font.Color := clYellow;  // Muda a cor da Fonte TAB
  end;
  AdicionarImpressora;
  SearchPrint;
end;

procedure TFrmConfigPeriferico.FormShow(Sender: TObject);
var
tabPages : Integer;
begin


for tabPages := 0 to pgConfg.PageCount - 1 do
 begin
  pgConfg.Pages[tabPages].TabVisible := false;
 end;
  pgConfg.ActivePageIndex := 0;
  qryConfigIP.Active;
  qryConfigIP.Open;
end;

procedure TFrmConfigPeriferico.OcultarEdit;
begin

  if (rgConexao.Value = '1') then
  begin
     sbGravarTeste.Caption := 'Gravar';
     qryConfigIP.Edit;
     qryConfigIP.FieldByName('tipo_conexao').AsInteger := 1;
     EdtIP.Enabled := true;
     EdtSubRede.Enabled := true;
     EdtGateway.Enabled := true;
     EdtDNS1.Enabled := true;
     EdtDNS2.Enabled := true;
end;
 if (rgConexao.Value = '2') then
begin
     qryConfigIP.Edit;
     qryConfigIP.FieldByName('tipo_conexao').AsInteger := 2;
     EdtIP.Enabled := false;
     EdtSubRede.Enabled := false;
     EdtGateway.Enabled := false;
     EdtDNS1.Enabled := false;
     EdtDNS2.Enabled := false;
  end;
end;

procedure TFrmConfigPeriferico.BtnImpressoraClick(Sender: TObject);
begin
qryConfigImpressora.Active := true;
qryConfigImpressora.open;
if qryConfigImpressora.FieldByName('tipo_impressao').AsString = 'manual' then
begin
rbManual.Checked := true;
qryConfigImpressora.Edit;
pgConfg.ActivePageIndex := 2; // TabConfigImpressora;
end
else
rbAuto.Checked := true;
qryConfigImpressora.Edit;
pgConfg.ActivePageIndex := 2; // TabConfigImpressora;

end;

procedure TFrmConfigPeriferico.BtnPDVClick(Sender: TObject);
begin
pgConfg.ActivePageIndex := 6; // TabConfigPDVServidor;
end;

procedure TFrmConfigPeriferico.BtnPDVMouseEnter(Sender: TObject);
begin
pnLine.Visible := true;
pnLine.Left := 1;
pnLine.Top := TPanel(sender).Top;
pnlMenu.Repaint;
end;

procedure TFrmConfigPeriferico.BtnTeclasClick(Sender: TObject);
begin
pgConfg.ActivePageIndex := 1; // TabConfigTeclas;
FDQuery1.Active := true;
end;

procedure TFrmConfigPeriferico.BtnCaixaClick(Sender: TObject);
begin
pgConfg.ActivePageIndex := 5; // TabConfigCaixa;
end;

procedure TFrmConfigPeriferico.BtnGavetaClick(Sender: TObject);
begin
pgConfg.ActivePageIndex := 3; // TabConfigGaveta;
end;

procedure TFrmConfigPeriferico.BtnBalancaClick(Sender: TObject);
begin
segundos := 5; // Verificar o peso sobre a balanca em determinado segundos
qryConfigBalanca.Active := true;
qryConfigBalanca.open;
qryConfigBalanca.Edit;
AtivarBalanca;
ACBrBAL1.MonitorarBalanca := true;
pgConfg.ActivePageIndex := 4; // TabConfigBalanças;
end;

procedure TFrmConfigPeriferico.pgConfgDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var PC:TPageControl;
begin
  PC := TPageControl(Control);
  PC.Canvas.TextOut(Rect.left+5,Rect.top+3,PC.Pages[tabindex].Caption);

end;

procedure TFrmConfigPeriferico.pnlRedeClick(Sender: TObject);
begin
pgConfg.ActivePageIndex := 0; // TabConfigRede;
qryConfigIP.Active;
qryConfigIP.Open;
end;

procedure TFrmConfigPeriferico.rbAutoClick(Sender: TObject);
begin
if rbAuto.Checked  then
begin
  qryConfigImpressora.Edit;
  qryConfigImpressora.FieldByName('tipo_impressao').AsString := 'automatico';
  qryConfigImpressora.Post;
end;
   qryConfigImpressora.Cancel;
end;

procedure TFrmConfigPeriferico.rbManualClick(Sender: TObject);
begin
if rbManual.Checked then
begin
  qryConfigImpressora.Edit;
  qryConfigImpressora.FieldByName('tipo_impressao').AsString := 'manual';
  qryConfigImpressora.Post;
 end;
end;

procedure TFrmConfigPeriferico.ResetIPDNS;
var
resetIP,resetDNS : String;
begin
   /// dnsservers
  //dsnsecundary := 'cmd.exe /c netsh interface ipv4 set dnsservers "Ethernet" '+EdtDNS2.Text+' index=2';

   resetIP  := 'netsh interface ipv4 set address name="Ethernet" source=dhcp';
   resetDNS := 'netsh interface ipv4 set dnsservers name="Ethernet" source=dhcp';

  if not CreateProcessSimple(resetIP) then  // Resetar IP
    //  ShowMessage('NÃO FOI PROCESSADO!')
    sleep(100);
  if not CreateProcessSimple(resetDNS) then  // Resetar DNS
  //    ShowMessage('NÃO FOI PROCESSADO!')
    else
       FrmMsgerro.MsgText('Configuração salva com sucesso!',false,$0085DE60);
       qryConfigIP.FieldByName('tipo_conexao').AsInteger := 2;
end;

procedure TFrmConfigPeriferico.rgUsoChange(Sender: TObject);
begin
   if rgUso.Value = '1' then
   begin
    sbGravarTeste.Caption := 'Gravar';
   end
   else
     sbGravarTeste.Caption := 'Gravar e Testar';
end;

procedure TFrmConfigPeriferico.SearchPrint;
begin
   impPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( impPorta.Items );
  {$IfDef MSWINDOWS}
  ACBrPosPrinter1.Device.AcharPortasUSB( impPorta.Items );
  {$EndIf}
  ACBrPosPrinter1.Device.AcharPortasRAW( impPorta.Items );

   impPorta.Items.Add('TCP:192.168.0.31:9100') ;

  {$IfNDef MSWINDOWS}
   impPorta.Items.Add('/dev/ttyS0') ;
   impPorta.Items.Add('/dev/ttyUSB0') ;
   impPorta.Items.Add('/tmp/ecf.txt') ;
  {$Else}
   impPorta.Items.Add('\\localhost\Epson') ;
   impPorta.Items.Add('c:\temp\ecf.txt') ;
  {$EndIf}
end;

procedure TFrmConfigPeriferico.SpeedButton10Click(Sender: TObject);
var
  SL: TStringList;
begin
  //AdicionarLinhaLog('- btTestarPosPrinterClick');
  try
    AtivarPosPrinter;

    SL := TStringList.Create;
    try
      SL.Add('</zera>');
      SL.Add('</linha_dupla>');
      SL.Add('FONTE NORMAL: '+IntToStr(ACBrPosPrinter1.ColunasFonteNormal)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
      SL.Add('<e>EXPANDIDO: '+IntToStr(ACBrPosPrinter1.ColunasFonteExpandida)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
      SL.Add('</e><c>CONDENSADO: '+IntToStr(ACBrPosPrinter1.ColunasFonteCondensada)+' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));
      SL.Add('</c><n>FONTE NEGRITO</N>');
      SL.Add('<in>FONTE INVERTIDA</in>');
      SL.Add('<S>FONTE SUBLINHADA</s>');
      SL.Add('<i>FONTE ITALICO</i>');
      SL.Add('FONTE NORMAL');
      SL.Add('');
      SL.Add('TESTE DE ACENTOS. ÁÉÍÓÚáéíóú');
      SL.Add('');
      SL.Add('</corte_total>');
    qryConfigImpressora.Post;
    AdicionarLinhaImpressao(SL.Text);
    FrmMsgerro.MsgText('Configuração salva com sucesso!',false,$0085DE60);
    finally
       SL.Free;
    end;
  except
    On E: Exception do
    begin
      FrmMsgerro.MsgText('Falha ao imprimir na impressora',false,clRed) ;
     // MessageDlg('Falha ao ativar a Impressora' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end

end;

procedure TFrmConfigPeriferico.SpeedButton1Click(Sender: TObject);
begin
pnlAvisoPDV.Visible := true;
end;

procedure TFrmConfigPeriferico.SpeedButton2Click(Sender: TObject);
var
AddressIP,dnsprimary,dsnsecundary : String;
begin


  try
if dsConfigIP.State in [DsEdit,DsInsert] then

      //========COMANDO VIA CMD======//
      AddressIP := 'netsh interface ipv4 set address name="Ethernet" static '+EdtIP.Text+' '+EdtSubRede.Text+' '+EdtGateway.Text;
      dnsprimary := 'netsh interface ipv4 set dnsservers "Ethernet" static '+EdtDNS1.Text+' primary';
      dsnsecundary := 'netsh interface ipv4 set dnsservers "Ethernet" '+EdtDNS2.Text+' index=2';
      //========FIM========//
    if not createProcessSimple(AddressIP) then
        FrmMsgerro.MsgText('falha ao configurar endereço de IP',false,clRed);
    if not createProcessSimple(dnsprimary) then
        FrmMsgerro.MsgText('falha ao configurar endereço de DNS1 Primary',false,clRed);
    if not createProcessSimple(dsnsecundary) then
        FrmMsgerro.MsgText('falha ao configurar endereço de DNS2 Secundary',false,clRed);

    if (rgConexao.Value = '1') then
      begin
       OcultarEdit;
       FrmMsgerro.MsgText('Configuração salvo com sucesso',false,clGreen);
       qryConfigIP.Post;
      end
      else
      ResetIPDNS;
      qryConfigIP.Post;
      FrmMsgerro.MsgText('Configuração salvo com sucesso',false,clGreen);
     except
      FrmMsgerro.MsgText('Não foi possivel alterar IP',false,$001D15F2);
  end;
end;

procedure TFrmConfigPeriferico.spBtnFecharClick(Sender: TObject);
begin
//FrmSplash := TFrmSplash.Create(self);
//FrmSplash.ShowModal;
Application.Terminate; // Terminar aplicacao;
end;

procedure TFrmConfigPeriferico.sbGravarTesteClick(Sender: TObject);
begin
   // Conecta com a balança

  if rgUso.Value = '1' then
   begin
   sTimer.Enabled := false;
   qryConfigBalanca.Edit;
   qryConfigBalanca.FieldByName('utilizar').AsInteger := 1;
   qryConfigBalanca.Post;
   FrmMsgerro.MsgText('Configuração salva com sucesso!',false,$0085DE60);
   pnlMenu.Enabled := true;
   Abort;
end;


if sbGravarTeste.Caption = 'Parar o Testar' then
begin
 sTimer.Enabled := false;
 sbGravarTeste.Caption := 'Gravar e Testar';
 pnlMenu.Enabled := true;
 pnlAvisoBalanca.Visible := false;
end
else
   try
   TimeOut := 1;  // Tempo para captura o Peso
   ACBrBAL1.Ativar;
   sTimer.Enabled := true;
   sbGravarTeste.Caption := 'Parar o Testar';
   pnlAvisoBalanca.Visible := true;
   ACBrBAL1.LePeso( TimeOut ); // Ler o peso
   except
        TimeOut := 3000;
        sbGravarTeste.Caption := 'Gravar e Testar';
        pnlMenu.Enabled := true;
        sTimer.Enabled := false;
    end;
end;

procedure TFrmConfigPeriferico.sTimerTimer(Sender: TObject);
begin
   ACBrBAL1.Ativar;
   pnlMenu.Enabled := false;
   sbGravarTeste.Caption := 'Parar o Testar';
   pnlAvisoBalanca.Visible := true;
   ACBrBAL1.LePeso( TimeOut ); // Ler o peso
end;


end.
