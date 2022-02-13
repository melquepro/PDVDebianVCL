unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  Vcl.Buttons, Frame.ListItem, System.Threading, Vcl.Imaging.GIFImg,
  Frame.ResumoVenda;





type
  TFrmFrCaixa = class(TForm)
    pnlButtom: TPanel;
    Timer1: TTimer;
    pnlTop: TPanel;
    lblCxOperador: TLabel;
    lblDataHora: TLabel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    pnlNfcStatusServer: TPanel;
    ImageList1: TImageList;
    imgOff: TImage;
    imgOn: TImage;
    imgMarca: TImage;
    pnlNota: TPanel;
    pnlListItem: TPanel;
    lbListProdutos: TScrollBox;
    pnlNomeCliente: TPanel;
    lblNomeCliente: TLabel;
    pnlValores: TPanel;
    pnlTotal: TPanel;
    Label4: TLabel;
    lblVlrTotal: TLabel;
    pnlSubValoresTotal: TPanel;
    Label3: TLabel;
    lblSubTotal: TLabel;
    LblQtdItem: TLabel;
    qryItemVendass: TFDQuery;
    dsItemVenda: TDataSource;
    qryItemVendassitemcancel: TStringField;
    qryItemVendassiditemvenda: TFDAutoIncField;
    qryItemVendassidvenda: TIntegerField;
    qryItemVendassidproduto: TIntegerField;
    qryItemVendassdescproduto: TStringField;
    qryItemVendassmedida: TStringField;
    qryItemVendassqtd_item: TIntegerField;
    qryItemVendassvlrunit: TFloatField;
    qryItemVendassvlrtotal: TFloatField;
    qryItemVenda: TFDTable;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    qryItemVendaiditemvenda: TFDAutoIncField;
    qryItemVendaidvenda: TIntegerField;
    qryItemVendaidproduto: TIntegerField;
    qryItemVendadescproduto: TStringField;
    qryItemVendamedida: TStringField;
    qryItemVendaqtd_item: TBCDField;
    qryItemVendavlrunit: TBCDField;
    qryItemVendavlrtotal: TBCDField;
    qryItemVendaitemcancel: TStringField;
    qryProdutoidproduto: TFDAutoIncField;
    qryProdutocodbarra: TStringField;
    qryProdutodescproduto: TStringField;
    qryProdutovlrproduto: TBCDField;
    pnlDescricao: TPanel;
    EdtDescProduto: TEdit;
    Timer2: TTimer;
    pgItem: TPageControl;
    tabItem: TTabSheet;
    tabSubTotal: TTabSheet;
    pnl: TPanel;
    Label1: TLabel;
    pnlResFundo: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    pnlValorPago: TPanel;
    Label7: TLabel;
    lblValorPago: TLabel;
    pnlTroco: TPanel;
    Label8: TLabel;
    lblTotalPagar: TLabel;
    Splitter2: TSplitter;
    Button1: TButton;
    sbResumoVenda: TScrollBox;
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDescProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
      NewDPI: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pgItemDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }


  public
    { Public declarations }

      procedure localizarItem;
      procedure ListVenda;
      procedure mDescProduto(iAtiva:Boolean);
      procedure buscarProduto;

  end;


 type
  tmControl     = class(TControl);


var
  FrmFrCaixa: TFrmFrCaixa;
  Frame : TFrameListItem;

  FrameResumo : TFrameResumoVenda;

  totalItem: double;
  totalVenda: double;
  estoque : double;
  totalcomDesconto : double;
  troco : double;

implementation

{$R *.dfm}

uses uFrmCancelItem,
  uConexao, Frame.AvisoProcessos, uFrmAviso, uFrmAvisoProcesso,
  Funcao.Classe, Balanca.TelaView, uFrmReforcoCaixa,
  OpcaoPesquisa.TelaView, CancelVenda.TelaView,
  uFrmConsProduto, uFrmConsCliente, uFrmLoading, uFrmFormaPagamento,
  uFrmEntrega, uFrmImpOrcamento;



function SoPrimeiraLetraMaiuscula(p_texto: string): string;
begin
if p_texto <> '' then
result := UpperCase(Copy(p_texto,1,1))+LowerCase(Copy(p_texto,2,Length(p_texto)));

end;
procedure TFrmFrCaixa.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // 78 = c�digo ascii da tecla 'N'  Crtl+N
 if (Key = 78) and (Shift = [ssCtrl]) then
 begin
   pnlNota.Caption := 'NF-e';
 end;
end;

procedure TFrmFrCaixa.ListVenda;
var
   Soma ,lblQtdVlrUnit: String;
    i : Integer;
begin
   EdtDescProduto.Visible := false;
 //  lbListProdutos.SendToBack;
