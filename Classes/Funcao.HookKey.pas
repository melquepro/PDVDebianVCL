unit Funcao.HookKey;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms;

const
  NomeDLL       = 'HookTeclado.dll';
  CM_MANDA_TECLA  = WM_USER + $1000;

   procedure LlegaDelHook(var message: TMessage); message  CM_MANDA_TECLA;
   procedure CapturaKey;



type
  THookTeclado=procedure; stdcall;


var

    ArquivoM       : THandle;
    PReceptor      : ^Integer;
    HandleDLL      : THandle;
    HookOn,
    HookOff        : THookTeclado;


implementation


procedure LlegaDelHook(var message: TMessage);
var
   NomeTecla : array[0..222] of Char;
   Acao      : string;
   chave : Word;
begin
  {Traduzimos de "Virtual key Code" a "TEXTO"}
  GetKeyNameTextW(Message.LParam,@NomeTecla,222);
  {Observamos se a tecla foi pressionada, soltada o repetida}
//  if ((Message.lParam shr 31) and 1)=0 then
//   Acao:='Solta'
//  else
//    if ((Message.lParam shr 30) and 1)=1 then
//     Acao:='Repetida'
//    else
  Acao:='Pressionada:';
  //Memo2.Lines.Add( Acao+' VK_ '+ String(NomeTecla) );

end;
procedure CapturaKey;
    {Nao queremos que o memo seja editado conforme a tecla pressionada}
  HandleDLL:=LoadLibrary( PChar(ExtractFilePath(Application.Exename)+NomeDLL ) );
  if HandleDLL = 0 then raise Exception.Create('Não foi possível carregar a DLL!');
  @HookOn :=GetProcAddress(HandleDLL, 'HookOn');
  @HookOff:=GetProcAddress(HandleDLL, 'HookOff');
  IF not assigned(HookOn) or
     not assigned(HookOff)  then
     raise Exception.Create('Não foram encontradas as funções na DLL');
  {Criamos o arquivo de memoria}
  ArquivoM:=CreateFileMapping( $FFFFFFFF,
                               nil,
                               PAGE_READWRITE,
                               0,
                               SizeOf(Integer),
                               'OReceptor');
    {Se o arquivo nao se criou, erro}
    if ArquivoM=0 then
      raise Exception.Create( 'Erro ao criar o arquivo');
    {Direcionamos nossa estrutura ao arquivo de memoria}
    PReceptor:=MapViewOfFile(ArquivoM,FILE_MAP_WRITE,0,0,0);
    {Escrevemos dados no arquivo de memoria}
    PReceptor^:=Handle;
    HookOn;
 end;
end.
