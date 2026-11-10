inherited frmCadastroSetores: TfrmCadastroSetores
  Caption = 'Cadastro de Setores'
  ClientWidth = 659
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 675
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 64
    Top = 88
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 142
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 192
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel [3]
    Left = 344
    Top = 88
    Width = 52
    Height = 15
    Caption = 'Hospitais:'
  end
  object Label5: TLabel [4]
    Left = 344
    Top = 142
    Width = 44
    Height = 15
    Caption = 'Cl'#237'nicas:'
  end
  object Label6: TLabel [5]
    Left = 344
    Top = 192
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  inherited DBGrid1: TDBGrid
    Width = 604
    DataSource = DM.DSSetores
  end
  object edtNome: TDBEdit
    Left = 128
    Top = 139
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSSetores
    TabOrder = 7
  end
  object edtCodigo: TDBEdit
    Left = 128
    Top = 85
    Width = 121
    Height = 23
    DataField = 'id_setor'
    DataSource = DM.DSSetores
    Enabled = False
    TabOrder = 8
  end
  object edtDescricao: TDBEdit
    Left = 128
    Top = 189
    Width = 121
    Height = 23
    DataField = 'descricao'
    DataSource = DM.DSSetores
    TabOrder = 9
  end
  object cbStatus: TDBComboBox
    Left = 402
    Top = 189
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSSetores
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 10
  end
  object lcbClinica: TDBLookupComboBox
    Left = 402
    Top = 139
    Width = 145
    Height = 23
    DataField = 'id_clinica'
    DataSource = DM.DSSetores
    KeyField = 'id_clinica'
    ListField = 'nome'
    ListSource = DM.DSClinicas
    TabOrder = 11
  end
  object lcbHospital: TDBLookupComboBox
    Left = 402
    Top = 85
    Width = 145
    Height = 23
    DataField = 'id_hospital'
    DataSource = DM.DSSetores
    KeyField = 'id_hospital'
    ListField = 'nome'
    ListSource = DM.DSHospitais
    TabOrder = 12
  end
end
