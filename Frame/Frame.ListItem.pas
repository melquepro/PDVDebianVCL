unit Frame.ListItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFrameListItem = class(TFrame)
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Shape1: TShape;
    dblbDescItem: TLabel;
    lblDescAcresc: TLabel;
    dbvaloritem: TLabel;
    dblbVlrTotal: TLabel;
    spBottom: TSplitter;
    lblSqItem: TLabel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uPrincipal;

end.
