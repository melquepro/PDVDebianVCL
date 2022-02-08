unit uDMComERP;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMComERP = class(TDataModule)
    qryCaixa: TFDQuery;
    qryCaixaidcaixa: TIntegerField;
    qryCaixaidempresa: TIntegerField;
    qryCaixaidusuario: TIntegerField;
    qryCaixadtabertura: TDateTimeField;
    qryCaixadtmovimento: TDateTimeField;
    qryCaixadtfechamento: TDateTimeField;
    qryCaixacaixaaberto: TStringField;
    qryCaixacaixafechado: TStringField;
    qryCaixavalreforcocx: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMComERP: TDMComERP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConexaoERP;

{$R *.dfm}

end.
