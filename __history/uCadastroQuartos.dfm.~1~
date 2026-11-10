inherited frmCadastroQuartos: TfrmCadastroQuartos
  Caption = 'Cadastro de Quartos'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object label1: TLabel [0]
    Left = 80
    Top = 72
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 128
    Width = 47
    Height = 15
    Caption = 'N'#250'mero:'
  end
  object Label3: TLabel [2]
    Left = 80
    Top = 200
    Width = 35
    Height = 15
    Caption = 'Andar:'
  end
  object Label4: TLabel [3]
    Left = 320
    Top = 80
    Width = 26
    Height = 15
    Caption = 'Tipo:'
  end
  object Label5: TLabel [4]
    Left = 320
    Top = 136
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  object Label6: TLabel [5]
    Left = 320
    Top = 192
    Width = 30
    Height = 15
    Caption = 'Setor:'
  end
  inherited DBGrid1: TDBGrid
    DataSource = DM.DSQuartos
  end
  object edtCodigo: TDBEdit
    Left = 144
    Top = 72
    Width = 121
    Height = 23
    DataField = 'id_quarto'
    DataSource = DM.DSQuartos
    Enabled = False
    TabOrder = 7
  end
  object edtNumero: TDBEdit
    Left = 144
    Top = 128
    Width = 121
    Height = 23
    DataField = 'numero'
    DataSource = DM.DSQuartos
    TabOrder = 8
  end
  object edtAndar: TDBEdit
    Left = 144
    Top = 192
    Width = 121
    Height = 23
    DataField = 'andar'
    DataSource = DM.DSQuartos
    TabOrder = 9
  end
  object cbTipo: TDBComboBox
    Left = 384
    Top = 72
    Width = 145
    Height = 23
    DataField = 'tipo'
    DataSource = DM.DSQuartos
    Items.Strings = (
      'Aposentos de M'#233'dicos'
      'Aposentos de Respons'#225'veis'
      'Aposentos de Pacientes')
    TabOrder = 10
  end
  object cbStatus: TDBComboBox
    Left = 384
    Top = 128
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSQuartos
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 11
  end
  object lcbSetor: TDBLookupComboBox
    Left = 384
    Top = 192
    Width = 145
    Height = 23
    DataField = 'id_setor'
    DataSource = DM.DSQuartos
    KeyField = 'id_setor'
    ListField = 'nome'
    ListSource = DM.DSSetores
    TabOrder = 12
  end
end
