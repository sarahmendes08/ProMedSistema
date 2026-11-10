inherited frmCadastroClinicas: TfrmCadastroClinicas
  Caption = 'Cadastro de Cl'#237'nicas'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 76
    Top = 80
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 76
    Top = 136
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 76
    Top = 192
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel [3]
    Left = 316
    Top = 80
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label5: TLabel [4]
    Left = 316
    Top = 136
    Width = 47
    Height = 15
    Caption = 'Hospital:'
  end
  object Label6: TLabel [5]
    Left = 316
    Top = 192
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  inherited DBGrid1: TDBGrid
    DataSource = DM.DSClinicas
  end
  object edtDescricao: TDBEdit
    Left = 136
    Top = 189
    Width = 121
    Height = 23
    DataField = 'descricao'
    DataSource = DM.DSClinicas
    TabOrder = 7
  end
  object edtNome: TDBEdit
    Left = 136
    Top = 133
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSClinicas
    TabOrder = 8
  end
  object edtCodigo: TDBEdit
    Left = 136
    Top = 77
    Width = 47
    Height = 23
    DataField = 'id_clinica'
    DataSource = DM.DSClinicas
    Enabled = False
    TabOrder = 9
  end
  object cbStatus: TDBComboBox
    Left = 369
    Top = 189
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSClinicas
    Items.Strings = (
      'Ativa'
      'Inativa')
    TabOrder = 10
  end
  object lcbHospitais: TDBLookupComboBox
    Left = 369
    Top = 133
    Width = 145
    Height = 23
    DataField = 'id_hospital'
    DataSource = DM.DSClinicas
    KeyField = 'id_hospital'
    ListField = 'nome'
    ListSource = DM.DSHospitais
    TabOrder = 11
  end
  object edtTelefone: TDBEdit
    Left = 369
    Top = 77
    Width = 121
    Height = 23
    DataField = 'telefone'
    DataSource = DM.DSClinicas
    TabOrder = 12
  end
end
