inherited frmCadastroResponsaveis: TfrmCadastroResponsaveis
  Caption = 'Cadastro de Respons'#225'veis'
  ClientHeight = 503
  ClientWidth = 643
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 659
  ExplicitHeight = 542
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 116
    Top = 88
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 48
    Top = 216
    Width = 110
    Height = 15
    Caption = 'Data de Nascimento:'
  end
  object Label3: TLabel [2]
    Left = 128
    Top = 173
    Width = 24
    Height = 15
    Caption = 'CPF:'
  end
  object Label4: TLabel [3]
    Left = 361
    Top = 216
    Width = 34
    Height = 15
    Caption = 'Bairro:'
  end
  object Label5: TLabel [4]
    Left = 330
    Top = 128
    Width = 65
    Height = 15
    Caption = 'Logradouro:'
  end
  object Label6: TLabel [5]
    Left = 361
    Top = 88
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label7: TLabel [6]
    Left = 361
    Top = 173
    Width = 47
    Height = 15
    Caption = 'N'#250'mero:'
  end
  object Label8: TLabel [7]
    Left = 105
    Top = 262
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label9: TLabel [8]
    Left = 361
    Top = 262
    Width = 40
    Height = 15
    Caption = 'Cidade:'
  end
  object Label10: TLabel [9]
    Left = 116
    Top = 128
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  inherited DBGrid1: TDBGrid
    Top = 318
    Width = 588
    DataSource = DM.DSResponsaveis
  end
  object edtCodigo: TDBEdit
    Left = 184
    Top = 85
    Width = 121
    Height = 23
    DataField = 'id_responsavel'
    DataSource = DM.DSResponsaveis
    Enabled = False
    TabOrder = 7
  end
  object edtEmail: TDBEdit
    Left = 415
    Top = 85
    Width = 121
    Height = 23
    DataField = 'email'
    DataSource = DM.DSResponsaveis
    TabOrder = 8
  end
  object edtBairro: TDBEdit
    Left = 415
    Top = 213
    Width = 121
    Height = 23
    DataField = 'bairro'
    DataSource = DM.DSResponsaveis
    TabOrder = 9
  end
  object edtNumero: TDBEdit
    Left = 414
    Top = 170
    Width = 121
    Height = 23
    DataField = 'numero'
    DataSource = DM.DSResponsaveis
    TabOrder = 10
  end
  object edtDataNasc: TDBEdit
    Left = 178
    Top = 213
    Width = 121
    Height = 23
    DataField = 'data_nascimento'
    DataSource = DM.DSResponsaveis
    TabOrder = 11
  end
  object edtCPF: TDBEdit
    Left = 178
    Top = 170
    Width = 121
    Height = 23
    DataField = 'cpf'
    DataSource = DM.DSResponsaveis
    TabOrder = 12
  end
  object edtNome: TDBEdit
    Left = 184
    Top = 125
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSResponsaveis
    TabOrder = 13
  end
  object edtLogradouro: TDBEdit
    Left = 415
    Top = 125
    Width = 121
    Height = 23
    DataField = 'logradouro'
    DataSource = DM.DSResponsaveis
    TabOrder = 14
  end
  object edtTel: TDBEdit
    Left = 178
    Top = 259
    Width = 121
    Height = 23
    DataField = 'telefone'
    DataSource = DM.DSResponsaveis
    TabOrder = 15
  end
  object lcbCidade: TDBLookupComboBox
    Left = 414
    Top = 259
    Width = 145
    Height = 23
    DataField = 'id_cidade'
    DataSource = DM.DSResponsaveis
    KeyField = 'id_cidade'
    ListField = 'nome'
    ListSource = DM.DSCidades
    TabOrder = 16
  end
end
