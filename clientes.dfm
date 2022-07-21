object FormCadClientes: TFormCadClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 575
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 15
    Top = 71
    Width = 56
    Height = 23
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 143
    Width = 107
    Height = 23
    Caption = 'Logradouro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 216
    Width = 122
    Height = 23
    Caption = 'Observa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 15
    Top = 216
    Width = 82
    Height = 23
    Caption = 'Telefone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 15
    Top = 288
    Width = 66
    Height = 23
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 284
    Top = 288
    Width = 29
    Height = 23
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 471
    Top = 71
    Width = 30
    Height = 23
    Caption = 'RG:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 694
    Top = 71
    Width = 80
    Height = 23
    Caption = 'Org. Exp:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 472
    Top = 143
    Width = 40
    Height = 23
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 60
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 246
      Height = 30
      Caption = 'Cadastro de Clientes '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 762
      Top = 21
      Width = 39
      Height = 15
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object PanelStatus: TPanel
      Left = 802
      Top = 13
      Width = 88
      Height = 31
      TabOrder = 0
      object LabelStatus: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 8
        Width = 40
        Height = 16
        Caption = 'Parado'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 914
    Height = 77
    Align = alBottom
    TabOrder = 10
    object Btcadastrar: TButton
      Left = 10
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtcadastrarClick
    end
    object Btconfirmar: TButton
      Left = 122
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtconfirmarClick
    end
    object BtCancelar: TButton
      Left = 235
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtCancelarClick
    end
    object Btexcluir: TButton
      Left = 582
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtexcluirClick
    end
    object Btsair: TButton
      Left = 807
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtsairClick
    end
    object Btlimpar: TButton
      Left = 351
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Limpar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BtlimparClick
    end
    object Bteditar: TButton
      Left = 468
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BteditarClick
    end
    object BtConsultar: TButton
      Left = 694
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Consultar'
      TabOrder = 7
    end
  end
  object DBEdit1: TDBEdit
    Left = 15
    Top = 100
    Width = 329
    Height = 24
    DataField = 'nome'
    DataSource = DsClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 15
    Top = 172
    Width = 329
    Height = 24
    DataField = 'endereco'
    DataSource = DsClientes
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 471
    Top = 245
    Width = 435
    Height = 98
    DataField = 'observacoes'
    DataSource = DsClientes
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 15
    Top = 245
    Width = 257
    Height = 24
    DataField = 'telefone'
    DataSource = DsClientes
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 15
    Top = 319
    Width = 257
    Height = 24
    DataField = 'cidade'
    DataSource = DsClientes
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 284
    Top = 319
    Width = 53
    Height = 24
    DataField = 'uf'
    DataSource = DsClientes
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 360
    Width = 898
    Height = 120
    DataSource = DsClientes
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'UF'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datacadastro'
        Title.Caption = 'Data Cadastro'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datamodificacao'
        Title.Caption = 'Data Modifica'#231#227'o'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 117
        Visible = True
      end>
  end
  object DBEdit6: TDBEdit
    Left = 471
    Top = 100
    Width = 194
    Height = 24
    DataField = 'RG'
    DataSource = DsClientes
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 694
    Top = 100
    Width = 97
    Height = 24
    DataField = 'ORGEXP'
    DataSource = DsClientes
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 472
    Top = 172
    Width = 193
    Height = 24
    DataField = 'CPF'
    DataSource = DsClientes
    TabOrder = 5
  end
  object DsClientes: TDataSource
    DataSet = TbClientes
    Left = 80
    Top = 464
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=sisteminha'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 464
  end
  object TbClientes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'sisteminha.clientes'
    Left = 48
    Top = 464
    object TbClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbClientesnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TbClientestelefone: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object TbClientescidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object TbClientesendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object TbClientesuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object TbClientesobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
    object TbClientesdatacadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object TbClientesdatamodificacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datamodificacao'
      Origin = 'datamodificacao'
    end
    object TbClientesRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 13
    end
    object TbClientesORGEXP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGEXP'
      Origin = 'ORGEXP'
      Size = 5
    end
    object TbClientesCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
  end
end
