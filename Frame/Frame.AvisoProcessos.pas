unit Frame.AvisoProcessos;


{
Esse Frame você pode personalizar para cada operação for usada.
Ex: Cancelar Item, Cancelar Cupom, Desconto e outros.



}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameAvisoProcesso = class(TFrame)
    bvSeparador: TBevel;
    Panel1: TPanel;
    lblSeqItem: TLabel;
    lblDescricaoItem: TLabel;
    lblMotivo: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CMRelease(var Message: TMessage); message CM_RELEASE;
      procedure FrmameRelease;
  end;

implementation

{$R *.dfm}

uses uFrmCancelItem;

procedure TFrameAvisoProcesso.CMRelease(var Message: TMessage);
begin
  Free;
end;

procedure TFrameAvisoProcesso.FrmameRelease;
begin
  PostMessage(Handle, CM_RELEASE, 0, 0);
end;

end.
