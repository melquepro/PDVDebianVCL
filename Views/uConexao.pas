unit uConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Error, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    FDTransaction1: TFDTransaction;
    Conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    qryClienteidcliente: TFDAutoIncField;
    qryClientenome: TStringField;
    qryClientecli_limite: TFloatField;
    qryPagamento: TFDQuery;
    dsPagamento: TDataSource;
    qryPagamentoidpagamento: TFDAutoIncField;
    qryPagamentodesc_pagamento: TStringField;
    qryClientecpfcnpj: TStringField;
    qryClientelogradouro: TStringField;
    qryClientenumero: TStringField;
    qryClientebairro: TStringField;
    qryClientecidade: TStringField;
    qryClienteestado: TStringField;
    qryProdutoidproduto: TFDAutoIncField;
    qryProdutocodbarra: TStringField;
    qryProdutodescproduto: TStringField;
    qryProdutovlrproduto: TBCDField;
    qryProdutomedida: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
