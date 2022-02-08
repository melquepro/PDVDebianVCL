object FrmConsCliente: TFrmConsCliente
  Left = 0
  Top = 154
  BorderStyle = bsNone
  Caption = 'Consultar Cliente'
  ClientHeight = 933
  ClientWidth = 940
  Color = 15066597
  TransparentColor = True
  TransparentColorValue = 15066597
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  SnapBuffer = 0
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlFundo: TPanel
    Left = 16
    Top = 8
    Width = 907
    Height = 917
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      907
      917)
    object pnlEditNome: TShape
      Left = 16
      Top = 158
      Width = 865
      Height = 48
      Pen.Color = 13882323
      Shape = stRoundRect
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 907
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
        Width = 907
        Height = 58
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Informar Cliente'
        Color = 5439488
        ParentColor = False
        ExplicitWidth = 905
      end
      object Image1: TImage
        Left = 343
        Top = 36
        Width = 218
        Height = 50
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000003
          764944415478DAED997D688D7114C79F6B1AF312569396B726432892486A5BAD
          35465EA650FE18A510D91FEC1F8D16292FE51F14A52952D21DCA1F224C290D49
          6416662B696B6D362F6396767D4ECFB9F674DB7DD973EFF67BBADD53DFCE7EE7
          FCCEF99DEF9EE7F7F65C9F9524E2335D408A488A88C72545C46B1296482010C8
          458D375D6088FCF0F97CEF074BE4112ADF74E521520B91821411A41BF41A2A3E
          1D8C4D1491ED24B86C82057594A1AA534492958857244524E9885400BFA1E24B
          C1C94411499AC99EBC44F0DF448DD3E62EFC8D6AAF42AD7059F74FF26C186E22
          9DA889DA5C8CFF9583E07A9744BAC8332945C4251119205D9B7EFC1D6A2F42CD
          7449A437CC38A9C9EE25226B5147C014D0401D85092582BF1C354A9BD5F8DBD4
          BE1135DB65DD35E4F9E026D02B93FD3BD84D8E6B2EFF019E202279F2887FE3C8
          9D61D947936230076482162063DCA0EFE34412910918BC8256E06F56FB41D4D2
          4110B940EC0347DE4DA833606A84983AB08FB8E77113190A61CC4A549515DBF7
          B61EB08DBAFC9E22C2783B51171DA63FE03AB80BDAC10C20C797558EBAA54F01
          B53D8DE7D55A844AD3E63BFCBFD43ECBEA9F3B91A48998AF1A234BEB47ABFF55
          7D2D45E3FF34405D2B2DFB4A31393836586872B2CF27A65E634E58F69D47A455
          F3B546A86D19EA0918A9A6ADA688B4D33FCB914B4ECE39DADC8BEF5CB4FF0231
          97503BB4E98F8748136A8236FF2F9FD8AFA25647A9E3657087A6BF2CAD1D0E5F
          36BE96188894A0EE68B3D9F864679C79A87A6DFE669C3131C6CDB5ECF921D2E3
          0522B25F7CD6661FC860ACA89F678993BDEA9936DBBC404426EC37107C1285CE
          0D3242DC01D4296DC6BCFC0E8534831C8A66A8408D65EF1122F740B1D823D426
          CBB4BC56D3D45469FABBD6720AAE632C99F8F71DF663D82BC3D425276ED928D7
          A949F6AF5C9344E4D82FAB5D03638DE06F5905A73BFCB7C121FC6FB51EA9350F
          9C064B1CFD0ED3E7682422D9A8D14348A493023AB5C0B3604F987E5F2CFB2822
          3F036685F86E8152F2F419FD31549F846C6C650EB31C5B32A38582F3A01C127F
          C5608C88AE5657C01687595E67B9DACA3D64BF657F1F4B73F8653E3C04C7E5A0
          E8CC6784481812B5A02478F8D47E720492A34BF062D588BF67A09CC34E4449C8
          31667308893514D9ED36AF09220B2C7B47CE5093DCF28A20D1154F5E53AF96DC
          29E4C2F4C2B25F27D74FC2281125938F7A15EF9308CA3FEFE32B59D4F6A29800
          00000049454E44AE426082}
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 855
      Width = 907
      Height = 62
      Align = alBottom
      BevelOuter = bvNone
      Caption = '[ESC] Cancelar'
      Color = 15658734
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnlEndereco: TPanel
      Left = 18
      Top = 755
      Width = 863
      Height = 67
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 863
        Height = 67
        Align = alClient
        Pen.Color = 13882323
        Pen.Style = psInsideFrame
        Shape = stRoundRect
        ExplicitTop = -35
        ExplicitWidth = 871
      end
      object DBText1: TDBText
        Left = 59
        Top = 33
        Width = 347
        Height = 17
        Color = clWhite
        DataField = 'bairro'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 100
        Top = 6
        Width = 388
        Height = 17
        DataField = 'logradouro'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 574
        Top = 9
        Width = 331
        Height = 17
        DataField = 'numero'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 565
        Top = 36
        Width = 334
        Height = 17
        DataField = 'cidade'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 5
        Top = 6
        Width = 89
        Height = 21
        Caption = 'Lagradouro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 5
        Top = 33
        Width = 48
        Height = 21
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 504
        Top = 9
        Width = 64
        Height = 21
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 504
        Top = 35
        Width = 55
        Height = 21
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlListFundo: TPanel
      Left = 16
      Top = 215
      Width = 865
      Height = 518
      BevelOuter = bvNone
      Color = 13882323
      ParentBackground = False
      TabOrder = 3
      object gridClientes: TDBGrid
        Left = 1
        Top = 40
        Width = 863
        Height = 476
        BorderStyle = bsNone
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgColumnResize, dgRowSelect, dgMultiSelect]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = gridClientesDrawColumnCell
        OnKeyDown = gridClientesKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idcliente'
            Title.Caption = 'C'#243'digo    '
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -27
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf_cnpj'
            Title.Caption = 'CPF_CNPJ'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -27
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 658
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 865
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
          Left = 0
          Top = 0
          Width = 97
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = '   C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = -6
          ExplicitTop = -6
        end
        object Label3: TLabel
          Left = 97
          Top = 0
          Width = 176
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = 'CPF/CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 273
          Top = 0
          Width = 80
          Height = 40
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 249
          ExplicitTop = -6
        end
      end
    end
    object EdtNome: TEdit
      Left = 23
      Top = 162
      Width = 854
      Height = 37
      Margins.Left = 0
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TextHint = 'Informe o nome, c'#243'digo ou CPF/CNPJ'
      OnKeyPress = EdtNomeKeyPress
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 248
    Top = 529
  end
  object FDQuery1: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from cliente')
    Left = 248
    Top = 457
    object FDQuery1idcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object FDQuery1cli_limite: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'cli_limite'
      Origin = 'cli_limite'
    end
    object FDQuery1cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpfcnpj'
      Origin = 'cpfcnpj'
      Size = 15
    end
    object FDQuery1logradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object FDQuery1numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQuery1bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQuery1cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQuery1estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 30
    end
  end
end
