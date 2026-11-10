inherited frmCadastroMedicos: TfrmCadastroMedicos
  Caption = 'Cadastro de M'#233'dicos'
  ClientHeight = 511
  ClientWidth = 631
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 647
  ExplicitHeight = 550
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 40
    Top = 88
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 128
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 163
    Width = 24
    Height = 15
    Caption = 'CPF:'
  end
  object Label4: TLabel [3]
    Left = 40
    Top = 208
    Width = 29
    Height = 15
    Caption = 'CRM:'
  end
  object Label5: TLabel [4]
    Left = 43
    Top = 251
    Width = 63
    Height = 15
    Caption = 'UF do CRM:'
  end
  object Label6: TLabel [5]
    Left = 296
    Top = 88
    Width = 74
    Height = 15
    Caption = 'Especialidade:'
  end
  object Label7: TLabel [6]
    Left = 296
    Top = 128
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label8: TLabel [7]
    Left = 296
    Top = 163
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label9: TLabel [8]
    Left = 296
    Top = 251
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  object Label10: TLabel [9]
    Left = 296
    Top = 208
    Width = 40
    Height = 15
    Caption = 'Cidade:'
  end
  inherited DBGrid1: TDBGrid
    Top = 326
    Width = 576
    DataSource = DM.DSMedicos
  end
  object edtCodigo: TDBEdit
    Left = 112
    Top = 85
    Width = 49
    Height = 23
    DataField = 'id_medico'
    DataSource = DM.DSMedicos
    Enabled = False
    TabOrder = 7
  end
  object edtNome: TDBEdit
    Left = 112
    Top = 125
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSMedicos
    TabOrder = 8
  end
  object edtCPF: TDBEdit
    Left = 112
    Top = 160
    Width = 121
    Height = 23
    DataField = 'cpf'
    DataSource = DM.DSMedicos
    TabOrder = 9
  end
  object edtCRM: TDBEdit
    Left = 112
    Top = 205
    Width = 121
    Height = 23
    DataField = 'crm'
    DataSource = DM.DSMedicos
    TabOrder = 10
  end
  object edtUfCrm: TDBEdit
    Left = 112
    Top = 248
    Width = 121
    Height = 23
    DataField = 'uf_crm'
    DataSource = DM.DSMedicos
    TabOrder = 11
  end
  object edtEspecialidade: TDBEdit
    Left = 376
    Top = 85
    Width = 121
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.DSMedicos
    TabOrder = 12
  end
  object edtEmail: TDBEdit
    Left = 376
    Top = 160
    Width = 121
    Height = 23
    DataField = 'email'
    DataSource = DM.DSMedicos
    TabOrder = 13
  end
  object edtTelefone: TDBEdit
    Left = 376
    Top = 125
    Width = 121
    Height = 23
    DataField = 'telefone'
    DataSource = DM.DSMedicos
    TabOrder = 14
  end
  object cbStatus: TDBComboBox
    Left = 376
    Top = 248
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSMedicos
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 15
  end
  object lcbCidades: TDBLookupComboBox
    Left = 376
    Top = 205
    Width = 145
    Height = 23
    DataField = 'id_cidade'
    DataSource = DM.DSMedicos
    KeyField = 'id_cidade'
    ListField = 'nome'
    ListSource = DM.DSCidades
    TabOrder = 16
  end
end
