unit uFrmFormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Frame.FormaPagamento, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Funcao.Format;

type
  TFrmFormaPagamento = class(TForm)
    pnlFormaPag: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlValores: TPanel;
    pnlSubTotal: TPanel;
    pnlTotal: TPanel;
    pnlValorPago: TPanel;
    Label5: TLabel;
    pnlTotalPagar: TPanel;
    Label6: TLabel;
    lblSubTotal: TLabel;
    lblTotal: TLabel;
    lblValorPago: TLabel;
    lblTotalPagar: TLabel;
    pnlFundo: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter4: TSplitter;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qryFormaPg: TFDTable;
    qryFormaPgidformapg: TFDAutoIncField;
    qryFormaPgtipo_pg: TStringField;
    qryFormaPgvalor: TBCDField;
    qryGeral: TFDQuery;
    pnlFormaDescAcres: TPanel;
    FrameFormaPg1: TFrameFormaPg;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FrameFormaPg1EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FormaPagamento(aTipoPg: String);
    procedure FormaDescAcrescimo;

  end;

var
  FrmFormaPagamento: TFrmFormaPagamento;
  FrameTipoPagamento : TFrameFormaPg;
  DescRealPerc: Boolean; // Desconto em REAL ou PERCENTUAL
  aCartao: Boolean; // Se aperta a letra Z adiciona com dinheiro
  TipoPg: String;

implementation

{$R *.dfm}

uses Esmaecer.TelaFundo, Funcao.Classe, uConexao, OpcaoDescAcres.TelaView;

procedure TFrmFormaPagamento.Button1Click(Sender: TObject);
begin

  FrameTipoPagamento := TFrameFormaPg.Create(nil);
  FrameTipoPagamento.Parent := pnlFormaPag;
  // Frame.Name := 'Itens'+i.ToString;
  FrameTipoPagamento.Align := alLeft;
  FrameTipoPagamento.lblTipoPg.Caption := 'CONVÊNIO' + #13 + 'FUNCIONARIO';
  FrameTipoPagamento.shTipoPg.Pen.Color := $00573B01;
  FrameTipoPagamento.pnlTipoPg.Color := $00573B01;

end;

procedure TFrmFormaPagamento.Button2Click(Sender: TObject);
begin
  FormaPagamento('D');
end;

procedure TFrmFormaPagamento.Button3Click(Sender: TObject);
begin
  FormaPagamento('TEF');
end;

procedure TFrmFormaPagamento.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  Edit1.SelStart := Length(Edit1.Text);
end;

procedure TFrmFormaPagamento.FormActivate(Sender: TObject);
begin

  ArredondaPainel(pnlValores, 12);
  ArredondaPainel(pnlFormaPag, 12);
  ArredondaPainel(pnlFormaDescAcres, 12);
  ArredondaPainel(pnlSubTotal, 12);
  ArredondaPainel(pnlTotal, 12);
  ArredondaPainel(pnlValorPago, 12);
  ArredondaPainel(pnlTotalPagar, 12);
end;

procedure TFrmFormaPagamento.FormaDescAcrescimo;
var
  FrameDescAcres: TFrameFormaPg;
begin
  FrameDescAcres := TFrameFormaPg.Create(nil);
  FrameDescAcres.Parent := pnlFormaDescAcres;
  // Frame.Name := 'Itens'+i.ToString;
  // FrameDescAcres.Align := alTop;
  // FrameDescAcres.Height := 239;

  // Desconto em REAL ou PERCENTUAL
  if DescRealPerc then
  begin
    DescRealPerc := true;
    FrameDescAcres.lblTipoPg.Caption := 'DESCONTO' + #13 + 'MANUAL R$';
    FrameDescAcres.shTipoPg.Pen.Color := $005752CD;
    FrameDescAcres.pnlTipoPg.Color := $005752CD;
    FrameDescAcres.EdtValor.Text := FormatFloat('#,##0.00',
      (StrToFloat(FrameDescAcres.EdtValor.Text)));
    FrameDescAcres.EdtValor.SetFocus;
    FrameDescAcres.EdtValor.SelectAll;
    FrameDescAcres.Refresh;
  end
  else
  begin
    DescRealPerc := false;
    FrameDescAcres.lblTipoPg.Caption := 'DESCONTO' + #13 + 'MANUAL %';
    FrameDescAcres.shTipoPg.Pen.Color := $005752CD;
    FrameDescAcres.pnlTipoPg.Color := $005752CD;
    FrameDescAcres.EdtValor.Text := FormatFloat('#,##0.00',
      (StrToFloat(FrameDescAcres.EdtValor.Text)));
    FrameDescAcres.EdtValor.SetFocus;
    FrameDescAcres.EdtValor.SelectAll;
    FrameDescAcres.Refresh;
  end;

