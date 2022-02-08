object DM: TDM
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object FDTransaction1: TFDTransaction
    Connection = Conexao
    Left = 104
    Top = 24
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=123'
      'Database=frcaixa'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 264
    Top = 24
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 184
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 376
    Top = 24
  end
  object qryCliente: TFDQuery
    Connection = Conexao
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    SQL.Strings = (
      'select * from cliente where idcliente order by idcliente')
    Left = 128
    Top = 168
    object qryClienteidcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryClientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object qryClientecli_limite: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'cli_limite'
      Origin = 'cli_limite'
    end
    object qryClientecpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpfcnpj'
      Origin = 'cpfcnpj'
      Size = 15
    end
    object qryClientelogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object qryClientenumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object qryClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object qryClientecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object qryClienteestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 128
    Top = 224
  end
  object qryProduto: TFDQuery
    Connection = Conexao
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    SQL.Strings = (
      'select * from produto where idproduto order by idproduto')
    Left = 216
    Top = 168
    object qryProdutoidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProdutocodbarra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codbarra'
      Origin = 'codbarra'
      FixedChar = True
    end
    object qryProdutodescproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descproduto'
      Origin = 'descproduto'
      Size = 30
    end
    object qryProdutovlrproduto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlrproduto'
      Origin = 'vlrproduto'
      Precision = 10
      Size = 2
    end
    object qryProdutomedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medida'
      Origin = 'medida'
      FixedChar = True
      Size = 3
    end
  end
  object dsProduto: TDataSource
    DataSet = qryProduto
    Left = 216
    Top = 224
  end
  object qryPagamento: TFDQuery
    Connection = Conexao
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    SQL.Strings = (
      'select * from pagamento where idpagamento order by idpagamento')
    Left = 296
    Top = 168
    object qryPagamentoidpagamento: TFDAutoIncField
      FieldName = 'idpagamento'
      ReadOnly = True
    end
    object qryPagamentodesc_pagamento: TStringField
      FieldName = 'desc_pagamento'
      Size = 30
    end
  end
  object dsPagamento: TDataSource
    DataSet = qryPagamento
    Left = 296
    Top = 232
  end
end
