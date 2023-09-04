object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo de menu com pesquisa utilizando TActionList'
  ClientHeight = 498
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 869
    Height = 26
    Align = alBottom
    Caption = 'Desenvolvido por Vagner Oliveira'
    TabOrder = 0
    ExplicitTop = 568
    ExplicitWidth = 1069
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 472
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = -24
    ExplicitTop = -24
    object edtSearch: TEdit
      Left = 1
      Top = 1
      Width = 231
      Height = 23
      Align = alTop
      TabOrder = 0
      TextHint = 'Pesquisar'
      ExplicitLeft = 56
      ExplicitTop = 224
      ExplicitWidth = 121
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 24
      Width = 233
      Height = 447
      Align = alLeft
      BorderStyle = bsNone
      DataSource = dtsMenu
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object aclMenu: TActionList
    Left = 528
    Top = 168
    object actCustomer: TAction
      Category = 'Cadastros'
      Caption = 'Clientes'
    end
    object actProvider: TAction
      Category = 'Cadastros'
      Caption = 'Fornecedores'
    end
    object actProduct: TAction
      Category = 'Cadastros'
      Caption = 'Produtos'
    end
    object actCategory: TAction
      Category = 'Cadastros'
      Caption = 'Categorias'
    end
    object actUser: TAction
      Category = 'Cadastros'
      Caption = 'Usu'#225'rios'
    end
    object actSales: TAction
      Category = 'Movimento'
      Caption = 'Vendas'
    end
    object actOrders: TAction
      Category = 'Movimento'
      Caption = 'Pedidos'
    end
    object actReportSales: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Relat'#243'rio de Vendas'
    end
    object actReportOrders: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Relat'#243'rio de Pedidos'
    end
  end
  object dtsMenu: TDataSource
    DataSet = memMenu
    Left = 648
    Top = 344
  end
  object memMenu: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 648
    Top = 256
  end
end
