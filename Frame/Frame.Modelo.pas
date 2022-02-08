unit Frame.Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrameTeste = class(TFrame)
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FrameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameTeste.FrameClick(Sender: TObject);
begin
Brush.Style := bsClear;

end;

end.
