unit uFrmConsPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsultaPreco = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    pnlCod: TPanel;
    Panel1: TPanel;
    lblkg: TLabel;
    EdtCod: TEdit;
    spFundo: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    lblTotal: TLabel;
    qryGeral: TFDQuery;
    lblDescricao: TLabel;
    lblMedida: TLabel;
    lblQtd: TLabel;
    lblPrecoUnit: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscaPreco;
  end;

var
  FrmConsultaPreco: TFrmConsultaPreco;
  totalItem: double;
  totalVenda: double;
  estoque : double;
  totalcomDesconto : double;
  troco : double;



implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe, uConexao, Esmaecer.MsgErro, uPrincipal;

procedure TFrmConsultaPreco.BuscaPreco;
var
Qtd : INteger;
begin
  qryGeral.Close;
  qryGeral.SQL.Clear;
  qryGeral.SQL.Add('SELECT * from produto where codbarra = :cod');
  qryGeral.ParamByName('cod').Value := EdtCod.Text;
  qryGeral.Open;
 Qtd := 1;
 if not qryGeral.isEmpty then
       begin

         lblDescricao.Caption :=  qryGeral['descproduto'];
         lblMedida.Caption :=  qryGeral['medida'];
         lblQtd.Caption :=  FormatFloat('0.000',Qtd);
         lblPrecoUnit.Caption :=  FormatFloat('#,,,,0.00',qryGeral['vlrproduto']);
         lblTotal.Caption :=  FormatFloat('#,,,,0.00',qryGeral['vlrproduto']);
        {
         totalItem := strToFloat(lblQtd.Caption) * strToFloat(lblPrecoUnit.Caption);
         totalVenda := totalVenda + totalItem;
         edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
         edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
         edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
         totalcomDesconto := totalVenda;
         edtValorRecebido.Text := floatToStr(totalVenda);
       }
         //dm.tb_detalhes_vendas.Insert;
         //salvarItens;
         EdtCod.SelectAll;
         end
         else
         begin
         EdtCod.SelectAll;
         lblDescricao.Caption :=  '---' ;
         lblMedida.Caption :=  '---';
         lblQtd.Caption :=  '---';
         lblPrecoUnit.Caption :=  '---' ;
         lblTotal.Caption :=  '---';
         FrmMsgErro.MsgText('Produto não encontrado',true,clRed);
       end;
end;

procedure TFrmConsultaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmConsultaPreco.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlCod,12);
end;

procedure TFrmConsultaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key= VK_ESCAPE then
begin
FrmFrCaixa.EdtDescProduto.SetFocus;
FrmFrCaixa.EdtDescProduto.SelectAll;
Close;
end;
end;

procedure TFrmConsultaPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
    BuscaPreco;
  end;
end;

end.
