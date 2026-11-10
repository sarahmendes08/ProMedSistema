inherited frmCadastroUsuarios: TfrmCadastroUsuarios
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 415
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitHeight = 454
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 85
    Top = 88
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label2: TLabel [1]
    Left = 85
    Top = 152
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 321
    Top = 88
    Width = 35
    Height = 15
    Caption = 'Senha:'
  end
  object Label4: TLabel [3]
    Left = 321
    Top = 152
    Width = 57
    Height = 15
    Caption = 'Ocupa'#231#227'o:'
  end
  inherited DBGrid1: TDBGrid
    Left = 32
    Top = 230
    DataSource = DM.DSUsuarios
  end
  object edtSenha: TDBEdit
    Left = 384
    Top = 88
    Width = 121
    Height = 23
    DataField = 'senha'
    DataSource = DM.DSUsuarios
    TabOrder = 7
  end
  object edtNome: TDBEdit
    Left = 128
    Top = 152
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSUsuarios
    TabOrder = 8
  end
  object edtEmail: TDBEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 23
    DataField = 'email'
    DataSource = DM.DSUsuarios
    TabOrder = 9
  end
  object cbOcupacao: TDBComboBox
    Left = 384
    Top = 152
    Width = 145
    Height = 23
    DataField = 'ocupacao'
    DataSource = DM.DSUsuarios
    Items.Strings = (
      'M'#233'dico'
      'Recepcionista'
      'Administrador'
      'Cl'#237'nico Geral'
      'Enfermeiro'
      'Servidor')
    TabOrder = 10
  end
end
