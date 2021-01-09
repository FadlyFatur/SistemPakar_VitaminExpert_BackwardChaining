object DM1: TDM1
  OldCreateOrder = False
  Left = 642
  Top = 148
  Height = 224
  Width = 427
  object ZCon: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sispak_db'
    User = 'root'
    Connected = True
    DesignConnection = True
    Left = 32
    Top = 16
  end
  object Gejala_zq: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select*From tabelgejala'
      'order by kodeGejala')
    Params = <>
    Left = 32
    Top = 72
  end
  object Penyakit_zq: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from tabelpenyakit'
      'order by kodePenyakit')
    Params = <>
    Left = 88
    Top = 72
  end
  object Pertanyaan_zq: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from tabelpertanyaan '
      'order by kodePertanyaan')
    Params = <>
    Left = 152
    Top = 72
  end
  object Rule_zq: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from tabelrule'
      'order by kodeRule')
    Params = <>
    Left = 216
    Top = 72
  end
  object pRule_zq: TZQuery
    Connection = ZCon
    SQL.Strings = (
      'select * from tabelrule')
    Params = <>
    Left = 272
    Top = 72
    object pRule_zqkodeRule: TStringField
      FieldName = 'kodeRule'
      Required = True
      Size = 6
    end
    object pRule_zqkodePertanyaan1: TStringField
      FieldName = 'kodePertanyaan1'
      Required = True
      Size = 50
    end
    object pRule_zqkodePenyakit: TStringField
      FieldName = 'kodePenyakit'
      Required = True
      Size = 6
    end
    object pRule_zqrc_namaPenyakit: TStringField
      FieldKind = fkLookup
      FieldName = 'rc_namaPenyakit'
      LookupDataSet = Penyakit_zq
      LookupKeyFields = 'kodePenyakit'
      LookupResultField = 'namaPenyakit'
      KeyFields = 'kodePenyakit'
      Size = 50
      Lookup = True
    end
  end
  object gejala_ds: TDataSource
    DataSet = Gejala_zq
    Left = 32
    Top = 128
  end
  object penyakit_ds: TDataSource
    DataSet = Penyakit_zq
    Left = 88
    Top = 128
  end
  object pertanyaan_ds: TDataSource
    DataSet = Pertanyaan_zq
    Left = 152
    Top = 128
  end
  object Rule_ds: TDataSource
    DataSet = Rule_zq
    Left = 216
    Top = 128
  end
  object prule_ds: TDataSource
    DataSet = pRule_zq
    Left = 272
    Top = 128
  end
  object user_zq: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from user ')
    Params = <>
    Left = 336
    Top = 72
  end
  object user_ds: TDataSource
    DataSet = user_zq
    Left = 336
    Top = 128
  end
end
