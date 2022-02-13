unit uFrmImpOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Buttons;



type
  TFrmImpOrcamento = class(TForm)
    pnlCentro: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    pnlEditNome: TPanel;
    EdtNome: TEdit;
    pnlListFundo: TPanel;
    gridItem: TDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qryConsItem: TFDQuery;
    dsConsItem: TDataSource;
    pnlFundo: TPanel;
    Shape1: TShape;
    qryConsItemidorcamento: TFDAutoIncField;
    qryConsItemnome_cliente: TStringField;
    qryConsItemvalor: TBCDField;
    procedure EdtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure gridItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }

    procedure BuscarItem;
  public
    { Public declarations }

  end;

var
  FrmImpOrcamento: TFrmImpOrcamento;

  Aux : Integer;



implementation

{$R *.dfm}

uses
  StrUtils,

  Math,uPrincipal, uFrmAvisoProcesso, Frame.AvisoProcessos, uConexao,
   Esmaecer.TelaFundo, Esmaecer.MsgErro, Funcao.Classe;



function Remove(str: string):string;
var
   x: integer;
   st: string;
begin
st:='';
for x:=1 to length(str) do
    begin
    if (str[x] <> '-') and
       (str[x] <> '.') and
       (str[x] <> ',') and
       (str[x] <> '/') then
    st:=st + str[x];
    end;
Remove:=st;
end;

procedure TFrmImpOrcamento.BuscarItem;
begin

 with qryConsItem do
 begin
  qryConsItem.SQL.Clear;
  qryConsItem.SQL.Add('Select * from orcamento where '+
  'idorcamento LIKE '+(QuotedStr(EdtNome.Text)+' OR '+
  'nome_cliente LIKE '+QuotedStr(EdtNome.Text)));
  qryConsItem.Open;
  // Quando o produto � encontrado ele foca no Grid
   gridItem.SetFocus;
   Shape1.Pen.Color := $00EEEEEE;
   EdtNome.Color := $00EEEEEE; // Mudar a cor fundo do edit caso encontra o registro

 end;
   if qryConsItem.RecordCount = 0 then
   begin

      EdtNome.Color := clWindow;
      Shape1.Pen.Color := clRed; // Mudar a cor do PnlEdti senao encontrar o registro
      EdtNome.SelectAll;
      EdtNome.SetFocus;
      FrmMsgErro.msgText('Nenhum or�amento foi encontrado',true,clRed);
   end;
end;

procedure TFrmImpOrcamento.EdtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if EdtNome.Focused then
    begin//Se  estiver com o foco fecha a busca de cliente
      close;
    end;
end;

procedure TFrmImpOrcamento.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
EdtNome.CharCase := ecUpperCase;
Remove(EdtNome.Text);

if key = #13 then
  begin
  BuscarItem;  //Buscar Orcamento
  end;

end;

procedure TFrmImpOrcamento.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlCentro,12);
ArredondaPainel(pnlEditNome,9);
ArredondaPainel(pnlListFundo,12);

end;

procedure TFrmImpOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := TCloseAction.caFree;
end;

procedure TFrmImpOrcamento.FormCreate(Sender: TObject);
begin
FrmEsmaecertela.Show;
end;

procedure TFrmImpOrcamento.FormResize(Sender: TObject);
begin


 pnlCentro.Top  := Round(FrmImpOrcamento.Height/2 - pnlCentro.Height/2);
 pnlCentro.Left := Round(FrmImpOrcamento.Width/2 - pnlCentro.Width/2);

end;

procedure TFrmImpOrcamento.FormShow(Sender: TObject);
begin

EdtNome.Color := $00D3D3D3;
Shape1.Brush.Color := $00D3D3D3;
gridItem.SetFocus;
EdtNome.Clear;
ShowScrollBar (gridItem.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
ShowScrollBar (gridItem.Handle, SB_HORZ, FALSE); // Remove o ScrollBox do DBGrid
end;

procedure TFrmImpOrcamento.gridItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = VK_ESCAPE then
  if gridItem.Focused then
  begin
  // Caso o operador n�o informa  o produto
  EdtNome.Color := clWhite;
  Shape1.Brush.Color := clWhite;
  EdtNome.SelectAll;
  EdtNome.SetFocus;
end;

  { Cancelar item}
  if Key = VK_RETURN then
  begin
  FrmAvisoProcesso := TFrmAvisoProcesso.Create(nil);
  gridItem.Columns.items[0].field.text;
  gridItem.Columns.items[1].field.text;
  gridItem.Columns.items[2].field.text;
  FrmAvisoProcesso.showmodal; // Chamar a tela de processos
  end;
end;
end.
