unit Frame.CancelarItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TFrameCancelarItem = class(TFrame)
    pnlTop: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