try
qryItemVenda.Active := true;
qryItemVenda.First;
  while not (qryItemVenda.Eof) do
   begin

     Frame := TFrameListItem.Create(nil);
    { Cria o Frame do ScrollBox da Lista Item personalizado}

      Frame.Parent:= lbListProdutos;
      Frame.Name := 'Itens'+i.ToString;
      Frame.Align := alTop;
      Frame.Top := lbListProdutos.Top + lbListProdutos.Height;
      //Frame.Height := 75;

            // Parte do codigo para adicionar Items personalizado no ListBox
            Soma :=
             FormatFloat('#,##0.000', StrToFloat(qryItemVenda.FieldByName('qtd_item').AsString))+' x '+
             FormatFloat('#,##0.00', StrToFloat(qryItemVenda.FieldByName('vlrunit').AsString));


    {./}

             // Mostrar Lista de Produtos cancelado
           if  qryItemVenda.FieldByName('itemcancel').AsString = '1' then
                begin
                  ///  Mudar a cor da sequencia da lista
                  Frame.Shape1.Pen.Color := clRed; // Mudar a cor do Texto
                  Frame.lblSqItem.Caption  := 'X';
                  Frame.lblSqItem.font.Color := clRed;
                  //Frame.lblSqItem.Font.Style := [TFontStyle.fsStrikeOut,TFontStyle.fsBold];// Sublinhar o Texto

                 // { Mudar a cor da Descri��o do Produto
                  Frame.dblbDescItem.font.Color := clRed; // Mudar a cor do Texto
                  Frame.dblbDescItem.Font.Style := [TFontStyle.fsStrikeOut]; // Sublinhar o Texto

                  Frame.dblbVlrTotal.Font.Color := clRed; // Mudar a cor do Texto
                  Frame.dblbVlrTotal.Font.Style := [TFontStyle.fsStrikeOut]; // Sublinhar o Texto

                 // {Mudar a cor dos valores e quantidade do produto
                  Frame.dbvaloritem.font.Color := clRed;
                  Frame.dbvaloritem.Font.Style :=   [TFontStyle.fsStrikeOut];
                // =======================================================================
                end;

      {./}
              lblQtdVlrUnit := Soma;
              Frame.lblSqItem.Caption := IntToStr(qryItemVenda.FieldByName('iditemvenda').AsInteger);
              Frame.dblbDescItem.Caption := qryItemVenda.FieldByName('descproduto').AsString;

              Frame.dblbVlrTotal.Caption :=  FormatFloat('#,##0.00', (qryItemVenda.FieldByName('vlrtotal').AsCurrency));

             Frame.dbvaloritem.Caption := lblQtdVlrUnit;
             LblQtdItem.Caption := 'Quantidade: '+IntToStr(qryItemVenda.RecordCount)+' itens';



             lbListProdutos.ScrollInView(Frame);
             qryItemVenda.Refresh;
             qryItemVenda.Release;
             qryItemVenda.UpdateTransaction;
             qryItemVenda.Next;

             //Frame.Free;

   end;
   except

 //ShowMessage('erro');
end;
end;


procedure TFrmFrCaixa.buscarProduto;
var
I : Integer;
begin
  DM.qryProduto.Close;
  DM.qryProduto.SQL.Clear;
  dm.qryProduto.SQL.Add('SELECT * from produto where codbarra = :cod');
  dm.qryProduto.ParamByName('cod').Value := EdtDescProduto.Text;
  dm.qryProduto.Open;
 if not dm.qryProduto.isEmpty then
       begin
        Frame := TFrameListItem.Create(nil);
    { Cria o Frame do ScrollBox da Lista Item personalizado}

      Frame.Parent:= lbListProdutos;
      Frame.Name := 'Itens'+i.ToString;
      Frame.Align := alTop;
      Frame.Top := lbListProdutos.Top + lbListProdutos.Height;
      //Frame.Height := 75;

        Frame.lblSqItem.Caption :=  dm.qryProduto['idproduto'];
        Frame.dblbDescItem.Caption :=  dm.qryProduto['descproduto'];
        Frame.dbvaloritem.Caption :=  dm.qryProduto['vlrproduto'];
        //edtEstoque.Text :=  dm.qryProduto['estoque'];

        Frame.dblbVlrTotal.Caption :=  FormatFloat('#,##0.00', (dm.qryProduto.FieldByName('vlrproduto').AsInteger));
        LblQtdItem.Caption := 'Quantidade: '+IntToStr(dm.qryProduto.RecordCount)+' itens';



        //dbvaloritem
        // totalItem := strToFloat(dbvaloritem) * strToFloat(edtPreco.text);
         totalVenda := totalVenda + totalItem;
         lblVlrTotal.Caption :=FormatFloat('R$ #,,,,0.00', totalItem);
         lblSubTotal.Caption := 'SubTotal: '+FormatFloat('R$ #,,,,0.00', totalVenda);  //lblSubTotal
       //  Frame.dblbVlrTotal.Caption := FormatFloat('R$ #,,,,0.00', totalVenda);
         totalcomDesconto := totalVenda;
        // edtValorRecebido.Text := floatToStr(totalVenda);
        // dm.tb_detalhes_vendas.Insert;
       //  salvarItens;
        pnlDescricao.Caption := dm.qryProduto['descproduto'];
        EdtDescProduto.Clear;
        EdtDescProduto.Visible := false;
           lbListProdutos.ScrollInView(Frame);
         end
         else
         begin
        FrmAviso := TFrmAviso.Create(Self);
        FrmAviso.pnlBarCod.Caption := EdtDescProduto.text; // Mostrar o c�d barra do produto nao encontrado
        FrmAviso.ShowModal;
        end;
