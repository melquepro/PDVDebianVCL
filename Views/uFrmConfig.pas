unit uFrmConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, ACBrBase, ACBrBAL, Vcl.Samples.Spin, Vcl.NumberBox,
  ACBrPosPrinter, Vcl.Mask;

type
  TFrmConfig = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    pgConfg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    spBtnRede: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
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
    ScrollBox1: TScrollBox;
    Label4: TLabel;
    pnlTeclas: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    SpeedButton8: TSpeedButton;
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
    Shape6: TShape;
    Label10: TLabel;
    shParidade: TShape;
    Label11: TLabel;
    Label12: TLabel;
    shBitDados: TShape;
    Label14: TLabel;
    shBitstop: TShape;
    Label15: TLabel;
    SpeedButton9: TSpeedButton;
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
    Label18: TLabel;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure sTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pgConfgDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure rbAutoClick(Sender: TObject);
    procedure rbManualClick(Sender: TObject);
  private
    { Private declarations }
     Function Converte( cmd : String) : String;
     procedure AtivarBalanca;
     procedure AtivarPosPrinter;
     procedure ConfigurarPosPrinter;
     procedure AdicionarLinhaImpressao(ALinha: String);
     procedure AdicionarImpressora;
     procedure SearchPrint;

  public
    { Public declarations }
     Segundos : Integer;
     TimeOut : Integer;
  end;

  type
  tmControl     = class(TControl);

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

Uses
  typinfo,
  ACBrUtil, ACBrDeviceSerial, Funcao.Classe, uConexao,
  Esmaecer.MsgErro, Tela.LoadingView,  IniFiles, dateutils, math, strutils,
   ACBrDelphiZXingQRCode, Splash.TelaView;


procedure TFrmConfig.AdicionarImpressora;
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

procedure TFrmConfig.AdicionarLinhaImpressao(ALinha: String);
begin
 Memo1.Lines.Add(ALinha);
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Imprimir(ALinha);
end;


procedure TFrmConfig.ConfigurarPosPrinter;
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

procedure TFrmConfig.AtivarPosPrinter;
begin
 // AdicionarLinhaLog('- AtivarPosPrinter');
  ConfigurarPosPrinter;
  if (ACBrPosPrinter1.Porta <> '') then
    ACBrPosPrinter1.Ativar
  else
    raise Exception.Create('Porta não definida');
end;


procedure TFrmConfig.AtivarBalanca;
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

function TFrmConfig.Converte(cmd: String): String;
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



procedure TFrmConfig.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
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
  FrmCarregaBalanca.Close;
 end
   else
    begin
      valid := Trunc(ACBrBAL1.UltimoPesoLido);
      case valid of
         0 : begin
         FrmMsgerro.MsgText('Não foi possível capturar o Peso',false,clRed);

         FrmCarregaBalanca.Close;
         end;
      end;

   // Mostrar mensagem senao tem balanca conectada.
   if Peso < 0 then
   begin
     sTimer.Enabled := false;
     FrmCarregaBalanca.Close;
     FrmMsgerro.MsgText('Falha ao se comunicar com a Balança!',false,clRed) ;
    end;
 end;
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
var
  I : TACBrBALModelo ;
  tabPages : integer;
begin
  cmbBalanca.Items.Clear ;
  For I := Low(TACBrBALModelo) to High(TACBrBALModelo) do
     cmbBalanca.Items.Add( GetEnumName(TypeInfo(TACBrBALModelo), integer(I) ) ) ;
     cmbBalanca.ItemIndex := 0;

 ArredondaPainel(pnlTeclas, 12);
  pgConfg.OwnerDraw := true;
  for tabPages := 0 to pgConfg.PageCount-1 do
  //TmControl(PageControl1.Pages[i]).Color := clAqua;
  TmControl(pgConfg).Color := clWhite;
  //TmControl(PageControl1).Font.Color := clYellow;

  AdicionarImpressora;
  SearchPrint;
end;

procedure TFrmConfig.FormShow(Sender: TObject);
var
tabPages : Integer;
begin
for tabPages := 0 to pgConfg.PageCount - 1 do
 begin
  pgConfg.Pages[tabPages].TabVisible := false;
 end;
  pgConfg.ActivePageIndex := 0;
end;

procedure TFrmConfig.pgConfgDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var PC:TPageControl;
begin
  PC := TPageControl(Control);
  PC.Canvas.TextOut(Rect.left+5,Rect.top+3,PC.Pages[tabindex].Caption);

end;

procedure TFrmConfig.rbAutoClick(Sender: TObject);
begin
if rbAuto.Checked  then
begin
  qryConfigImpressora.Edit;
  qryConfigImpressora.FieldByName('tipo_impressao').AsString := 'automatico';
  qryConfigImpressora.Post;
end;
   qryConfigImpressora.Cancel;
end;

procedure TFrmConfig.rbManualClick(Sender: TObject);
begin
if rbManual.Checked then
begin
  qryConfigImpressora.Edit;
  qryConfigImpressora.FieldByName('tipo_impressao').AsString := 'manual';
  qryConfigImpressora.Post;
 end;
end;

procedure TFrmConfig.SearchPrint;
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

procedure TFrmConfig.SpeedButton10Click(Sender: TObject);
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

procedure TFrmConfig.SpeedButton1Click(Sender: TObject);
begin
Close;
FrmSplash.CarregaTarefas(True);
end;

procedure TFrmConfig.SpeedButton2Click(Sender: TObject);
begin
pgConfg.ActivePageIndex := 1; // TabConfigTeclas;
FDQuery1.Active := true;
end;

procedure TFrmConfig.SpeedButton3Click(Sender: TObject);
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

procedure TFrmConfig.SpeedButton4Click(Sender: TObject);
begin
pgConfg.ActivePageIndex := 5; // TabConfigCaixa;

end;

procedure TFrmConfig.SpeedButton5Click(Sender: TObject);
begin
segundos := 5; // Verificar o peso sobre a balanca em determinado segundos
qryConfigBalanca.Active := true;
qryConfigBalanca.open;
qryConfigBalanca.Edit;
AtivarBalanca;
ACBrBAL1.MonitorarBalanca := true;
pgConfg.ActivePageIndex := 4; // TabConfigBalanças;
end;

procedure TFrmConfig.SpeedButton9Click(Sender: TObject);
begin
   // Conecta com a balança
   if rgUso.Value = '1' then
   begin
   sTimer.Enabled := false;
   qryConfigBalanca.Edit;
   qryConfigBalanca.FieldByName('utilizar').AsInteger := 1;
   qryConfigBalanca.Post;
   FrmMsgerro.MsgText('Configuração salva com sucesso!',false,$0085DE60);
   Abort;
   end
   else
   begin
   try

   ACBrBAL1.Ativar;
   sTimer.Enabled := true;
   Application.CreateForm(TFrmCarregaBalanca, FrmCarregaBalanca);
   FrmCarregaBalanca.ShowModal;
   Segundos := 5;
   TimeOut := 1;

   except
   TimeOut := 100;
   //ShowMessage('erro conexao');
   end;
   end;
end;

procedure TFrmConfig.sTimerTimer(Sender: TObject);
begin
  segundos := segundos -1;
  lblPeso.Caption := IntToStr(segundos);
  if segundos = 0 then
  begin
    sTimer.Enabled := false;
    ACBrBAL1.LePeso( TimeOut ); // Ler o peso
  end;
end;


end.
