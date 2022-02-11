object FrmFormaPagamento: TFrmFormaPagamento
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Forma de Pagamentos'
  ClientHeight = 894
  ClientWidth = 1829
  Color = 12424588
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 15
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 1829
    Height = 894
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1829
      894)
    object Label1: TLabel
      Left = 32
      Top = 71
      Width = 207
      Height = 25
      Caption = 'Formas de Pagamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 415
      Width = 203
      Height = 25
      Caption = 'Descontos e Acr'#233'scimo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlFormaPag: TPanel
      Left = 34
      Top = 103
      Width = 1770
      Height = 258
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 7290415
      ParentBackground = False
      TabOrder = 0
      inline FrameFormaPg1: TFrameFormaPg
        Left = 4
        Top = -1
        Width = 253
        Height = 258
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = -1
        ExplicitWidth = 253
        inherited pnlFundo: TPanel
          inherited pnlTipoPg: TPanel
            Height = 110
            ExplicitHeight = 110
            inherited lblTipoPg: TLabel
              Width = 229
              Height = 104
              Color = 8085537
            end
          end
          inherited EdtValor: TEdit
            AlignWithMargins = True
            Width = 207
            ParentBiDiMode = False
            OnKeyPress = FrameFormaPg1EdtValorKeyPress
            ExplicitWidth = 207
          end
        end
      end
    end
    object pnlValores: TPanel
      Left = 34
      Top = 736
      Width = 1770
      Height = 128
      Anchors = [akLeft, akRight, akBottom]
      BevelOuter = bvNone
      Color = 12424588
      ParentBackground = False
      TabOrder = 1
      object Splitter1: TSplitter
        AlignWithMargins = True
        Left = 1214
        Top = 9
        Width = 18
        Height = 112
        Cursor = crDefault
        ResizeStyle = rsNone
        ExplicitLeft = 1216
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 0
        Width = 1770
        Height = 6
        Cursor = crDefault
        Align = alTop
        ResizeStyle = rsNone
        ExplicitWidth = 1273
      end
      object Splitter3: TSplitter
        Left = 0
        Top = 124
        Width = 1770
        Height = 4
        Cursor = crDefault
        Align = alBottom
        ResizeStyle = rsNone
        ExplicitTop = 125
        ExplicitWidth = 1273
      end
      object Splitter5: TSplitter
        AlignWithMargins = True
        Left = 350
        Top = 9
        Width = 24
        Height = 112
        Cursor = crDefault
        ResizeStyle = rsNone
        ExplicitLeft = 312
        ExplicitTop = 1
        ExplicitHeight = 117
      end
      object Splitter6: TSplitter
        AlignWithMargins = True
        Left = 760
        Top = 9
        Width = 24
        Height = 112
        Cursor = crDefault
        ResizeStyle = rsNone
        ExplicitLeft = 646
        ExplicitTop = 1
        ExplicitHeight = 117
      end
      object Splitter4: TSplitter
        AlignWithMargins = True
        Left = 1759
        Top = 9
        Width = 8
        Height = 112
        Cursor = crDefault
        Align = alRight
        ResizeStyle = rsNone
        ExplicitLeft = 1760
      end
      object pnlSubTotal: TPanel
        Left = 0
        Top = 6
        Width = 347
        Height = 118
        Align = alLeft
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblSubTotal: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 44
          Width = 341
          Height = 71
          Align = alClient
          Caption = '0,00'
          Color = 7290415
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -48
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 97
          ExplicitHeight = 65
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 347
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  SUBTOTAL'
          Color = 7290415
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlTotal: TPanel
        Left = 377
        Top = 6
        Width = 380
        Height = 118
        Align = alLeft
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object lblTotal: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 44
          Width = 374
          Height = 71
          Align = alClient
          Caption = '0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -48
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 97
          ExplicitHeight = 65
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 380
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  TOTAL'
          Color = 7290415
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlValorPago: TPanel
        Left = 787
        Top = 6
        Width = 424
        Height = 118
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label5: TLabel
          Left = 8
          Top = 14
          Width = 123
          Height = 25
          Caption = ' VALOR PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblValorPago: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 44
          Width = 418
          Height = 71
          Align = alClient
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -48
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 97
          ExplicitHeight = 65
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 424
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  VALOR PAGO'
          Color = 7290415
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlTotalPagar: TPanel
        Left = 1235
        Top = 6
        Width = 432
        Height = 118
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 14
          Width = 142
          Height = 25
          Caption = 'TOTAL A PAGAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalPagar: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 44
          Width = 426
          Height = 71
          Align = alClient
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -48
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 97
          ExplicitHeight = 65
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 432
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  TOTAL A PAGAR'
          Color = 7290415
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object Button1: TButton
      Left = 256
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Convenio'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Dinheiro'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 425
      Top = 72
      Width = 75
      Height = 25
      Caption = 'TEF'
      TabOrder = 4
      OnClick = Button3Click
    end
    object pnlFormaDescAcres: TPanel
      Left = 32
      Top = 450
      Width = 1770
      Height = 257
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 7290415
      ParentBackground = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 368
      Top = 400
      Width = 121
      Height = 23
      TabOrder = 6
      Text = '100,00'
      OnKeyPress = Edit1KeyPress
    end
    object Button4: TButton
      Left = 568
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 7
    end
  end
  object qryFormaPg: TFDTable
    Active = True
    IndexFieldNames = 'idformapg'
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    TableName = 'formapagamento'
    Left = 768
    Top = 384
    object qryFormaPgidformapg: TFDAutoIncField
      FieldName = 'idformapg'
      Origin = 'idformapg'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFormaPgtipo_pg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_pg'
      Origin = 'tipo_pg'
      Size = 30
    end
    object qryFormaPgvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object qryGeral: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    Left = 408
    Top = 448
  end
end
