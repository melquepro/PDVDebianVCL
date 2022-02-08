unit CancelVenda.TelaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmOpcaoCancelVenda = class(TForm)
    pnlFundo: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    lblMsg: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sh1: TShape;
    sh2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    pnlEdit: TPanel;
    EdtNum: TEdit;
    qryItemVenda: TFDTable;
    qryItemVendaiditemvenda: TFDAutoIncField;
    qryItemVendaidvenda: TIntegerField;
    qryItemVendaidproduto: TIntegerField;
    qryItemVendadescproduto: TStringField;
    qryItemVendamedida: TStringField;
    qryItemVendaqtd_item: TBCDField;
    qryItemVendavlrunit: TBCDField;
    qryItemVendavlrtotal: TBCDField;
    qryItemVendaitemcancel: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure VerificarVenda;
  end;

var
  FrmOpcaoCancelVenda: TFrmOpcaoCancelVenda;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe, uFrmConsPreco, uPrincipal;




procedure TFrmOpcaoCancelVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmOpcaoCancelVenda.FormCreate(Sender: TObject);
begin
FrmEsmaecerTela.Show;
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlEdit,12);

end;

procedure TFrmOpcaoCancelVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key= VK_ESCAPE then
Close;
end;

procedure TFrmOpcaoCancelVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
Key :=#0;
if key = #49 then
begin
VerificarVenda;
end
else
if key = #50 then      // Apertar Numero "2" fecha a tela
Close;
end;

procedure TFrmOpcaoCancelVenda.VerificarVenda;
begin

  //Verificar se tem Venda pendente caso tenha, mostra opcao de cancelar venda total senao mostra para cancelar cupom.
    qryItemVenda.Active := true;
    qryItemVenda.Open();
    if qryItemVenda.RecordCount > 1 then  // Se Existir venda
    begin
     pnlEdit.Visible := false;
     FrmfrCaixa.EdtDescProduto.Visible := false;
     FrmfrCaixa.pnlDescricao.Caption := 'VENDA CANCELADA';
     FrmOpcaoCancelVenda.Close;
    end
    else
    begin
    //Chama a tela de processo parar liberar cancelar a venda;
    lblMsg.Caption := 'Cancelar Venda'; // Digira numero do Cupom
    pnlEdit.Visible := true;
    EdtNum.SetFocus;
    end;
end;

end.
