object DMConexaoERP: TDMConexaoERP
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object ConexaoERP: TFDConnection
    Params.Strings = (
      'Database=frcaixa'
      'User_Name=root'
      'Password=123'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Transaction = Transaction
    UpdateTransaction = Transaction
    Left = 160
    Top = 224
  end
  object Transaction: TFDTransaction
    Connection = ConexaoERP
    Left = 160
    Top = 288
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 456
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 456
    Top = 224
  end
  object MySQLDriver: TFDPhysMySQLDriverLink
    Left = 456
    Top = 288
  end
end
