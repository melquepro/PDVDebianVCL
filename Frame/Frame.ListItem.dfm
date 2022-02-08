object FrameListItem: TFrameListItem
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 742
  Height = 75
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  PixelsPerInch = 96
  object dblbDescItem: TLabel
    Left = 86
    Top = 3
    Width = 119
    Height = 25
    Caption = 'dblbDescItem'
    Color = 16741749
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object dblbVlrTotal: TLabel
    AlignWithMargins = True
    Left = 616
    Top = 3
    Width = 123
    Height = 68
    Align = alRight
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'dblbVlrTotal'
    Color = 16741749
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object dbvaloritem: TLabel
    Left = 86
    Top = 47
    Width = 89
    Height = 21
    Caption = 'dbvaloritem'
    Color = 16741749
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblDescAcresc: TLabel
    Left = 86
    Top = 28
    Width = 179
    Height = 17
    Caption = '(10,00% Desconto  Promo'#231#227'o)'
    Color = 16741749
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object spBottom: TSplitter
    Left = 0
    Top = 74
    Width = 742
    Height = 1
    Cursor = crDefault
    Align = alBottom
    AutoSnap = False
    Color = 5121313
    ParentColor = False
    ResizeStyle = rsLine
    ExplicitTop = 73
    ExplicitWidth = 808
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 0
    Width = 9
    Height = 74
    Cursor = crDefault
    AutoSnap = False
    ResizeStyle = rsNone
  end
  object Splitter3: TSplitter
    Left = 601
    Top = 0
    Width = 12
    Height = 74
    Cursor = crDefault
    Align = alRight
    AutoSnap = False
    ResizeStyle = rsNone
    ExplicitLeft = 767
    ExplicitHeight = 91
  end
  object Panel1: TPanel
    Left = 9
    Top = 0
    Width = 64
    Height = 74
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 16
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 64
      Height = 74
      Align = alClient
      ParentShowHint = False
      Pen.Color = 5121313
      Pen.Style = psInsideFrame
      Shape = stCircle
      ShowHint = False
      ExplicitLeft = 9
      ExplicitWidth = 60
      ExplicitHeight = 71
    end
    object lblSqItem: TLabel
      Left = 0
      Top = 0
      Width = 64
      Height = 74
      Align = alClient
      Alignment = taCenter
      Caption = '1'
      Color = 16741749
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 40
      ExplicitTop = 25
      ExplicitWidth = 9
      ExplicitHeight = 21
    end
  end
end
