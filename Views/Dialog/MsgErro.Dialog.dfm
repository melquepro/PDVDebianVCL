object FrmMsgErro: TFrmMsgErro
  Left = 0
  Top = 0
  Align = alTop
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FrmMsgErro'
  ClientHeight = 23
  ClientWidth = 1020
  Color = 1380351
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlMsg: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Produto n'#227'o encontrado.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object tmShow: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmShowTimer
    Left = 88
  end
  object tmClose: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmCloseTimer
    Left = 496
  end
end
