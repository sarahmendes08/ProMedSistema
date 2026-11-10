inherited frmCadastroPaciente: TfrmCadastroPaciente
  Caption = 'Cadastro de Paciente'
  ClientHeight = 547
  ClientWidth = 784
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 800
  ExplicitHeight = 586
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 32
    Top = 88
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 38
    Top = 128
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 50
    Top = 167
    Width = 24
    Height = 15
    Caption = 'CPF:'
  end
  object Label4: TLabel [3]
    Left = 236
    Top = 128
    Width = 110
    Height = 15
    Caption = 'Data de Nascimento:'
  end
  object Label5: TLabel [4]
    Left = 46
    Top = 247
    Width = 28
    Height = 15
    Caption = 'Sexo:'
  end
  object Label6: TLabel [5]
    Left = 27
    Top = 291
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label7: TLabel [6]
    Left = 37
    Top = 208
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label8: TLabel [7]
    Left = 281
    Top = 167
    Width = 65
    Height = 15
    Caption = 'Logradouro:'
  end
  object Label9: TLabel [8]
    Left = 299
    Top = 208
    Width = 47
    Height = 15
    Caption = 'N'#250'mero:'
  end
  object Label10: TLabel [9]
    Left = 312
    Top = 247
    Width = 34
    Height = 15
    Caption = 'Bairro:'
  end
  object Label11: TLabel [10]
    Left = 322
    Top = 88
    Width = 24
    Height = 15
    Caption = 'CEP:'
  end
  object Label12: TLabel [11]
    Left = 223
    Top = 291
    Width = 123
    Height = 15
    Caption = 'N'#250'mero do Prontu'#225'rio:'
  end
  object Label13: TLabel [12]
    Left = 509
    Top = 88
    Width = 93
    Height = 15
    Caption = 'Data de Cadastro:'
  end
  object Label14: TLabel [13]
    Left = 562
    Top = 128
    Width = 40
    Height = 15
    Caption = 'Cidade:'
  end
  object Label15: TLabel [14]
    Left = 534
    Top = 167
    Width = 68
    Height = 15
    Caption = 'Respons'#225'vel:'
  end
  object Label16: TLabel [15]
    Left = 548
    Top = 208
    Width = 54
    Height = 15
    Caption = 'Conv'#234'nio:'
  end
  object Label17: TLabel [16]
    Left = 567
    Top = 247
    Width = 35
    Height = 15
    Caption = 'Status:'
  end
  inherited DBGrid1: TDBGrid
    Left = 27
    Top = 362
    Width = 729
    DataSource = DM.DSPacientes
  end
  object edtCodigo: TDBEdit
    Left = 80
    Top = 85
    Width = 121
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.DSPacientes
    Enabled = False
    TabOrder = 7
  end
  object edtNome: TDBEdit
    Left = 80
    Top = 125
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSPacientes
    TabOrder = 8
  end
  object edtCPF: TDBEdit
    Left = 80
    Top = 164
    Width = 121
    Height = 23
    DataField = 'cpf'
    DataSource = DM.DSPacientes
    TabOrder = 9
  end
  object edtEmail: TDBEdit
    Left = 80
    Top = 205
    Width = 121
    Height = 23
    DataField = 'email'
    DataSource = DM.DSPacientes
    TabOrder = 10
  end
  object edtSexo: TDBEdit
    Left = 80
    Top = 244
    Width = 121
    Height = 23
    DataField = 'sexo'
    DataSource = DM.DSPacientes
    TabOrder = 11
  end
  object edtTelefone: TDBEdit
    Left = 80
    Top = 288
    Width = 121
    Height = 23
    DataField = 'telefone'
    DataSource = DM.DSPacientes
    TabOrder = 12
  end
  object edtDataNasc: TDBEdit
    Left = 352
    Top = 125
    Width = 121
    Height = 23
    DataField = 'data_nascimento'
    DataSource = DM.DSPacientes
    TabOrder = 13
  end
  object edtLogradouro: TDBEdit
    Left = 352
    Top = 164
    Width = 121
    Height = 23
    DataField = 'logradouro'
    DataSource = DM.DSPacientes
    TabOrder = 14
  end
  object edtNumero: TDBEdit
    Left = 352
    Top = 205
    Width = 121
    Height = 23
    DataField = 'numero'
    DataSource = DM.DSPacientes
    TabOrder = 15
  end
  object edtBairro: TDBEdit
    Left = 352
    Top = 244
    Width = 121
    Height = 23
    DataField = 'bairro'
    DataSource = DM.DSPacientes
    TabOrder = 16
  end
  object edtCEP: TDBEdit
    Left = 352
    Top = 85
    Width = 121
    Height = 23
    DataField = 'cep'
    DataSource = DM.DSPacientes
    TabOrder = 17
  end
  object edtProntuario: TDBEdit
    Left = 352
    Top = 288
    Width = 121
    Height = 23
    DataField = 'numero_prontuario'
    DataSource = DM.DSPacientes
    TabOrder = 18
  end
  object edtConvenio: TDBLookupComboBox
    Left = 608
    Top = 205
    Width = 145
    Height = 23
    DataField = 'id_convenio'
    DataSource = DM.DSPacientes
    KeyField = 'id_convenio'
    ListField = 'nome'
    ListSource = DM.DSConvenios
    TabOrder = 19
  end
  object lcbResponsavel: TDBLookupComboBox
    Left = 608
    Top = 164
    Width = 145
    Height = 23
    DataField = 'id_responsavel'
    DataSource = DM.DSPacientes
    KeyField = 'id_responsavel'
    ListField = 'nome'
    ListSource = DM.DSResponsaveis
    TabOrder = 20
  end
  object lcbCidade: TDBLookupComboBox
    Left = 608
    Top = 125
    Width = 145
    Height = 23
    DataField = 'id_cidade'
    DataSource = DM.DSPacientes
    KeyField = 'id_cidade'
    ListField = 'nome'
    ListSource = DM.DSCidades
    TabOrder = 21
  end
  object edtCadastro: TDBEdit
    Left = 608
    Top = 85
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.DSPacientes
    TabOrder = 22
  end
  object cbStatus: TDBComboBox
    Left = 608
    Top = 244
    Width = 145
    Height = 23
    DataField = 'status'
    DataSource = DM.DSPacientes
    Items.Strings = (
      'Em Observa'#231#227'o'
      'Alta M'#233'dica'
      #211'bito'
      'Em Transfer'#234'ncia'
      'Internado')
    TabOrder = 23
  end
end
