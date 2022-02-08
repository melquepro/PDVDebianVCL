unit Esmaecer.TelaFundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmEsmaecerTela = class(TForm)
    imgFundo: TImage;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEsmaecerTela: TFrmEsmaecerTela;

implementation

{$R *.dfm}

procedure TFrmEsmaecerTela.FormResize(Sender: TObject);
begin
  imgFundo.Top  := Round(FrmEsmaecerTela.Height/2 - imgFundo.Height/2);
  imgFundo.Left := Round(FrmEsmaecerTela.Width/2 - imgFundo.Width/2);
end;

end.
