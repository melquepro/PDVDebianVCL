object FrmConfigPeriferico: TFrmConfigPeriferico
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Configura'#231#245'es'
  ClientHeight = 1054
  ClientWidth = 1313
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label12: TLabel
    Left = 280
    Top = 173
    Width = 46
    Height = 17
    Caption = 'Modelo'
    Font.Charset = ANSI_CHARSET
    Font.Color = 3808280
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 29
    Width = 257
    Height = 1025
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 2
    object pnlRede: TPanel
      Left = 1
      Top = 33
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'REDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlRedeClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image1: TImage
        Left = 12
        Top = 0
        Width = 53
        Height = 41
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          CE4944415478DA63641860C038681C509C9FFF9F1C037A274EA4C81383CF01C4
          1A48AAFA51078C3A60E8388054307C1C800B101BD4C50505410CFFFF4F013225
          0918F99CF1FFFFCC9E49933652D701F9F9CF88B01C069E02CD93C1EA0062A302
          DD4124381445DDE07300B960F83A00A8613F90FA07D4E03C500E380C7580FD80
          388058301A0523230A70B169ED007814E062E372003162348D8201770055A280
          0407BC0052E2442A7F06748034551D505258E8FBFFDFBFE940A63401A54F1999
          98327BFAFB3753D501E48201770000654B17306324CF710000000049454E44AE
          426082}
      end
    end
    object BtnPDV: TPanel
      Left = 1
      Top = 279
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'PDV Servidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnPDVClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image4: TImage
        Left = 20
        Top = 3
        Width = 45
        Height = 38
        Center = True
        Enabled = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          B04944415478DAC5974F68134114C677669BE4502206A46A25EAC1A3A0080A9E
          EC4569252056834514C48B9426BBEB668D828A3978B0F9B7BBC921B050143C88
          202556B00A450F82088214C1630F825669B1564543B3C98CDFB6A624B5D79D3E
          18663659F2FDF2DEFB767688D416D78687236E28F452E27C9FE44FBC0FD4EB7D
          772A95EFAD0F48FBB7BAA218841085507AD10F75CED85D4C56C1B60BEB02A454
          F50DA6D7B841F7034057551B8287F0FB87FF03D0753D4A9ACD8F94D22339D37C
          E50780A1697D9CF31732633BB3E5F2A74E004D1B219CDF0847223B32990CF303
          201E8FCBBB7A7BBF30426E152DABD20180F44F4984CC142CEB921FE2AB3A8A32
          069D28CA706C1520954A6D911A8DAF8CF398592A3DF313007D1083E838A3749B
          699A0BCB0048FF05A4BFF8AB56DBEA388EEB274032990C05299D87D5470AA5D2
          FD950CA8EA632C7EE66DFBBC9FE2AD4869DA433463A068DB83C4308C6EEEBAF3
          A8CB39D47F5C0480A1284368C4311A08F410D09C463AEE856BB59E8CE3FC1101
          904EA7C3CDA5A53994FDAC073081C51EF86E4284782B50F2539C900F04F5AFE3
          FA1BC6679100882820367B001CF53F8EFA4F8A54D712890159969F2E03C0FF03
          BEFB7FC5EA37D16FA3B09F735951FA292193C200A0F304530C005300382A1C00
          D6DBCB294D5249AAE42C6BBA1380526FFB7DE727C03A71803256F46C388BB46C
          172CDE8A592F030C7E4C63BC15A98C863C88312AAC07344DDBDDC5F919C2D8A3
          5CB93C23BC0961C32AFEF1092C9FE35DA05FBC0D1545C503CF42BF5D850DB3C2
          01D6463BC002F66619740D9100C844178E000D0F60914BD20FD0FC16A98FAC77
          6333DA24B404DEC9AB752ADA8847F16D3C6BAE6359800B8C8DD88C1E601AC2A8
          02E0A47800EFD5DF7507493058CDE7F373ED00DE6B78168D38ED27C0DA4003EE
          C77485FC3B3026704145022018AC5FFE0B11C386C52E198D590000000049454E
          44AE426082}
        Transparent = True
      end
    end
    object BtnImpressora: TPanel
      Left = 1
      Top = 115
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'IMPRESSORA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnImpressoraClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image3: TImage
        Left = 12
        Top = -3
        Width = 53
        Height = 38
        Center = True
        Enabled = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          624944415478DAED963D68144114C7DFCC1204D3041B49A19026A610B4D242B0
          8D82450868AA8BA0884DB8B9BD5BB55138D042706FBF48239814B94A058920C4
          141616166215109134013FD04622488418669FFFBBF5FC58B964337B390DE4C1
          70B3B373EFFDDEDB37EF8DA07F2C62BD9715A51E11F3AE7C16C46A2D0C4F1901
          94955AC1CF3CC6A2A1F9418C612F0C7B8D018410855A103C30B15E29954699B9
          BE03B003B03D006CDB3E22B43E2E85B05A6B4C741D1BEE62FAD2040072103AC6
          A0E35A6B2166D670EA296AC38B9F009562F12C0AC61D4CDFA414F463C32728F9
          6608D028627B303EA4D6F7A3C09DAB45513D0150EA21003E22D4170D0D6D4AF0
          696EC3A9BD5E108C34011CA5E662A2D7F856F65618741CA7576BDDE7FBFEFBC6
          3372CB9744436E189EEC0E8052AFE0F110A23C8A28CF7615A05AADCA2FCBCBEF
          30ED6721CE23ECD35D8F40B95CDE27990FB8BEFF048FDC7580BF80B202381313
          03BAA747989949C45A5B63777272C908A059098976E70140F27D4D57C24D0120
          731D24CFBC8971C13C8C82E3E602D88A5E6004006501BC19CFE6BA98C17F4A1D
          05C09EA35076289B7DB100E5CF3303A0194D51A37309E1A674D5A594E338BFF7
          70960749EBF600CC2B5E14CD5133EF12716CFB4C1CC7339816FE0024BA84FD0B
          6846179A008D4281567C9F925BEC2F9D447D2CE515D4F05B6858D3581A59C771
          1D4B79B855EF7FE4C06544E0268C7C4EED5D64CB3AED79DEDBFFE742B2110022
          70758308FC2EB3B870DCE828805D2C9EB084C894841ADFD78FA2C7DBEB4ED816
          80E819CED5129908F30012F9983100CE7E9D927B5D1E59C5792FB47B99ABD375
          42BE0393FFD4305D5B23CB0000000049454E44AE426082}
        Transparent = True
      end
    end
    object BtnTeclas: TPanel
      Left = 1
      Top = 74
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'TECLAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnTeclasClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image2: TImage
        Left = 12
        Top = 0
        Width = 53
        Height = 41
        Center = True
        Enabled = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
          284944415478DAE5565F485351183FE7DE395BB2540229165910564F62492464
          203D493E54E043842804424DDD75D381FAB2177D51F7C745A03D898F83242824
          08A4AC84B007231046A045A204B5D0D6D8DDEE39FDCE38C602FF0CCDDDA00377
          E7FCBEFBFDF97DDF77BFBB4B89C98BEEA7F31EA7F370CA62710C8542EF4C21E0
          71B9EE12CE5DC32323A74D21D0A569839CF373C3A1D095BC13F07ABDF67432F9
          1E01464160206F043C4E6739B7582E524A7B507EBBCE5855381C5EDB37023E9F
          4FF9118BDD2694DE12E586C88E2BCE0979C415C51B080496B7B3DF33018FA68D
          22D326047C80AC9F53C6A21F575616229188918BFD9E0878DADACE10557D8DE3
          4DF4F9E96E7CECEB14E444C0D7D27260BDB8B80B67312AF63CC55DE7943E4B19
          C610ED72B9EEA37F77CCC81E71EF51BCADBEE15C6A0601ACAF820037297866FD
          41006354674926E7F582821A9C9FA886E1500C23912E2C6CC68CBB0B74BD52E8
          A5ADD67E185500370A9CB25A23789AA3165DEF93781EF67EF81A67AA6A335475
          19F657ADA9D42C7C55E23CBD2901CC7335FE38DE767776D632C65ED8138922DF
          D8D84F4F47472B5194DEE160F08450838D1F01CFE25FAE5E603C475370B28051
          7467EE6BDA12616C00BEC67CADAD07D76DB6B8A2289707038119F83A8F4CE736
          AF00E722B34F503805D88D20ED60AB239B5AC8EB41B057AA3642E728F0882C5D
          07CE2B3845241E80ED146C67606B856D18D241E87C80FC3826A06FF30A10225E
          9BC92C5C84AB0CD7A2C42552B6F17A2D93FB17B93B70C5717D97F8A4BC17CFF2
          5928F5B66EC10644296F208B097F28248212B7A6F5A14AD751EA6A59FA09B1A3
          154DB23573C86ED21F0CF667F45DAE382AD084D63DFCED73BB16984F80D27104
          5CCD2A57057AD600057FE636213542063C2E71438637218F256EC616059E95D8
          2DEF45B326ED08126DDEAA026FF0BB06A512084596D39019C00E2EFAC9F94B92
          CBA2F412822F2299659C5548EA80E780C5B37108B20BDBB660A731DC69ED7A0C
          FF0502A6B4208D5DCDC9F1DF5F6941407CD1D498111D557D45DDEDED55545527
          51DEF23CC75FE28C5DCB7C92892FDB442C764C57144B3E225B194BDB4A4B3F23
          2E33FF9BF0BF27F00BFFC7E0390EF8B20B0000000049454E44AE426082}
        Transparent = True
      end
    end
    object BtnCaixa: TPanel
      Left = 1
      Top = 238
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'CAIXA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnCaixaClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image5: TImage
        Left = 20
        Top = 0
        Width = 45
        Height = 38
        Center = True
        Enabled = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          C74944415478DAEDD6ED0D82301006E03BE6D03D700F750B289E6B2849594307
          6110E7A05EE5CFC56025522C21777F682E843EBCE1E31012179ECBF2163AE1DA
          3407AA2AC2AEDBCD0330C60501D6F648C4FDCA01CEDD7DDC7E2937F480D89BCA
          EB2F0800D0F2A27E3501880FF9BF0183A500052840010A5080023C20FA4C88E8
          7FF59BD1804823D983879E361DE0C3C4B5A0A13400A0A2C821CBB6E26E08FB18
          458BE345AC6701BCF706131111AF1F10B3C63D84C69C58F1D377E062ED713A60
          C25BF02DC1E48027234BF5F0AFD52F670000000049454E44AE426082}
        Transparent = True
      end
    end
    object BtnGaveta: TPanel
      Left = 1
      Top = 197
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'GAVETA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnGavetaClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image6: TImage
        Left = 20
        Top = -3
        Width = 45
        Height = 38
        Center = True
        Enabled = False
        Picture.Data = {
          07544269746D6170E6040000424DE60400000000000036000000280000001400
          0000140000000100180000000000B0040000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
          D4D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
          D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D4D4D4767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          767676769E9E9EC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C89D9D9D76767676
          76767676767676767676767676767676767676767676767676767676768F8F8F
          F7F7F79B9B9B9191919191919191919191919C9C9CF7F7F78F8F8F7676767676
          767676767676767676767676767676767676767676767676768D8D8DD7D7D77C
          7C7C7676767676767676767676767C7C7CD7D7D78C8C8C767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676767676767676
          7676767676767676767676767676767676767676767676767676CFCFCFC8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8CFCFCFFFFFFFA4A4A4919191AF
          AFAFD2D2D2919191919191919191919191919191919191919191919191919191
          919191D2D2D2AEAEAE919191A4A4A4FFFFFFFFFFFFC8C8C8767676797979E9E9
          E9898989888888888888888888888888888888888888888888888888898989E9
          E9E9797979767676C8C8C8FFFFFFFFFFFFFCFCFC888888767676CBCBCBD3D3D3
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8D3D3D3CBCBCB7676
          76888888FCFCFCFFFFFFFFFFFFFFFFFFC7C7C7767676C8C8C891919176767676
          7676767676767676767676767676767676767676919191C8C8C8767676C8C8C8
          FFFFFFFFFFFFFFFFFFFFFFFFFBFBFB868686C8C8C89191917676767676767676
          76767676767676767676767676767676919191C8C8C8868686FBFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC6C6C6C8C8C8919191767676767676767676767676
          767676767676767676767676919191C8C8C8C7C7C7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFAFAFAD6D6D691919176767676767676767676767676767676
          7676767676767676919191D8D8D8FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFED3D3D3C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8D3D3D3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Transparent = True
      end
    end
    object BtnBalanca: TPanel
      Left = 1
      Top = 156
      Width = 255
      Height = 41
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 100
      BorderWidth = 70
      Caption = 'BALAN'#199'A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnBalancaClick
      OnMouseEnter = BtnPDVMouseEnter
      object Image7: TImage
        Left = 20
        Top = 0
        Width = 45
        Height = 38
        Center = True
        Enabled = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
          C94944415478DA63641860C048ACC292828282FFFFFE7913A97C4BEFA44913A9
          EA80A2BCBC438C8C8CB6C4A8FDFFFFFFE1BE4993EC469C038E30FEFF7FEA3F23
          63D180380068D0DA7F8C8CDB808E983B4CA3203F3F9D8981C1994807EC01E682
          595475003A00E64A018E9F3FC1FA7FB0B3FF9F3061C20772CC21DB01C5F9F9AF
          81940894FBA677E244D151078C3A60D401A30E183E0E28CEC9D1F8CFCCBC1428
          298053E3FFFF2CC0AA9711CAFE0F64FFC163CF7B660686E8AE89136F12744043
          4202C7677EFEB340A616B9A183035CE5FDF8D1A461C1821F781D000CDA1E1045
          65CB21963132F6F44C98508AD301C086A71330307703994CB470001000DB2C8C
          AE4047ECC370406161A110D3BF7F97804C691A590E034F587FFDD2EB983EFD3D
          8A03800D0E50A28BA2B1E510F0FFFF5260832506EE80B2DC5C99BFCCCCB574B1
          1C0A98FFFE6DEE9A3CF909D801A55959127FD8D9B9E8E900969F3FBF754F9BF6
          02EC8092FCFCEDFF19183CE8E900A0C53B7A264EF4043B0098F5B601294F7A3A
          0008B6034B4F2F481414141801FB7D15C0D2CC0698401A68EB75C60660C979E4
          DFFFFFED7D93279F87E7025009F89697976DF2E4C99F68697F6E6E2E9FF0E7CF
          BF602522D99511B5000008C1EC211A684B320000000049454E44AE426082}
        Transparent = True
      end
    end
    object pnLine: TPanel
      Left = 33
      Top = 441
      Width = 5
      Height = 39
      BevelOuter = bvNone
      Color = 7290415
      ParentBackground = False
      TabOrder = 7
      Visible = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 255
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1313
    Height = 29
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    Configura'#231#245'es'
    Color = 7290415
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object spBtnFechar: TSpeedButton
      AlignWithMargins = True
      Left = 1278
      Top = 3
      Width = 32
      Height = 23
      Cursor = crHandPoint
      Align = alRight
      Caption = 'X'
      Flat = True
      OnClick = spBtnFecharClick
      ExplicitLeft = 944
      ExplicitTop = 0
      ExplicitHeight = 33
    end
  end
  object pgConfg: TPageControl
    Left = 257
    Top = 29
    Width = 1056
    Height = 1025
    ActivePage = TabSheet1
    Align = alClient
    OwnerDraw = True
    Style = tsButtons
    TabOrder = 1
    OnDrawTab = pgConfgDrawTab
    object TabSheet1: TTabSheet
      Caption = 'REDE'
      object Shape18: TShape
        Left = 23
        Top = 506
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 16
        Top = 3
        Width = 268
        Height = 37
        Caption = 'Configura'#231#227'o de Rede'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape3: TShape
        Left = 23
        Top = 139
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label31: TLabel
        Left = 23
        Top = 118
        Width = 72
        Height = 17
        Caption = 'Endere'#231'o IP'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape6: TShape
        Left = 23
        Top = 211
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label32: TLabel
        Left = 23
        Top = 190
        Width = 131
        Height = 17
        Caption = 'M'#225'scara de Sub-Rede'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label33: TLabel
        Left = 23
        Top = 265
        Width = 52
        Height = 17
        Caption = 'Gateway'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape15: TShape
        Left = 23
        Top = 286
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Shape16: TShape
        Left = 23
        Top = 430
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label34: TLabel
        Left = 23
        Top = 409
        Width = 81
        Height = 17
        Caption = 'DNS Principal'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape17: TShape
        Left = 279
        Top = 430
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label35: TLabel
        Left = 279
        Top = 409
        Width = 97
        Height = 17
        Caption = 'DNS Alternativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label36: TLabel
        Left = 23
        Top = 375
        Width = 127
        Height = 17
        Caption = 'Configura'#231#227'o de DNS'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 23
        Top = 505
        Width = 147
        Height = 33
        Caption = 'GRAVAR'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Label38: TLabel
        Left = 328
        Top = 496
        Width = 217
        Height = 15
        AutoSize = False
        Caption = 'Label38'
      end
      object rgConexao: TDBRadioGroup
        Left = 19
        Top = 60
        Width = 198
        Height = 49
        Caption = 'Endere'#231'o de Rede'
        Columns = 2
        DataField = 'tipo_conexao'
        DataSource = dsConfigIP
        DefaultHeaderFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = 5121313
        HeaderFont.Height = -13
        HeaderFont.Name = 'Segoe UI Semibold'
        HeaderFont.Style = [fsBold]
        Items.Strings = (
          'Manual'
          'Autom'#225'tico')
        ParentFont = False
        ShowFrame = False
        TabOrder = 0
        Values.Strings = (
          '1'
          '2')
        OnChange = rgConexaoChange
      end
      object EdtIP: TDBEdit
        Left = 27
        Top = 145
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'addressip'
        DataSource = dsConfigIP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object EdtSubRede: TDBEdit
        Left = 27
        Top = 217
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'subrede'
        DataSource = dsConfigIP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object EdtGateway: TDBEdit
        Left = 27
        Top = 292
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'gateway'
        DataSource = dsConfigIP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object EdtDNS1: TDBEdit
        Left = 27
        Top = 436
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'dns1'
        DataSource = dsConfigIP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
      end
      object EdtDNS2: TDBEdit
        Left = 285
        Top = 436
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'dns2'
        DataSource = dsConfigIP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      AlignWithMargins = True
      Caption = 'TECLAS'
      ImageIndex = 1
      DesignSize = (
        1042
        986)
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 1042
        Height = 57
        Align = alTop
        AutoSize = False
        Caption = '    Configura'#231#227'o de Teclas'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 1016
      end
      object rectResetKey: TShape
        Left = 830
        Top = 12
        Width = 214
        Height = 33
        Shape = stRoundRect
      end
      object rectGravarKey: TShape
        Left = 16
        Top = 945
        Width = 148
        Height = 33
        Anchors = [akLeft, akBottom]
        Shape = stRoundRect
      end
      object sbRestPadraoKey: TSpeedButton
        Left = 830
        Top = 12
        Width = 213
        Height = 33
        Caption = 'Restaurar Padr'#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbGravarKey: TSpeedButton
        Left = 16
        Top = 945
        Width = 148
        Height = 33
        Anchors = [akLeft, akBottom]
        Caption = 'Gravar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 928
      end
      object pnlGrid: TPanel
        Left = 24
        Top = 52
        Width = 1028
        Height = 887
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        Color = 13882323
        ParentBackground = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1028
          Height = 34
          Align = alTop
          BevelOuter = bvNone
          Color = 13882323
          ParentBackground = False
          TabOrder = 0
          object Label5: TLabel
            AlignWithMargins = True
            Left = 876
            Top = 3
            Width = 149
            Height = 28
            Align = alRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'TECLAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3808280
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 864
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 73
            Height = 28
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'FUN'#199#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3808280
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitHeight = 41
          end
        end
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 1022
          Height = 847
          Align = alClient
          BorderStyle = bsNone
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Options = [dgEditing, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'descrfuncao'
              ReadOnly = True
              Title.Caption = 'Fun'#231'ao'
              Width = 848
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descrkeycode'
              Title.Caption = 'Teclas'
              Width = 150
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'IMPRESSORA'
      ImageIndex = 2
      object Label19: TLabel
        Left = 28
        Top = 82
        Width = 70
        Height = 17
        Caption = 'Configurar?'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label20: TLabel
        Left = 24
        Top = 24
        Width = 344
        Height = 37
        Caption = 'Configura'#231#227'o da Impressora'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape4: TShape
        Left = 24
        Top = 339
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 276
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 516
        Top = 207
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label22: TLabel
        Left = 276
        Top = 248
        Width = 84
        Height = 17
        Caption = 'Linhas '#224' pular'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape9: TShape
        Left = 516
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label23: TLabel
        Left = 516
        Top = 248
        Width = 48
        Height = 17
        Caption = 'Colunas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape10: TShape
        Left = 276
        Top = 205
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label24: TLabel
        Left = 282
        Top = 326
        Width = 67
        Height = 37
        Caption = '0,000'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label25: TLabel
        Left = 28
        Top = 248
        Width = 126
        Height = 17
        Caption = 'Espa'#231'os entre Linhas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label26: TLabel
        Left = 516
        Top = 184
        Width = 73
        Height = 17
        Caption = 'P'#225'g. C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label27: TLabel
        Left = 28
        Top = 184
        Width = 46
        Height = 17
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape11: TShape
        Left = 28
        Top = 205
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label28: TLabel
        Left = 276
        Top = 187
        Width = 67
        Height = 17
        Caption = 'Porta COM'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape12: TShape
        Left = 28
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object SpeedButton10: TSpeedButton
        Left = 32
        Top = 339
        Width = 140
        Height = 33
        Caption = 'Testar Impress'#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton10Click
      end
      object impPorta: TDBComboBox
        Left = 282
        Top = 208
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'portacomusb'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum')
        ParentFont = False
        TabOrder = 0
      end
      object impModelo: TDBComboBox
        Left = 32
        Top = 209
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'impressora_modelo'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhuma')
        ParentFont = False
        TabOrder = 1
      end
      object impPagCod: TDBComboBox
        Left = 523
        Top = 211
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'pagcod'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum')
        ParentFont = False
        TabOrder = 2
      end
      object EdtEspacoLinha: TDBEdit
        Left = 32
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'espacoslinha'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object EdtPulaLinha: TDBEdit
        Left = 281
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'linhapular'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
      end
      object EdtColuna: TDBEdit
        Left = 523
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'colunas'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
      object rbManual: TRadioButton
        Left = 32
        Top = 112
        Width = 89
        Height = 17
        Caption = 'Manual'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = rbManualClick
      end
      object rbAuto: TRadioButton
        Left = 127
        Top = 112
        Width = 113
        Height = 17
        Caption = 'Desabilitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = rbAutoClick
      end
      object Memo1: TMemo
        Left = 472
        Top = 326
        Width = 369
        Height = 331
        Lines.Strings = (
          'Memo1')
        TabOrder = 8
        Visible = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'GAVETA'
      ImageIndex = 3
      object Label16: TLabel
        Left = 24
        Top = 32
        Width = 293
        Height = 37
        Caption = 'Configura'#231#227'o da Gaveta'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape19: TShape
        Left = 24
        Top = 176
        Width = 105
        Height = 27
        Shape = stRoundRect
      end
      object SpeedButton3: TSpeedButton
        Left = 24
        Top = 176
        Width = 105
        Height = 27
        Caption = 'Iniciar Teste'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 24
        Top = 103
        Width = 257
        Height = 55
        Caption = 'Controlar o status da gaveta?'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Controlar'
          'N'#227'o Controlar')
        ParentFont = False
        ShowFrame = False
        TabOrder = 0
        Values.Strings = (
          '0'
          '1')
        OnChange = rgUsoChange
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BALAN'#199'A'
      ImageIndex = 4
      object shBtnGrava: TShape
        Left = 29
        Top = 398
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 24
        Top = 24
        Width = 302
        Height = 37
        Caption = 'Configura'#231#227'o de Balan'#231'a'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 165
        Width = 46
        Height = 17
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shModelo: TShape
        Left = 24
        Top = 186
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object shPorta: TShape
        Left = 272
        Top = 186
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label9: TLabel
        Left = 272
        Top = 165
        Width = 67
        Height = 17
        Caption = 'Porta COM'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object spBitRate: TShape
        Left = 512
        Top = 188
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label10: TLabel
        Left = 512
        Top = 165
        Width = 104
        Height = 17
        Caption = 'Bits por segundo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shParidade: TShape
        Left = 24
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label11: TLabel
        Left = 24
        Top = 229
        Width = 53
        Height = 17
        Caption = 'Paridade'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shBitDados: TShape
        Left = 272
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label14: TLabel
        Left = 272
        Top = 229
        Width = 82
        Height = 17
        Caption = 'Bits de dados'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shBitstop: TShape
        Left = 512
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label15: TLabel
        Left = 512
        Top = 229
        Width = 87
        Height = 17
        Caption = 'Bits de parada'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object sbGravarTeste: TSpeedButton
        Left = 29
        Top = 398
        Width = 148
        Height = 33
        Caption = 'Gravar e Testar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbGravarTesteClick
      end
      object shFluxo: TShape
        Left = 24
        Top = 316
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label17: TLabel
        Left = 24
        Top = 293
        Width = 105
        Height = 17
        Caption = 'Controle de fluxo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object lblPeso: TLabel
        Left = 278
        Top = 307
        Width = 67
        Height = 37
        Caption = '0,000'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object rgUso: TDBRadioGroup
        Left = 24
        Top = 86
        Width = 257
        Height = 55
        Caption = 'Utilizar Balan'#231'a'
        Columns = 2
        DataField = 'utilizar'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Utilizar'
          'N'#227'o Utilizar')
        ParentFont = False
        ShowFrame = False
        TabOrder = 0
        Values.Strings = (
          '0'
          '1')
        OnChange = rgUsoChange
      end
      object cmbBalanca: TDBComboBox
        Left = 28
        Top = 190
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'balmodelo'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhuma'
          'Filizola'
          'Toledo')
        ParentFont = False
        TabOrder = 1
      end
      object cmbPortaSerial: TDBComboBox
        Left = 278
        Top = 189
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'portacom'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10')
        ParentFont = False
        TabOrder = 2
      end
      object cmbBaudRate: TDBComboBox
        Left = 519
        Top = 192
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitsegundo'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          '110'
          '300'
          '600'
          '1200'
          '2400'
          '4800'
          '9600'
          '14400'
          '19200'
          '38400'
          '56000'
          '57600')
        ParentFont = False
        TabOrder = 3
      end
      object cmbParity: TDBComboBox
        Left = 28
        Top = 254
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'paridade'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum'
          'odd'
          'even'
          'mark'
          'space')
        ParentFont = False
        TabOrder = 4
      end
      object cmbDataBits: TDBComboBox
        Left = 278
        Top = 254
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitdados'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          '5'
          '6'
          '7'
          '8')
        ParentFont = False
        TabOrder = 5
      end
      object cmbStopBits: TDBComboBox
        Left = 519
        Top = 252
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitsstop'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          's1'
          's1,5'
          's2')
        ParentFont = False
        TabOrder = 6
      end
      object cmbHandShaking: TDBComboBox
        Left = 29
        Top = 320
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'Handshaking'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum'
          'XON/XOFF'
          'RTS/CTS'
          'DTR/DSR')
        ParentFont = False
        TabOrder = 7
      end
      object pnlAvisoBalanca: TPanel
        Left = 28
        Top = 456
        Width = 401
        Height = 47
        BevelOuter = bvNone
        TabOrder = 8
        Visible = False
        object imgGif: TImage
          Left = 0
          Top = 11
          Width = 86
          Height = 25
          Center = True
          Picture.Data = {
            0954474946496D61676547494638396112020401910300273A9947A9D658A7D3
            00000021FF0B4E45545343415045322E30030100000021F904090A0003002C00
            0000001202040181273A9947A9D658A7D300000002FF9C8FA9CBED0FA39CB4DA
            8BB3DEBCFB0F86E24896E689A6EACAB6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A
            87C4A2F1884C2A97CCA6F3098D4AA7D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F9
            8C4EABD7ECB6FB0D8FCBE7F4BAFD8ECFEBF7FCBEFF0F182838485868788898A8
            B8C8D8E8F808192939495969798999A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAA
            BACADAEAFA0A1B2B3B4B5B6B7B8B9BABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CAC
            BCCCDCECFC0C1D2D3D4D5D6D7D8D9DADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAE
            BECEDEEEFE0E1F2F3F4F5F6F7F8F9FAFBFCFDFEFFF0F30A0C081040B1A3C8830
            A1C2850C1B3A7C0831A2C489142B5ABC8831A3C68DFF1C3B7AFC0832A4C89124
            4B9A3C8932A5CA952C5BBA7C0933A6CC99346BDABC8933A7CE9D3C7BFAFC0934
            A8D0A1448B1A3D8A34A9D2A54C9B3A7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB
            7AFD0A36ACD8B164CB9A3D8B36ADDA3200DABA7D0BD7ED030101EADABD8B5780
            80B978FBDED5BB564CDCC1831BE8F58B58EF5E068711F7551C180CE1C972193B
            4EBC7801DDCB7E3347E642997203CE894793F6FBD94BE8C9A64FFF6DEDDA6EEA
            2EAB09C3760D98416CBCB341D78E7B1B7770D7BDB7FC06AE7B775DCF0994CB2E
            9EE538DCE1A49923705E177A74E9951738CFED1DBB762CDCBB2BC06EFD00F600
            E3AF946F4B9D737A03EBDB5B790F20FEE5F903EADBFBA7829F7E9809E8D87F00
            BE47606709A266A0140126A71C7FFE3508C583E145B8605F144661A1029BE106
            9E8711F2B7E111083AF06175240E90A27C2B9668447973B5E8D88B8D5507638E
            3AEEC8638F3EFE086490420E496491461E8964924A2EC964934E3E096594524E
            496595565E8965965A6EC965975E7E096698628E496699669E89669A6AAEC966
            9B6EBE09679C72CE49679D76DE89679E7AEEC9679F7EFE0968A0820E4A68A186
            1E8A68A28A2ECA68A38E3E0A69A4924E4A69A5965E8A69A69A6ECA69A79E7E0A
            6AA8A28E4A6AA9A69E8A6AAAAAAECA6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAE
            BAEECA6BAFBEFE0A6CB0C20E4B6C2105000021F904090A0003002C0000000012
            02040181273A9947A9D658A7D300000002FF9C8FA9CBED0FA39CB4DA8BB3DEBC
            FB0F86E24896E689A6EACAB6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A87C4A2F1
            884C2A97CCA6F3098D4AA7D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F98C4EABD7
            ECB6FB0D8FCBE7F4BAFD8ECFEBF7FCBEFF0F182838485868788898A8B8C8D8E8
            F808192939495969798999A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAABACADAEA
            FA0A1B2B3B4B5B6B7B8B9BABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CACBCCCDCEC
            FC0C1D2D3D4D5D6D7D8D9DADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAEBECEDEEE
            FE0E1F2F3F4F5F6F7F8F9FAFBFCFDFEFFF0F30A0C081040B1A3C8830A1C2850C
            1B3A7C0831A2C489142B5ABC8831A3C68DFF1C3B7AFC0832A4C891244B9A3C89
            32A5CA952C5BBA7C0933A6CC99346BDABC8933A7CE9D3C7BFAFC0934A8D0A144
            8B1A3D8A34A9D2A54C9B3A7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB7AFD0A36
            ACD8B164CB9A3D8B36ADDA320202B87D0B37AE00010F00D8BD8B37EFDD076DE3
            FA7D3B77AD98B97F0BCFA5CB40AF62C50D0817F67B583098C78F03275E8CD96E
            63CA86257FE1DCF972E6C50D4017F6ECC534E406A33197561D177517D880112F
            684D9A016DB8B2B9EC766B5B016EC6BA7F07E8BDC578F004C3F5BEFE8D5C8B72
            D6CDF13EDF1D3DCB6FCBB7ABEF2D0E3DFB95E9A2BD5FA72D7EFC76EADE019C87
            9DDE0AF9EEEDDFAB8E5F65FB7204ED3583F4C78EDF14F309D79F7DA60528E07A
            E555672068084A31207305FE87DE8350F4A55A640B36B7196DDC59E80486A07D
            48607D1D9A4622884C383622042636262265FBA948638D36DE88638E3AEEC863
            8F3EFE086490420E496491461E8964924A2EC964934E3E096594524E49659556
            5E8965965A6EC965975E7E096698628E496699669E89669A6AAEC9669B6EBE09
            679C72CE49679D76DE89679E7AEEC9679F7EFE0968A0820E4A68A1861E8A68A2
            8A2ECA68A38E3E0A69A4924E4A69A5965E8A69A69A6ECA69A79E7E0A6AA8A28E
            4A6AA9A69E8A6AAAAAAECA6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAEBAEECA6B
            AFBEFEFA47010021F904050A0003002C000000001202040181273A9947A9D658
            A7D300000002FF9C8FA9CBED0FA39CB4DA8BB3DEBCFB0F86E24896E689A6EACA
            B6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A87C4A2F1884C2A97CCA6F3098D4AA7
            D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F98C4EABD7ECB6FB0D8FCBE7F4BAFD8E
            CFEBF7FCBEFF0F182838485868788898A8B8C8D8E8F808192939495969798999
            A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAABACADAEAFA0A1B2B3B4B5B6B7B8B9B
            ABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CACBCCCDCECFC0C1D2D3D4D5D6D7D8D9D
            ADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAEBECEDEEEFE0E1F2F3F4F5F6F7F8F9F
            AFBFCFDFEFFF0F30A0C081040B1A3C8830A1C2850C1B3A7C0831A2C489142B5A
            BC8831A3C68DFF1C3B7AFC0832A4C891244B9A3C8932A5CA952C5BBA7C0933A6
            CC99346BDABC8933A7CE9D3C7BFAFC0934A8D0A1448B1A3D8A34A9D2A54C9B3A
            7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB7AFD0A36ACD8B164CB9A3D8B36ADDA
            320202B87D0B37AE00010FDAC6BDFB76EE03007CFBFAFDDB77AD98B9780BCFA5
            CB8070E1BB871B007EFC583098C58BF526A68CD7F202C89C034BF682D97083D0
            991D77E6FC193469B9A357C345BCF934E4D45D5CE785ADC0B65BCD0A64CFA6BD
            45F7EED6BA7127F01D19B816E1018C2360EEFC0072C0CA970B8F6E00BAE9E99E
            AB5FB98E7D00F8EDDC0178C7A29D41FAD8E5CD9FB7B23EF775F2DCDFC39FAF1E
            3FFBF2F6AB8CFCCF6F1B6FC7B5E75E7F52C4970082081058A081502878008406
            30E8E081FAC9571C7DD35518855DAB3576996B20EE571F875078189A800AA088
            998A03F267E2138AA508C18C2D42D05E8C3AEEC8638F3EFE086490420E496491
            461E8964924A2EC964934E3E096594524E496595565E8965965A6EC965975E7E
            096698628E496699669E89669A6AAEC9669B6EBE09679C72CE49679D76DE8967
            9E7AEEC9679F7EFE0968A0820E4A68A1861E8A68A28A2ECA68A38E3E0A69A492
            4E4A69A5965E8A69A69A6ECA69A79E7E0A6AA8A28E4A6AA9A69E8A6AAAAAAECA
            6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAEBAEECA6BAFBEFE0A6CB0C20E4B6CB1
            841400003B}
          Transparent = True
        end
        object lblMsgBalanca: TLabel
          Left = 92
          Top = 15
          Width = 303
          Height = 20
          Caption = 'Para continuar coloque um Peso na balan'#231'a'
          Color = 13882323
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object CAIXA: TTabSheet
      Caption = 'CAIXA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3808280
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 274
        Height = 37
        Caption = 'Configura'#231#227'o de Caixa'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 97
        Width = 106
        Height = 17
        Caption = 'N'#250'mero do Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 16
        Top = 119
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 16
        Top = 185
        Width = 50
        Height = 17
        Caption = 'Servi'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Line: TSplitter
        Left = 16
        Top = 208
        Width = 3000
        Height = 198
        Cursor = crDefault
        Align = alNone
        Beveled = True
        ResizeStyle = rsLine
      end
      object Shape2: TShape
        Left = 29
        Top = 361
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object SpeedButton7: TSpeedButton
        Left = 29
        Top = 361
        Width = 148
        Height = 33
        Caption = 'GRAVAR'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5121313
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 21
        Top = 124
        Width = 180
        Height = 20
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '100'
      end
      object CheckBox1: TCheckBox
        Left = 29
        Top = 226
        Width = 276
        Height = 17
        Caption = 'Emiss'#227'o de Notas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 29
        Top = 257
        Width = 276
        Height = 17
        Caption = 'Emiss'#227'o de N'#227'o Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 29
        Top = 288
        Width = 276
        Height = 17
        Caption = 'Emiss'#227'o de Comandas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object CheckBox4: TCheckBox
        Left = 29
        Top = 318
        Width = 276
        Height = 17
        Caption = 'Processar Promo'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'PDV MANAGER'
      ImageIndex = 6
      object Label21: TLabel
        Left = 64
        Top = 32
        Width = 370
        Height = 37
        Caption = 'Configura'#231#227'o de PDV Servidor'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 60
        Top = 93
        Width = 72
        Height = 17
        Caption = 'Endere'#231'o IP'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label30: TLabel
        Left = 316
        Top = 93
        Width = 33
        Height = 17
        Caption = 'Porta'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape5: TShape
        Left = 60
        Top = 116
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Shape13: TShape
        Left = 316
        Top = 116
        Width = 85
        Height = 33
        Shape = stRoundRect
      end
      object Shape14: TShape
        Left = 60
        Top = 193
        Width = 149
        Height = 33
        Shape = stRoundRect
      end
      object SpeedButton1: TSpeedButton
        Left = 61
        Top = 193
        Width = 148
        Height = 33
        Caption = 'Gravar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object Edit2: TEdit
        Left = 64
        Top = 122
        Width = 209
        Height = 20
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '192.168.100.254'
      end
      object Edit3: TEdit
        Left = 322
        Top = 122
        Width = 73
        Height = 20
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '2546'
      end
      object pnlAvisoPDV: TPanel
        Left = 60
        Top = 248
        Width = 401
        Height = 47
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object imgGIF2: TImage
          Left = 0
          Top = 11
          Width = 86
          Height = 25
          Center = True
          Picture.Data = {
            0954474946496D61676547494638396112020401910300273A9947A9D658A7D3
            00000021FF0B4E45545343415045322E30030100000021F904090A0003002C00
            0000001202040181273A9947A9D658A7D300000002FF9C8FA9CBED0FA39CB4DA
            8BB3DEBCFB0F86E24896E689A6EACAB6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A
            87C4A2F1884C2A97CCA6F3098D4AA7D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F9
            8C4EABD7ECB6FB0D8FCBE7F4BAFD8ECFEBF7FCBEFF0F182838485868788898A8
            B8C8D8E8F808192939495969798999A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAA
            BACADAEAFA0A1B2B3B4B5B6B7B8B9BABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CAC
            BCCCDCECFC0C1D2D3D4D5D6D7D8D9DADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAE
            BECEDEEEFE0E1F2F3F4F5F6F7F8F9FAFBFCFDFEFFF0F30A0C081040B1A3C8830
            A1C2850C1B3A7C0831A2C489142B5ABC8831A3C68DFF1C3B7AFC0832A4C89124
            4B9A3C8932A5CA952C5BBA7C0933A6CC99346BDABC8933A7CE9D3C7BFAFC0934
            A8D0A1448B1A3D8A34A9D2A54C9B3A7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB
            7AFD0A36ACD8B164CB9A3D8B36ADDA3200DABA7D0BD7ED030101EADABD8B5780
            80B978FBDED5BB564CDCC1831BE8F58B58EF5E068711F7551C180CE1C972193B
            4EBC7801DDCB7E3347E642997203CE894793F6FBD94BE8C9A64FFF6DEDDA6EEA
            2EAB09C3760D98416CBCB341D78E7B1B7770D7BDB7FC06AE7B775DCF0994CB2E
            9EE538DCE1A49923705E177A74E9951738CFED1DBB762CDCBB2BC06EFD00F600
            E3AF946F4B9D737A03EBDB5B790F20FEE5F903EADBFBA7829F7E9809E8D87F00
            BE47606709A266A0140126A71C7FFE3508C583E145B8605F144661A1029BE106
            9E8711F2B7E111083AF06175240E90A27C2B9668447973B5E8D88B8D5507638E
            3AEEC8638F3EFE086490420E496491461E8964924A2EC964934E3E096594524E
            496595565E8965965A6EC965975E7E096698628E496699669E89669A6AAEC966
            9B6EBE09679C72CE49679D76DE89679E7AEEC9679F7EFE0968A0820E4A68A186
            1E8A68A28A2ECA68A38E3E0A69A4924E4A69A5965E8A69A69A6ECA69A79E7E0A
            6AA8A28E4A6AA9A69E8A6AAAAAAECA6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAE
            BAEECA6BAFBEFE0A6CB0C20E4B6C2105000021F904090A0003002C0000000012
            02040181273A9947A9D658A7D300000002FF9C8FA9CBED0FA39CB4DA8BB3DEBC
            FB0F86E24896E689A6EACAB6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A87C4A2F1
            884C2A97CCA6F3098D4AA7D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F98C4EABD7
            ECB6FB0D8FCBE7F4BAFD8ECFEBF7FCBEFF0F182838485868788898A8B8C8D8E8
            F808192939495969798999A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAABACADAEA
            FA0A1B2B3B4B5B6B7B8B9BABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CACBCCCDCEC
            FC0C1D2D3D4D5D6D7D8D9DADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAEBECEDEEE
            FE0E1F2F3F4F5F6F7F8F9FAFBFCFDFEFFF0F30A0C081040B1A3C8830A1C2850C
            1B3A7C0831A2C489142B5ABC8831A3C68DFF1C3B7AFC0832A4C891244B9A3C89
            32A5CA952C5BBA7C0933A6CC99346BDABC8933A7CE9D3C7BFAFC0934A8D0A144
            8B1A3D8A34A9D2A54C9B3A7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB7AFD0A36
            ACD8B164CB9A3D8B36ADDA320202B87D0B37AE00010F00D8BD8B37EFDD076DE3
            FA7D3B77AD98B97F0BCFA5CB40AF62C50D0817F67B583098C78F03275E8CD96E
            63CA86257FE1DCF972E6C50D4017F6ECC534E406A33197561D177517D880112F
            684D9A016DB8B2B9EC766B5B016EC6BA7F07E8BDC578F004C3F5BEFE8D5C8B72
            D6CDF13EDF1D3DCB6FCBB7ABEF2D0E3DFB95E9A2BD5FA72D7EFC76EADE019C87
            9DDE0AF9EEEDDFAB8E5F65FB7204ED3583F4C78EDF14F309D79F7DA60528E07A
            E555672068084A31207305FE87DE8350F4A55A640B36B7196DDC59E80486A07D
            48607D1D9A4622884C383622042636262265FBA948638D36DE88638E3AEEC863
            8F3EFE086490420E496491461E8964924A2EC964934E3E096594524E49659556
            5E8965965A6EC965975E7E096698628E496699669E89669A6AAEC9669B6EBE09
            679C72CE49679D76DE89679E7AEEC9679F7EFE0968A0820E4A68A1861E8A68A2
            8A2ECA68A38E3E0A69A4924E4A69A5965E8A69A69A6ECA69A79E7E0A6AA8A28E
            4A6AA9A69E8A6AAAAAAECA6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAEBAEECA6B
            AFBEFEFA47010021F904050A0003002C000000001202040181273A9947A9D658
            A7D300000002FF9C8FA9CBED0FA39CB4DA8BB3DEBCFB0F86E24896E689A6EACA
            B6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A87C4A2F1884C2A97CCA6F3098D4AA7
            D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F98C4EABD7ECB6FB0D8FCBE7F4BAFD8E
            CFEBF7FCBEFF0F182838485868788898A8B8C8D8E8F808192939495969798999
            A9B9C9D9E9F9091A2A3A4A5A6A7A8A9AAABACADAEAFA0A1B2B3B4B5B6B7B8B9B
            ABBBCBDBEBFB0B1C2C3C4C5C6C7C8C9CACBCCCDCECFC0C1D2D3D4D5D6D7D8D9D
            ADBDCDDDEDFD0D1E2E3E4E5E6E7E8E9EAEBECEDEEEFE0E1F2F3F4F5F6F7F8F9F
            AFBFCFDFEFFF0F30A0C081040B1A3C8830A1C2850C1B3A7C0831A2C489142B5A
            BC8831A3C68DFF1C3B7AFC0832A4C891244B9A3C8932A5CA952C5BBA7C0933A6
            CC99346BDABC8933A7CE9D3C7BFAFC0934A8D0A1448B1A3D8A34A9D2A54C9B3A
            7D0A35AAD4A954AB5ABD8A35ABD6AD5CBB7AFD0A36ACD8B164CB9A3D8B36ADDA
            320202B87D0B37AE00010FDAC6BDFB76EE03007CFBFAFDDB77AD98B9780BCFA5
            CB8070E1BB871B007EFC583098C58BF526A68CD7F202C89C034BF682D97083D0
            991D77E6FC193469B9A357C345BCF934E4D45D5CE785ADC0B65BCD0A64CFA6BD
            45F7EED6BA7127F01D19B816E1018C2360EEFC0072C0CA970B8F6E00BAE9E99E
            AB5FB98E7D00F8EDDC0178C7A29D41FAD8E5CD9FB7B23EF775F2DCDFC39FAF1E
            3FFBF2F6AB8CFCCF6F1B6FC7B5E75E7F52C4970082081058A081502878008406
            30E8E081FAC9571C7DD35518855DAB3576996B20EE571F875078189A800AA088
            998A03F267E2138AA508C18C2D42D05E8C3AEEC8638F3EFE086490420E496491
            461E8964924A2EC964934E3E096594524E496595565E8965965A6EC965975E7E
            096698628E496699669E89669A6AAEC9669B6EBE09679C72CE49679D76DE8967
            9E7AEEC9679F7EFE0968A0820E4A68A1861E8A68A28A2ECA68A38E3E0A69A492
            4E4A69A5965E8A69A69A6ECA69A79E7E0A6AA8A28E4A6AA9A69E8A6AAAAAAECA
            6AABAEBE0A6BACB2CE4A6BADB6DE8A6BAEBAEECA6BAFBEFE0A6CB0C20E4B6CB1
            841400003B}
          Transparent = True
        end
        object Label37: TLabel
          Left = 96
          Top = 15
          Width = 238
          Height = 20
          Caption = 'Aguarde, verificando autentica'#231#227'o'
          Color = 13882323
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
        end
      end
    end
  end
  object ImageList1: TImageList
    Height = 20
    Width = 20
    Left = 832
    Top = 561
    Bitmap = {
      494C010106000800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000002800000001002000000000000032
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900B4B4B400B4B4B400D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100B4B4B400B4B4B400F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E40076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760076767600767676007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400FAFA
      FA0000000000ECECEC00A9A9A900A4A4A400A4A4A400A9A9A900EDEDED000000
      0000A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A40098989800EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A200767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600A2A2A2000000
      000000000000ABABAB0076767600767676007676760076767600ABABAB000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B0097979700EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500838383007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760084848400F5F5F5000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7007777
      7700767676007676760076767600767676007676760076767600767676007676
      76007676760076767600767676007676760077777700D7D7D700000000000000
      000000000000A4A4A40076767600BFBFBF00BFBFBF0076767600A4A4A4000000
      000076767600767676007B7B7B00919191007676760076767600767676007676
      7600767676007B7B7B00D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760076767600B6B6B60000000000000000000000
      000000000000A4A4A40076767600868686008686860076767600A4A4A4000000
      0000767676007676760093939300E6E6E6007676760076767600767676007676
      76007676760076767600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B0082828200A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400C8C8C800C8C8C800F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C200919191009191910091919100919191009191
      910091919100C3C3C30000000000000000000000000000000000000000000000
      000000000000ABABAB0076767600767676007676760076767600ABABAB000000
      0000A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A40085858500ABABAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676009797
      970097979700ADADAD0000000000000000000000000000000000000000000000
      000000000000ECECEC00A6A6A6009B9B9B009B9B9B00A6A6A600EDEDED000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B00A6A6A600EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676008181
      810081818100ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676007676
      760076767600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00939393007777770076767600767676007676760076767600767676007676
      760076767600767676007777770096969600EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B0080808000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD007E7E7E00A0A0A00000000000000000000000
      0000D4D4D400D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D4D4D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00F6F6F6000000
      0000E8E8E800AFAFAF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00AFAFAF00E8E8E8000000000000000000000000008080
      8000ACACAC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A7A7008484840000000000000000000000
      0000767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB007A7A
      7A00989898009898980098989800989898009494940076767600EEEEEE000000
      0000888888007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600898989000000000000000000000000007F7F
      7F00ADADAD00000000009B9B9B0088888800888888008888880088888800BFBF
      BF00000000000000000000000000A8A8A8008383830000000000000000000000
      0000767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      00007676760076767600888888008181810081818100888888007A7A7A008888
      880088888800888888008888880088888800888888007A7A7A00888888008181
      81008181810088888800767676007676760000000000E9E9E900D1D1D1007F7F
      7F00ADADAD0000000000B2B2B200A4A4A400A4A4A400A4A4A400A4A4A400CECE
      CE00000000000000000000000000A8A8A80083838300D1D1D100EAEAEA000000
      00007676760076767600767676007676760076767600767676009E9E9E00C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C8009D9D9D00767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000E0E0E000FCFCFC00DDDDDD00FCFCFC00E0E0E000CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      0000767676007676760000000000C8C8C800C8C8C80000000000919191000000
      000000000000000000000000000000000000000000009191910000000000C8C8
      C800C8C8C800000000007676760076767600C4C4C40077777700767676007E7E
      7E00ADADAD0000000000B9B9B900ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00B9B9B90000000000A8A8A800828282007676760077777700C6C6
      C60076767600767676007676760076767600767676008F8F8F00F7F7F7009B9B
      9B00919191009191910091919100919191009C9C9C00F7F7F7008F8F8F007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000009B9B9B00E9E9E90094949400E9E9E9009B9B9B00CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      00007676760076767600ADADAD009797970097979700ADADAD0081818100ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD0081818100ADADAD009797
      970097979700ADADAD0076767600767676008181810076767600767676007E7E
      7E00ADADAD0000000000929292007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F009292920000000000A8A8A8008282820076767600767676008282
      820076767600767676007676760076767600767676008D8D8D00D7D7D7007C7C
      7C00767676007676760076767600767676007C7C7C00D7D7D7008C8C8C007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000CFCFCF00F9F9F900000000000000000000000000CBCBCB007E7E
      7E00BABABA00BABABA00BABABA00BABABA00B2B2B20076767600EEEEEE000000
      00007676760076767600E4E4E400E4E4E400CECECE00A2A2A200E4E4E4008C8C
      8C00E4E4E400B8B8B800B8B8B800E4E4E4008C8C8C00E4E4E400A2A2A200CECE
      CE00E4E4E400E4E4E40076767600767676007676760076767600767676007E7E
      7E00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008282820076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000ACACAC00F2F2F200000000000000000000000000D8D8D8009898
      9800989898009898980098989800989898009898980098989800F2F2F2000000
      00007676760076767600EDEDED00EDEDED00D5D5D500A5A5A500EDEDED008E8E
      8E00EDEDED00BDBDBD00BDBDBD00EDEDED008E8E8E00EDEDED00A5A5A500D5D5
      D500EDEDED00EDEDED0076767600767676007676760076767600767676007A7A
      7A00828282009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400828282007B7B7B0076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000BDBDBD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760076767600A4A4A4009191910091919100A4A4A4007F7F7F00A4A4
      A400888888009B9B9B009B9B9B0088888800A4A4A4007F7F7F00A4A4A4009191
      910091919100A4A4A40076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000BDBDBD00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000767676007676760000000000C8C8C800C8C8C80000000000919191000000
      0000ADADAD00E4E4E400E4E4E400ADADAD00000000009191910000000000C8C8
      C800C8C8C8000000000076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600A4A4A400F9F9F900ACACAC00767676007676
      7600CFCFCF00C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800CFCFCF0000000000F2F2F200989898009898
      98009898980098989800989898009898980098989800D8D8D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760076767600919191008787870087878700919191007B7B7B009191
      9100818181008C8C8C008C8C8C0081818100919191007B7B7B00919191008787
      8700878787009191910076767600767676007979790076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600BCBCBC0000000000C6C6C600767676007979
      790000000000A4A4A40091919100AFAFAF00D2D2D20091919100919191009191
      910091919100919191009191910091919100919191009191910091919100D2D2
      D200AEAEAE0091919100A4A4A4000000000000000000EEEEEE0076767600B2B2
      B200BABABA00BABABA00BABABA00BABABA007E7E7E00CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000888888007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600898989009B9B9B0076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760078787800838383007A7A7A00767676009C9C
      9C0000000000C8C8C8007676760079797900E9E9E90089898900888888008888
      880088888800888888008888880088888800888888008888880089898900E9E9
      E9007979790076767600C8C8C8000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E800ACACAC00A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400ACACAC00E8E8E800F1F1F100A3A3A3008B8B8B007777
      7700777777007979790079797900797979007979790079797900797979007979
      790079797900797979007979790077777700777777008B8B8B00A4A4A400F2F2
      F20000000000FCFCFC008888880076767600CBCBCB00D3D3D300C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800D3D3D300CBCB
      CB007676760088888800FCFCFC000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900C2C2C200FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      00000000000000000000C7C7C70076767600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C80076767600C8C8C800000000000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B60095959500B6B6B600D5D5D500FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      00000000000000000000FBFBFB0086868600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C80086868600FBFBFB00000000000000000000000000EEEEEE00767676009494
      9400989898009898980098989800989898007A7A7A00CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D7D7D700BBBBBB0096969600F9F9
      F900000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      0000000000000000000000000000C6C6C600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C800C7C7C70000000000000000000000000000000000F6F6F600BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00E5E5E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC00CACA
      CA00000000000000000000000000000000000000000000000000000000008080
      8000ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A7A7008484840000000000000000000000
      0000000000000000000000000000FAFAFA00D6D6D60091919100767676007676
      760076767600767676007676760076767600767676007676760091919100D8D8
      D800FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00C0C0
      C000000000000000000000000000000000000000000000000000000000009B9B
      9B007F7F7F00B2B2B200B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6
      B600B6B6B600B6B6B600B5B5B5007E7E7E00A0A0A00000000000000000000000
      000000000000000000000000000000000000FEFEFE00D3D3D300C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800D3D3D300FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EC00959595007979790076767600767676007676760076767600767676007676
      760076767600767676007A7A7A0097979700EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000280000000100010000000000E00100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFF0000000000000000000FFF
      FF0000000000000000000FFFFF00000000000000000008100F00000000000000
      800018100F000000000000008000181FFF00000000000000C000381001000000
      00000000E00078100100000000000000FF0FF8100100000000000000FF0FF81F
      F900000000000000FF0FF81FF900000000000000FF0FF81FF900000000000000
      FF0FF81FF900000000000000FF0FF81FF900000000000000FF0FF81FF9000000
      00000000FC03F8100100000000000000FC03F8100100000000000000FC03FFFF
      FF00000000000000FC03FFFFFF00000000000000FC03FFFFFF00000000000000
      FFFFFFFFFFE0007FFFFF0000FFFFFFFFFFE0007000000000FFC0100000E7FE70
      00000000FFC0100000E40E7000000000FFCF100000840E1000000000F80F125F
      A404020000000000F80F10000004020000000000F9C010000007FE0000000000
      F9C010000000000000000000F9FFF0000000000000000000F9FFF250A4000000
      00000000803FF0000000008800010000803FF00000000008000100008F3FF000
      00000008000100008F3FFFF8FFE7FE7C000300008F3FFFFC1FE7FE7C00030000
      803FFFFE0FE7FE7E00070000803FFFFFCFE7FE7E00070000FFFFFFFFCFE0007F
      000F0000FFFFFFFFFFE0007FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object FDQuery1: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_teclas')
    Left = 663
    Top = 635
    object FDQuery1idteclado: TFDAutoIncField
      FieldName = 'idteclado'
      Origin = 'idteclado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1descrfuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descrfuncao'
      Origin = 'descrfuncao'
      Size = 80
    end
    object FDQuery1descrkeycode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descrkeycode'
      Origin = 'descrkeycode'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 583
    Top = 659
  end
  object qryConfigBalanca: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_balanca')
    Left = 416
    Top = 592
    object qryConfigBalancaidbalanca: TFDAutoIncField
      FieldName = 'idbalanca'
      Origin = 'idbalanca'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfigBalancabalmodelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'balmodelo'
      Origin = 'balmodelo'
      Size = 50
    end
    object qryConfigBalancaportacom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'portacom'
      Origin = 'portacom'
      Size = 30
    end
    object qryConfigBalancabitsegundo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bitsegundo'
      Origin = 'bitsegundo'
    end
    object qryConfigBalancabitdados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bitdados'
      Origin = 'bitdados'
    end
    object qryConfigBalancaparidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'paridade'
      Origin = 'paridade'
      Size = 10
    end
    object qryConfigBalancabitsstop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bitsstop'
      Origin = 'bitsstop'
      Size = 5
    end
    object qryConfigBalancautilizar: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'utilizar'
      Origin = 'utilizar'
    end
    object qryConfigBalancaHandshaking: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handshaking'
      Origin = 'Handshaking'
      Size = 10
    end
  end
  object dsConfigBalanca: TDataSource
    DataSet = qryConfigBalanca
    Left = 416
    Top = 640
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 736
    Top = 128
  end
  object sTimer: TTimer
    Enabled = False
    OnTimer = sTimerTimer
    Left = 701
    Top = 574
  end
  object qryConfigImpressora: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_impressora')
    Left = 808
    Top = 416
    object qryConfigImpressoraidimpressora: TFDAutoIncField
      FieldName = 'idimpressora'
      Origin = 'idimpressora'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfigImpressoraimpressora_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'impressora_modelo'
      Origin = 'impressora_modelo'
      Size = 30
    end
    object qryConfigImpressoraportacomusb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'portacomusb'
      Origin = 'portacomusb'
      Size = 60
    end
    object qryConfigImpressoracolunas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'colunas'
      Origin = 'colunas'
    end
    object qryConfigImpressoralinhapular: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'linhapular'
      Origin = 'linhapular'
    end
    object qryConfigImpressoraespacoslinha: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'espacoslinha'
      Origin = 'espacoslinha'
    end
    object qryConfigImpressorapagcod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pagcod'
      Origin = 'pagcod'
      Size = 10
    end
    object qryConfigImpressorabuffer: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'buffer'
      Origin = 'buffer'
    end
    object qryConfigImpressoratipo_impressao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_impressao'
      Origin = 'tipo_impressao'
    end
  end
  object dsConfigImpressora: TDataSource
    DataSet = qryConfigImpressora
    Left = 816
    Top = 632
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 896
    Top = 112
  end
  object qryConfigIP: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_rede')
    Left = 888
    Top = 360
    object qryConfigIPidrede: TFDAutoIncField
      FieldName = 'idrede'
      Origin = 'idrede'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfigIPtipo_conexao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_conexao'
      Origin = 'tipo_conexao'
    end
    object qryConfigIPaddressip: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'addressip'
      Origin = 'addressip'
      Size = 18
    end
    object qryConfigIPsubrede: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'subrede'
      Origin = 'subrede'
      Size = 18
    end
    object qryConfigIPgateway: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'gateway'
      Origin = 'gateway'
      Size = 18
    end
    object qryConfigIPdns1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dns1'
      Origin = 'dns1'
      Size = 18
    end
    object qryConfigIPdns2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dns2'
      Origin = 'dns2'
      Size = 18
    end
  end
  object dsConfigIP: TDataSource
    DataSet = qryConfigIP
    Left = 896
    Top = 424
  end
end
