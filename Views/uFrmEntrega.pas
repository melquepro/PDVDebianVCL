unit uFrmEntrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmEntrega = class(TForm)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    PageControl1: TPageControl;
    Label1: TLabel;
    Image1: TImage;
    TabSheet2: TTabSheet;
    shEdtNome: TShape;
    EdtNome: TEdit;
    pnlCliente: TPanel;
    gridClientes: TDBGrid;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet3: TTabSheet;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Shape7: TShape;
    Label9: TLabel;
    Label10: TLabel;
    TabSheet4: TTabSheet;
    Shape8: TShape;
    Label11: TLabel;
    Shape9: TShape;
    Label12: TLabel;
    Shape10: TShape;
    Label13: TLabel;
    Shape11: TShape;
    Label14: TLabel;
    shEdtNota: TShape;
    Label2: TLabel;
    EdtNota: TEdit;
    Shape12: TShape;
    Label15: TLabel;
    Shape13: TShape;
    Label16: TLabel;
    Shape14: TShape;
    Label17: TLabel;
    TabSheet1: TTabSheet;
    pnlDadosCliente: TPanel;
    pnlDadosCompra: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Shape5: TShape;
    Shape15: TShape;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    EdtVias: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
    FDQuery1idcliente: TFDAutoIncField;
    FDQuery1nome: TStringField;
    FDQuery1cli_limite: TFloatField;
    FDQuery1cpfcnpj: TStringField;
    FDQuery1logradouro: TStringField;
    FDQuery1numero: TStringField;
    FDQuery1bairro: TStringField;
    FDQuery1cidade: TStringField;
    FDQuery1estado: TStringField;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EdtNotaMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtNotaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarCliente;
  end;

var
  FrmEntrega: TFrmEntrega;

implementation

{$R *.dfm}

uses Funcao.Classe, Esmaecer.MsgErro;

procedure TFrmEntrega.BuscarCliente;
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
 shEdtNome.Brush.Color := $0EEEEEE;
shEdtNome.Pen.Color := $00D3D3D3;
 EdtNome.Color := $00EEEEEE; // Mudar a cor fundo do edit caso encontra o registro

 if FDQuery1.RecordCount = 0 then
 begin
    EdtNome.Color := clWindow;
    shEdtNome.Brush.Color := clWhite; // Mudar a cor do PnlEdti senao encontrar o registro
    shEdtNome.Pen.Color := clRed;
    EdtNome.SelectAll;
    EdtNome.SetFocus;
    FrmMsgerro.MsgText('Cliente não encontrado',true,clRed);
   end;
 end;
end;


procedure TFrmEntrega.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BuscarCliente;  //Buscar Clientes


end;

procedure TFrmEntrega.EdtNotaMouseLeave(Sender: TObject);
begin
shEdtNota.Pen.Color := $00939393;
end;

procedure TFrmEntrega.EdtNotaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
shEdtNota.Pen.Color := $0053320A;
end;

procedure TFrmEntrega.FormCreate(Sender: TObject);
begin
  ArredondaPainel(pnlFundo, 12);
  ArredondaPainel(pnlCliente, 12);
    ArredondaPainel(pnlDadosCliente, 12);
      ArredondaPainel(pnlDadosCompra, 12);
end;

procedure TFrmEntrega.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then
    if EdtNome.Focused then
    begin//Se  estiver com o foco fecha a busca de cliente

      FrmEntrega.close;
    end
    else
  //   EdtNome.SetFocus;
end;

procedure TFrmEntrega.FormKeyPress(Sender: TObject; var Key: Char);
begin
ShowScrollBar (gridClientes.Handle, SB_HORZ, FALSE); // Remove o ScrollBox do DBGrid
end;

procedure TFrmEntrega.FormResize(Sender: TObject);
begin
  pnlFundo.Top  := Round(FrmEntrega.Height/2 - pnlFundo.Height/2);
  pnlFundo.Left := Round(FrmEntrega.Width/2 - pnlFundo.Width/2);
end;

procedure TFrmEntrega.gridClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then begin
    EdtNome.Color := clWhite;
    shEdtNome.Brush.Color := clwhite; //Mudar a cor do PnlEdti senao encontrar o registro
    EdtNome.SelectAll;
    EdtNome.SetFocus;
   end;
end;

end.
