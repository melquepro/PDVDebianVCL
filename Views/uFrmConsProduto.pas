unit uFrmConsProduto;

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
  TFrmConsProduto = class(TForm)
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    pnlFundo: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    EdtDesCod: TEdit;
    pnlListFundo: TPanel;
    gridClientes: TDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnlEditNome: TShape;
    Label5: TLabel;
    FDQuery1idproduto: TFDAutoIncField;
    FDQuery1codbarra: TStringField;
    FDQuery1descproduto: TStringField;
    FDQuery1vlrproduto: TBCDField;
    FDQuery1medida: TStringField;
    Timer1: TTimer;
    procedure EdtDesCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure gridClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtDesCodKeyPress(Sender: TObject; var Key: Char);
    procedure gridClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

    procedure BuscarProduto;
  public
    { Public declarations }





  end;

var
  FrmConsProduto: TFrmConsProduto;

  Aux : Integer;
  Acao : Boolean;



implementation

{$R *.dfm}

uses
  StrUtils,

  Math,uPrincipal, uConexao, Esmaecer.TelaFundo,
  Esmaecer.MsgErro, Funcao.Classe;



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


procedure TFrmConsProduto.BuscarProduto;
begin

 if EdtDesCod.Text <> '' then
 begin
FDQuery1.Active := false;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('Select * from produto where '+
'idproduto LIKE '+(QuotedStr(EdtDesCod.Text)+' OR '+
'codbarra LIKE '+QuotedStr(EdtDesCod.Text))+' OR '+
'descproduto LIKE'+ QuotedStr('%'+EdtDesCod.Text+'%'));
FDQuery1.Open;


 gridClientes.SetFocus;
 acao := false;
 pnlEditNome.Brush.Color := $0EEEEEE;
 pnlEditNome.Pen.Color := $00D3D3D3;
 EdtDesCod.Color := $00EEEEEE; // Mudar a cor fundo do edit caso encontra o registro
 pnlEditNome.Visible := true;

 if FDQuery1.RecordCount = 0 then
 begin
    EdtDesCod.Color := clWindow;
    pnlEditNome.Brush.Color := clWhite; // Mudar a cor do PnlEdti senao encontrar o registro
    pnlEditNome.Pen.Color := clRed;
    EdtDesCod.SelectAll;
    EdtDesCod.SetFocus;
    FrmMsgerro.MsgText('Produto não encontrado',true,clRed);
   end;
 end;
end;

procedure TFrmConsProduto.EdtDesCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if EdtDesCod.Focused then
    begin//Se  estiver com o foco fecha a busca de cliente
      pnlEditNome.Pen.Color := $00D3D3D3;
      pnlEditNome.Brush.Color := clWhite;
      FrmConsProduto.close;
    end;
end;

procedure TFrmConsProduto.EdtDesCodKeyPress(Sender: TObject; var Key: Char);
begin
EdtDesCod.CharCase := TEditCharCase.ecUpperCase;
Remove(EdtDesCod.Text);


if key = #13 then
  BuscarProduto;  //Buscar Clientes



end;

procedure TFrmConsProduto.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlListFundo,12);
end;

procedure TFrmConsProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmConsProduto.FormCreate(Sender: TObject);
begin

FrmEsmaecerTela.Show;
end;

procedure TFrmConsProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if Key = VK_ESCAPE then
//if EdtDesCod.Focused then
//  EdtDesCod.SetFocus; // QUando apertar qualquer tecla foca no edit

end;

procedure TFrmConsProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
ShowScrollBar (gridClientes.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
ShowScrollBar (gridClientes.Handle, SB_HORZ, FALSE); // Remove o ScrollBox do DBGrid
end;

procedure TFrmConsProduto.FormResize(Sender: TObject);
begin

  pnlfundo.Top  := Round(FrmConsProduto.Height/2 - pnlFundo.Height/2);
  pnlfundo.Left := Round(FrmConsProduto.Width/2 - pnlFundo.Width/2);
end;

procedure TFrmConsProduto.FormShow(Sender: TObject);
begin

//Acao := true;
FDQuery1.Active := false;
FDQuery1.Close;
FDQuery1.SQL.Clear;

EdtDesCod.CharCase := TEditCharCase.ecNormal;
end;

procedure TFrmConsProduto.gridClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if ( True ) then // <- Troque pelo seu teste
  begin
 //   (Sender as TDBGrid).Canvas.Font.Color:= clBlack;
   // (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
   // (Sender as TDBGrid).Canvas.FillRect(Rect);
  //  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmConsProduto.gridClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then begin
    EdtDesCod.Color := clWhite;
    pnlEditNome.Brush.Color := clwhite; //Mudar a cor do PnlEdti senao encontrar o registro
    EdtDesCod.SelectAll;
    EdtDesCod.SetFocus;
   end;

if Key = VK_RETURN then
begin
// Adicionar produto  na venda
EdtDesCod.Color := clWhite;
pnlEditNome.Pen.Color := $00D3D3D3;
EdtDesCod.Clear;
Close;

end;

end;

end.