end;

procedure TFrmFormaPagamento.FormaPagamento(aTipoPg: String);
begin

  qryGeral.Close;
  qryGeral.SQL.Clear;
  qryGeral.SQL.Add('SELECT * from cliente');
  // qryGeral.ParamByName('cod').Value := EdtValor.Text;
  qryGeral.Open;

  // Frame.Name := 'Itens'+i.ToString;

  if not(qryGeral.IsEmpty) then
  begin

    FrameTipoPagamento := TFrameFormaPg.Create(nil);
    { Cria o Frame dentro do Panel da Forma de Pagamento personalizado }
    FrameTipoPagamento.Align := alLeft;
    FrameTipoPagamento.Parent := pnlFormaPag;
    if aTipoPg = 'D' then
    begin
      if qryGeral.FieldByName('idcliente').AsString.Equals('1') then

        FrameTipoPagamento.lblTipoPg.Caption :=
          qryGeral.FieldByName('nome').AsString;
      // Frame.EdtValor.Text := FormatFloat('#,###.00',(StrToFloat(Frame.EdtValor.Text)));
      FrameTipoPagamento.EdtValor.Text :=
        qryGeral.FieldByName('cli_limite').AsString;

      FrameTipoPagamento.EdtValor.SetFocus;
    end;
    if aTipoPg = 'TEF' then
    begin
      if qryGeral.FieldByName('idcliente').AsString.Equals('2') then

        FrameTipoPagamento.lblTipoPg.Caption :=
          qryGeral.FieldByName('nome').AsString;
      FrameTipoPagamento.shTipoPg.Pen.Color := $006F0E6E;
      FrameTipoPagamento.shTipoPg.Pen.Width := 2;
      FrameTipoPagamento.pnlTipoPg.Color := $006F0E6E;

      FrameTipoPagamento.EdtValor.Text :=
        FormatFloat('#,###.00', (StrToFloat(FrameTipoPagamento.EdtValor.Text)));
      FrameTipoPagamento.EdtValor.Text :=
        qryGeral.FieldByName('cli_limite').AsString;

      FrameTipoPagamento.EdtValor.SetFocus;
    end;

    FrameTipoPagamento.Refresh;

  end;
end;

procedure TFrmFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmEsmaecerTela.Hide;
end;

procedure TFrmFormaPagamento.FormCreate(Sender: TObject);
begin
  FrmEsmaecerTela.Show;

end;

procedure TFrmFormaPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin



  if Key = VK_ESCAPE then
    Close;

  if Key = VK_DELETE then
  begin
    FrmDescAcres := TFrmDescAcres.Create(nil);

    FrmDescAcres.Show;
  end;
end;

procedure TFrmFormaPagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin


  if Key = #122 then
  begin

    FormaPagamento('D'); // Tecla Z

  end;
  if Key = #100 then
  begin

    FormaPagamento('TEF'); // Tecla C

  end;
end;

procedure TFrmFormaPagamento.FormResize(Sender: TObject);
begin
  pnlFundo.Top := Round(FrmFormaPagamento.Height / 2 - pnlFundo.Height / 2);
  pnlFundo.Left := Round(FrmFormaPagamento.Width / 2 - pnlFundo.Width / 2);
end;

procedure TFrmFormaPagamento.FrameFormaPg1EdtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
// Permitir somente números, ponto e vírgula.
if not (key in ['0'..'9',',','.',#8]) then
begin
key :=#0;
  Formatar(FrameFormaPg1.EdtValor, TFormato.Valor); // Valor...
end;


end;

end.
