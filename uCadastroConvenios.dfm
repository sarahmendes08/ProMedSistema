inherited frmCadastroConvenio: TfrmCadastroConvenio
  Caption = 'Cadastro de Convenio'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 72
    Top = 107
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 144
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 72
    Top = 181
    Width = 30
    Height = 15
    Caption = 'CNPJ:'
  end
  object Label4: TLabel [3]
    Left = 336
    Top = 107
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label5: TLabel [4]
    Left = 336
    Top = 144
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label6: TLabel [5]
    Left = 336
    Top = 181
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  inherited DBGrid1: TDBGrid
    DataSource = DM.DSConvenios
  end
  object cbStatus: TDBComboBox
    Left = 389
    Top = 178
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSConvenios
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 7
  end
  object edtCodigo: TDBEdit
    Left = 120
    Top = 104
    Width = 57
    Height = 23
    DataField = 'id_convenio'
    DataSource = DM.DSConvenios
    Enabled = False
    TabOrder = 8
  end
  object edtNome: TDBEdit
    Left = 120
    Top = 141
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSConvenios
    TabOrder = 9
  end
  object edtCNPJ: TDBEdit
    Left = 120
    Top = 178
    Width = 121
    Height = 23
    DataField = 'cnpj'
    DataSource = DM.DSConvenios
    TabOrder = 10
  end
  object edtTelefone: TDBEdit
    Left = 389
    Top = 104
    Width = 121
    Height = 23
    DataField = 'telefone'
    DataSource = DM.DSConvenios
    TabOrder = 11
  end
  object edtEmail: TDBEdit
    Left = 389
    Top = 141
    Width = 121
    Height = 23
    DataField = 'email'
    DataSource = DM.DSConvenios
    TabOrder = 12
  end
end
