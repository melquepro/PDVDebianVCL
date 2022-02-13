object FrmImpOrcamento: TFrmImpOrcamento
  Left = 0
  Top = 154
  AutoSize = True
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'Importar Or'#231'amento'
  ClientHeight = 847
  ClientWidth = 1129
  Color = 15066597
  TransparentColor = True
  TransparentColorValue = 15066597
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  SnapBuffer = 0
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 847
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlFundo: TPanel
      Left = 15
      Top = 214
      Width = 1094
      Height = 540
      BevelOuter = bvNone
      Color = 13882323
      ParentBackground = False
      TabOrder = 4
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1129
      Height = 145
      Align = alTop
      BevelOuter = bvNone
      Color = 7290415
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 87
        Width = 1129
        Height = 58
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Importar Or'#231'amento'
        ExplicitWidth = 905
      end
      object Image1: TImage
        Left = 455
        Top = 31
        Width = 218
        Height = 50
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000001
          7C4944415478DAEDD9314B42511407F07B2114A9C5A1A1499B842274692C08A1
          45BF414B4DB53634977E813E422E7D84F6C449685024D049A71C1A842024085E
          FF430F7C8583DE7B9FF7BEEBF9C3E1E07D70EEFDC17B3E50293C89B47D0086AC
          3524088243B4BCE1BD7B52CAFEAA210F68E786219FA80A30CDA443281FA83230
          2F362063D49BC69E07A854E4F30475AA8B5181D4B0E99DEA86983542CBFD5BD6
          BECD6C43BE50E908A68AD9CF4984DCA0EAA88C2EC636E48496504FA84D1D8C75
          081D186BC721664B15E304245CD7C2D886D061BF239737C4EC16A3D07B86BE9A
          DBAE43164903FB5D302446C89EF8FB669F972BD4A5D39005F7A3F9B70C5185E0
          FA3DDAAEE2B9879877ED0AA4835654847431AFC410C39033B46D45C83BE63D3A
          01311D86E842BCB9B57C7AD8BD81F8F142341D86E84270BD2066BF842C9B29E6
          0D5C8178F3B07B036989DFDF7455427F2F1C3901311D863084210C310A998415
          67B261C50A597518320FB28FB663093206E4D508240961886BF106F203C63FD6
          42E7DBE1450000000049454E44AE426082}
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 780
      Width = 1129
      Height = 67
      Align = alBottom
      BevelOuter = bvNone
      Caption = '[PAGEUP] Voltar    [PAGEDOWN] Avan'#231'ar    [ESC] Cancelar'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnlEditNome: TPanel
      Left = 15
      Top = 158
      Width = 1099
      Height = 52
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 1093
        Height = 50
        Pen.Color = 13882323
        Shape = stRoundRect
      end
      object EdtNome: TEdit
        Left = 4
        Top = 1
        Width = 1088
        Height = 48
        Margins.Left = 0
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EdtNomeKeyDown
        OnKeyPress = EdtNomeKeyPress
      end
    end
    object pnlListFundo: TPanel
      Left = 16
      Top = 215
      Width = 1092
      Height = 538
      BevelOuter = bvNone
      Color = 14803425
      ParentBackground = False
      TabOrder = 3
      object gridItem: TDBGrid
        Left = 0
        Top = 40
        Width = 1092
        Height = 498
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsConsItem
        GradientEndColor = 5439488
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = gridItemKeyDown
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'idorcamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo    '
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -27
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'CPF_CNPJ'
            Width = 780
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Width = 125
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1092
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Color = 14803425
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 134
          Height = 34
          Align = alLeft
          AutoSize = False
          Caption = '  N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 140
          Top = 0
          Width = 797
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 937
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 977
          ExplicitTop = 1
        end
      end
    end
  end
  object qryConsItem: TFDQuery
    Active = True
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT * FROM orcamento WHERE idorcamento ORDER BY idorcamento')
    Left = 240
    Top = 71
    object qryConsItemidorcamento: TFDAutoIncField
      FieldName = 'idorcamento'
      Origin = 'idorcamento'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryConsItemnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 30
    end
    object qryConsItemvalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = ',0.00'
      Precision = 14
      Size = 2
    end
  end
  object dsConsItem: TDataSource
    DataSet = qryConsItem
    Left = 136
    Top = 48
  end
end
