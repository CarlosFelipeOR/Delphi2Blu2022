object dmPedidos: TdmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 393
  Width = 532
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=devs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 48
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\craymundo\Desktop\Carlos\MySQL\libmysql.dll'
    Left = 72
    Top = 168
  end
end