end;

procedure TFrmFrCaixa.localizarItem;
begin
   if(EdtDescProduto.Text <> '') then
    begin
        with qryProduto do
        begin
            Close;
            ParamByName('cod').Value := EdtDescProduto.Text;
            Open;
            FetchAll;
        end;
        if (qryProduto.RecordCount > 0) then
        begin
          //  spnQuantidade.Value := 0;
          pnlDescricao.Visible := true;
          EdtDescProduto.Visible := false;
          EdtDescProduto.Clear;

          pnlDescricao.Caption := qryProdutodescproduto.AsString;
           //lblSubTotal.Caption  := 'SubTotal: R$ '+formatfloat( '##,###,##0.00', qryProdutovlrproduto.AsString.ToDouble);
            //AtualizaTotalItem;
        end
        else
        begin
            //LimpaCampos;

            FrmAviso := TFrmAviso.Create(Self);
            FrmAviso.pnlBarCod.Caption := EdtDescProduto.text; // Mostrar o c�d barra do produto nao encontrado
            FrmAviso.ShowModal;
        end;
//      Application.MessageBox('Voc� deve informar um produto que exista no estoque!','Produto n�o encontrado', MB_OK+MB_ICONERROR);
    end
    else
    begin
        //LimpaCampos;
    end;
end;

procedure TFrmFrCaixa.mDescProduto(iAtiva:Boolean);
begin

if iAtiva then
 pnlDescricao.Caption := '';
 FrmFrCaixa.EdtDescProduto.Visible := true;
 FrmFrCaixa.EdtDescProduto.Clear;
 FrmFrCaixa.EdtDescProduto.SetFocus;

end;

procedure TFrmFrCaixa.pgItemDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var PC:TPageControl;
begin
  PC := TPageControl(Control);
  PC.Canvas.TextOut(Rect.left+5,Rect.top+3,PC.Pages[tabindex].Caption);
end;

procedure TFrmFrCaixa.Button1Click(Sender: TObject);
var
i : integer;
begin

    //Essa porta voc� cria na hora que for fechar a venda que todas informa��es vai pegar no BD
    // Nesse Resumo de Venda vai mostrar
     pgItem.ActivePageIndex := 1;
     FrameResumo := TFrameResumoVenda.Create(nil);
    { Cria o Frame do ScrollBox da Lista Resumo da Venda personalizado}

      FrameResumo.Parent:= sbResumoVenda;
      FrameResumo.Name := 'Itens'+i.ToString;
      FrameResumo.lblDescResumo.Caption := 'SUBTOTAL';
      FrameResumo.lblValorResumo.Caption := '150,00';
      FrameResumo.Align := alTop;
      FrameResumo.Top := sbResumoVenda.Top + sbResumoVenda.Height;
      //Frame.Height := 75;


      FrameResumo := TFrameResumoVenda.Create(nil);
      FrameResumo.Parent:= sbResumoVenda;
      FrameResumo.Name := 'Itens'+i.ToString;
      FrameResumo.lblDescResumo.Caption := 'ACR�SCIMO';
      FrameResumo.lblValorResumo.Caption := '150,00';
      FrameResumo.Align := alTop;
      FrameResumo.Top := sbResumoVenda.Top + sbResumoVenda.Height;
      //Frame.Height := 75;

      FrameResumo := TFrameResumoVenda.Create(nil);
      FrameResumo.Parent:= sbResumoVenda;
      FrameResumo.Name := 'Itens'+i.ToString;
      FrameResumo.lblDescResumo.Caption := 'DESCONTO E PROMO��ES';
      FrameResumo.lblValorResumo.Caption := '150,00';
      FrameResumo.Align := alTop;
      FrameResumo.Top := sbResumoVenda.Top + sbResumoVenda.Height;
      //Frame.Height := 75;

      //Desabilitar o EdtCodBarra produto e mostra o pnlDesc
      pnlDescricao.Caption := 'VENDA CONCLU�DA';
      FrmFrCaixa.EdtDescProduto.Visible := FALSE;   //deixa o EdtCodBarra visible false
