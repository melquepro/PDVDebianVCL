unit uFrmConsCliente;

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
  TFrmConsCliente = class(TForm)
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    pnlFundo: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    pnlEndereco: TPanel;
    Shape1: TShape;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdtNome: TEdit;
    pnlListFundo: TPanel;
    gridClientes: TDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnlEditNome: TShape;
    FDQuery1idcliente: TFDAutoIncField;
    FDQuery1nome: TStringField;
    FDQuery1cli_limite: TFloatField;
    FDQuery1cpfcnpj: TStringField;
    FDQuery1logradouro: TStringField;
    FDQuery1numero: TStringField;
    FDQuery1bairro: TStringField;
    FDQuery1cidade: TStringField;
    FDQuery1estado: TStringField;
    procedure FormShow(Sender: TObject);
    procedure gridClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure gridClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

    procedure BuscarCliente;
  public
    { Public declarations }





  end;

var
  FrmConsCliente: TFrmConsCliente;

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


procedure TFrmConsCliente.BuscarCliente;
begin

 if EdtNome.Text <> '' then
 begin
FDQuery1.Active := false;
FDQuery1.Close;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('Select * from cliente where '+
'idcliente LIKE '+(QuotedStr('%'+EdtNome.Text+'%')+' OR '+
'nome LIKE '+QuotedStr('%'+EdtNome.Text+'%'))+' OR '+
'cpfcnpj LIKE'+ QuotedStr('%'+EdtNome.Text+'%'));
FDQuery1.Open;


 gridClientes.SetFocus;
 acao := false;
 pnlEditNome.Brush.Color := $0EEEEEE;
 pnlEditNome.Pen.Color := $00D3D3D3;
 EdtNome.Color := $00EEEEEE; // Mudar a cor fundo do edit caso encontra o registro
 pnlEditNome.Visible := true;
 pnlEndereco.Visible := true;

 if FDQuery1.RecordCount = 0 then
 begin
    EdtNome.Color := clWindow;
    pnlEditNome.Brush.Color := clWhite; // Mudar a cor do PnlEdti senao encontrar o registro
    pnlEditNome.Pen.Color := clRed;
    EdtNome.SelectAll;
    EdtNome.SetFocus;
    FrmMsgerro.MsgText('Cliente não encontrado',true,clRed);
   end;
 end;
end;

procedure TFrmConsCliente.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
EdtNome.CharCase := TEditCharCase.ecUpperCase;
Remove(EdtNome.Text);


if key = #13 then
  BuscarCliente;  //Buscar Clientes



end;

procedure TFrmConsCliente.FormActivate(Sender: TObject);
begin
ArredondaPainel(pnlFundo,12);
ArredondaPainel(pnlListFundo,12);
end;

procedure TFrmConsCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEsmaecerTela.Hide;
Action := caFree;
end;

procedure TFrmConsCliente.FormCreate(Sender: TObject);
begin

FrmEsmaecerTela.Show;
end;

procedure TFrmConsCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then
    if EdtNome.Focused then
    begin//Se  estiver com o foco fecha a busca de cliente
      pnlEditNome.Pen.Color := $00D3D3D3;
      pnlEditNome.Brush.Color := clWhite;
      FrmConsCliente.close;
    end
    else
  //   EdtNome.SetFocus;
end;

procedure TFrmConsCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
EdtNome.SetFocus;
ShowScrollBar (gridClientes.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
ShowScrollBar (gridClientes.Handle, SB_HORZ, FALSE); // Remove o ScrollBox do DBGrid
end;

procedure TFrmConsCliente.FormResize(Sender: TObject);
begin

  pnlfundo.Top  := Round(FrmConsCliente.Height/2 - pnlFundo.Height/2);
  pnlfundo.Left := Round(FrmConsCliente.Width/2 - pnlFundo.Width/2);
end;

procedure TFrmConsCliente.FormShow(Sender: TObject);
begin

//Acao := true;
FDQuery1.Active := false;
FDQuery1.Close;
FDQuery1.SQL.Clear;
EdtNome.Clear;
ShowScrollBar (gridClientes.Handle, SB_VERT, FALSE); // Remove o ScrollBox do DBGrid
ShowScrollBar (gridClientes.Handle, SB_HORZ, FALSE); // Remove o ScrollBox do DBGrid

EdtNome.CharCase := TEditCharCase.ecNormal;
end;

procedure TFrmConsCliente.gridClientesDrawColumnCell(Sender: TObject;
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

procedure TFrmConsCliente.gridClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then begin
    EdtNome.Color := clWhite;
    pnlEditNome.Brush.Color := clwhite; //Mudar a cor do PnlEdti senao encontrar o registro
    EdtNome.SelectAll;
    EdtNome.SetFocus;
   end;

if Key = VK_RETURN then
begin
FrmFrCaixa.lblNomeCliente.Caption := gridClientes.Columns.items[2].field.text;
EdtNome.Color := clWhite;
pnlEndereco.Brush.Color := clWhite;
pnlEditNome.Pen.Color := $00D3D3D3;
EdtNome.Clear;
Close;

end;

end;

end.
