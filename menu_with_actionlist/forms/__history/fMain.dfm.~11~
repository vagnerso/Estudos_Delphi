object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Exemplo de menu com pesquisa utilizando TActionList'
  ClientHeight = 458
  ClientWidth = 869
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 869
    Height = 26
    Align = alBottom
    Caption = 'Desenvolvido por Vagner Oliveira'
    TabOrder = 0
    ExplicitTop = 463
    ExplicitWidth = 863
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 432
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 463
    object edtSearch: TEdit
      Left = 1
      Top = 1
      Width = 231
      Height = 28
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Pesquisar'
      OnChange = edtSearchChange
      OnKeyDown = edtSearchKeyDown
    end
    object grdMenu: TDBGrid
      Left = 1
      Top = 29
      Width = 233
      Height = 402
      Align = alLeft
      BorderStyle = bsNone
      Color = 4934475
      DataSource = dtsMenu
      DrawingStyle = gdsClassic
      FixedColor = 11056006
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = grdMenuCellClick
      OnDrawColumnCell = grdMenuDrawColumnCell
      OnKeyDown = grdMenuKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CaptionAction'
          Width = 200
          Visible = True
        end>
    end
  end
  object aclMenu: TActionList
    Left = 648
    Top = 192
    object actCustomer: TAction
      Category = 'Cadastros'
      Caption = 'Clientes'
      OnExecute = actCustomerExecute
    end
    object actProvider: TAction
      Category = 'Cadastros'
      Caption = 'Fornecedores'
      OnExecute = actProviderExecute
    end
    object actProduct: TAction
      Category = 'Cadastros'
      Caption = 'Produtos'
      OnExecute = actProductExecute
    end
    object actCategory: TAction
      Category = 'Cadastros'
      Caption = 'Categorias'
      OnExecute = actCategoryExecute
    end
    object actUser: TAction
      Category = 'Cadastros'
      Caption = 'Usu'#225'rios'
      OnExecute = actUserExecute
    end
    object actSales: TAction
      Category = 'Movimento'
      Caption = 'Vendas'
      OnExecute = actSalesExecute
    end
    object actOrders: TAction
      Category = 'Movimento'
      Caption = 'Pedidos'
      OnExecute = actOrdersExecute
    end
    object actReportSales: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Relat'#243'rio de Vendas'
      OnExecute = actReportSalesExecute
    end
    object actReportOrders: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Relat'#243'rio de Pedidos'
      OnExecute = actReportOrdersExecute
    end
  end
  object dtsMenu: TDataSource
    DataSet = memMenu
    Left = 648
    Top = 328
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
    object memMenuIndexAction: TIntegerField
      FieldName = 'IndexAction'
    end
    object memMenuCaptionAction: TStringField
      FieldName = 'CaptionAction'
      Size = 500
    end
  end
end