end;

procedure TFrmFrCaixa.EdtDescProdutoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 buscarProduto;
end;



procedure TFrmFrCaixa.FormActivate(Sender: TObject);
begin
//   mDescProduto(true);
end;

procedure TFrmFrCaixa.FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
  NewDPI: Integer);
begin
//mDescProduto(true);
end;

procedure TFrmFrCaixa.FormCreate(Sender: TObject);
var
tabPages : integer;
begin
 pgItem.ActivePageIndex := 0; // TabConfigRede;

   //-------------REMOVE OS TABS CRIADO------------//
  pgItem.OwnerDraw := true;
  //for tabPages := 0 to pgItem.PageCount-1 do
  //begin
  //TmControl(PageControl1.Pages[i]).Color := clAqua; // Muda a cor do fundo TAB
  //TmControl(pgItem).Color := clWhite;
  //TmControl(PageControl1).Font.Color := clYellow;  // Muda a cor da Fonte TAB
  //end;
end;

procedure TFrmFrCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


if key = VK_INSERT then
begin
  FrmImpOrcamento := TFrmImpOrcamento.create(self);
  FrmImpOrcamento.ShowModal;
end;

if key = VK_SPACE then
begin
  FrmFormaPagamento := TFrmFormaPagamento.Create(Self);
  FrmFormaPagamento.ShowModal;
end;

if key = VK_F4 then   begin  // Adicionar Cliente na venda
   FrmConsCliente  := TFrmConsCliente.Create(Self);
   FrmConsCliente.Show;
end;

if key = vk_f6 then
begin
  FrmCancelItem := TFrmCancelItem.Create(Self);
  FrmCancelItem.Show;
end;

if Key = VK_ESCAPE then
begin
  Application.Terminate;    // Fechar o PDV
end;

if key = VK_F9 then
begin
  FrmBalanca := TFrmBalanca.Create(Self);
  FrmBalanca.ShowModal;
end;

if Key = vk_F8 then
begin
  FrmReforcoCaixa := TFrmReforcoCaixa.Create(Self);
  FrmReforcoCaixa.SHowModal;
end;

if Key = vk_F7 then
begin
  FrmOpcaoPesquisa:= TFrmOpcaoPesquisa.Create(Self);
  FrmOpcaoPesquisa.SHowModal;
end;

if Key = vk_F2 then
begin
  FrmOpcaoCancelVenda:= TFrmOpcaoCancelVenda.Create(Self);

  FrmOpcaoCancelVenda.SHowModal;
end;

 if key = VK_F3 then   begin
 FrmConsProduto := TFrmConsProduto.Create(self);
 FrmConsProduto.pnlEditNome.Pen.Color := $00D3D3D3;
 FrmConsProduto.pnlEditNome.Brush.Color := clWhite;
 FrmConsProduto.Show;
end;

 if key = VK_F10 then
 begin

 end;



end;

procedure TFrmFrCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
if not EdtDescProduto.Focused then
begin
  mDescProduto(true);
 end;

 if Key = #101 then
begin
  FrmEntrega.Show;
end;
end;



procedure TFrmFrCaixa.FormResize(Sender: TObject);
begin


  ArredondaPainel(pnlListItem, 12);
  ArredondaPainel(pnlDescricao, 12);
  ArredondaPainel(pnlResFundo, 12);
  ArredondaPainel(pnlTroco, 12);
  ArredondaPainel(pnlValorPago, 12);

end;

procedure TFrmFrCaixa.FormShow(Sender: TObject);
var
tabPages : Integer;
begin
for tabPages := 0 to pgItem.PageCount - 1 do
 begin
  pgItem.Pages[tabPages].TabVisible := false;
 end;
  pgItem.ActivePageIndex := 0;
end;

procedure TFrmFrCaixa.Timer1Timer(Sender: TObject);
begin

   lblDataHora.Caption :=  SoPrimeiraLetraMaiuscula(FormatDateTime('DDDD'', ''MM'' de ''MMM'' ''hh:MM', now ));
   ShowScrollBar (lbListProdutos.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
   ShowScrollBar (sbResumoVenda.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
end;


procedure TFrmFrCaixa.Timer2Timer(Sender: TObject);
begin
Sleep(1000);
if  qryItemVenda.RecordCount > 1 then  // Verificar se tem produto adicionado para venda.
  begin
    // Carregaritem; // Carregar item da venda;
      pnlDescricao.Caption := '';

        // Coloca o EdtDescProduto com aliamento a direita e Focus
    pnlDescricao.Visible := true;
    pnlDescricao.Caption := 'CAIXA LIVRE';
    Timer2.Enabled := false;

   end
  else
   FrmCarregarTela := TFrmCarregarTela.Create(Self);
   Timer2.Enabled := false;
   FrmCarregarTela.ShowModal;

end;

end.
