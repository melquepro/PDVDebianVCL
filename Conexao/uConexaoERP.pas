unit uConexaoERP;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB,


  ComCtrls, IniFiles,StdCtrls,Mask,Forms

  ;

type
  TDMConexaoERP = class(TDataModule)
    ConexaoERP: TFDConnection;
    Transaction: TFDTransaction;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    MySQLDriver: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

    ArqIni : TIniFile;
    sPath, sPathV15, sUser, sPass : String;

  public
    { Public declarations }

  end;

var
  DMConexaoERP: TDMConexaoERP;

 SERVER,CONECTION_NAME, USER,DRIVER, SENHA, LIB, DB: string;
 PORTA: String;
 CONF: TiniFile;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Esmaecer.MsgErro;

{$R *.dfm}

procedure TDMConexaoERP.DataModuleCreate(Sender: TObject);
var
aux : String;
begin
 { //
  try
    // verifica arquivo de configuração de acesso aos dados
    aux := ExtractFilePath(Application.ExeName)+'config.ini';
    if not FileExists(aux) then
     MySQLDriver.VendorLib := GetCurrentDir + '\libmysql.dll';
     CONF := TIniFile.Create(ExtractFilePath(Application.exeName) + '\config.ini');
     DB := CONF.ReadString('Conexão','SysBase','');
     PORTA := CONF.ReadString('Conexão','Port','');
     ConexaoERP.DriverName := 'MySQL';
     ConexaoERP.Params.values['User_name'] := 'root';
     ConexaoERP.Params.values['Password'] := '123s';
     ConexaoERP.Params.values['Port'] := PORTA;
     ConexaoERP.Params.Values['DataBase'] := DB;

     // atribui variavel de controle
   // ConexaoDebianDados := ConexaoERP;
     try
        ConexaoERP.Connected := true;
      except
       FrmMsgerro.MsgText('Erro ao Conectar a Base!',false,$0085DE60);
      end;
  except
    on Exc: Exception do
    begin
    //  MessageDlg('Erro: '+Exc.Message, mtWarning, [mbOK], 0);
      Application.Terminate;
    end;
  end;
end;
    }
end;


end.
