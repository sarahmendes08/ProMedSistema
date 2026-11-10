inherited frmCadastroAtendimentos: TfrmCadastroAtendimentos
  Caption = 'Cadastro de Atendimentos'
  ClientHeight = 603
  ClientWidth = 1016
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1032
  ExplicitHeight = 642
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 88
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 320
    Top = 181
    Width = 65
    Height = 15
    Caption = 'Observa'#231#227'o:'
  end
  object Label3: TLabel [2]
    Left = 32
    Top = 227
    Width = 3
    Height = 15
  end
  object Label4: TLabel [3]
    Left = 55
    Top = 181
    Width = 26
    Height = 15
    Caption = 'Tipo:'
  end
  object Label6: TLabel [4]
    Left = 288
    Top = 91
    Width = 89
    Height = 15
    Caption = 'Queixa Principal:'
  end
  object Label7: TLabel [5]
    Left = 24
    Top = 186
    Width = 3
    Height = 15
  end
  object Label8: TLabel [6]
    Left = 24
    Top = 141
    Width = 65
    Height = 15
    Caption = 'Data e Hora:'
  end
  object label20: TLabel [7]
    Left = 32
    Top = 227
    Width = 48
    Height = 15
    Caption = 'Paciente:'
  end
  object Label11: TLabel [8]
    Left = 46
    Top = 277
    Width = 43
    Height = 15
    Caption = 'M'#233'dico:'
  end
  object Label12: TLabel [9]
    Left = 42
    Top = 309
    Width = 47
    Height = 15
    Caption = 'Hospital:'
  end
  object Label5: TLabel [10]
    Left = 311
    Top = 299
    Width = 66
    Height = 15
    Caption = 'Diagn'#243'stico:'
  end
  inherited DBGrid1: TDBGrid
    Top = 418
    Width = 961
    DataSource = DM.DSAtendimentos
  end
  object edtCodigo: TDBEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 23
    DataField = 'id_atendimento'
    DataSource = DM.DSAtendimentos
    Enabled = False
    TabOrder = 7
  end
  object edtDataHora: TDBEdit
    Left = 104
    Top = 133
    Width = 121
    Height = 23
    DataField = 'data_hora'
    DataSource = DM.DSAtendimentos
    TabOrder = 8
  end
  object cbTipo: TDBComboBox
    Left = 104
    Top = 178
    Width = 145
    Height = 23
    DataField = 'tipo_atendimento'
    DataSource = DM.DSAtendimentos
    Items.Strings = (
      'Consulta M'#233'dica'
      'Retorno M'#233'dico'
      'Emerg'#234'ncia'
      'Triagem')
    TabOrder = 9
  end
  object lcbPaciente: TDBLookupComboBox
    Left = 104
    Top = 224
    Width = 145
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.DSAtendimentos
    KeyField = 'id_paciente'
    ListField = 'nome'
    ListSource = DM.DSPacientes
    TabOrder = 10
  end
  object lcbMedico: TDBLookupComboBox
    Left = 104
    Top = 264
    Width = 145
    Height = 23
    DataField = 'id_medico'
    DataSource = DM.DSAtendimentos
    KeyField = 'id_medico'
    ListField = 'nome'
    ListSource = DM.DSMedicos
    TabOrder = 11
  end
  object lcbHospital: TDBLookupComboBox
    Left = 104
    Top = 306
    Width = 145
    Height = 23
    DataField = 'id_hospital'
    DataSource = DM.DSAtendimentos
    KeyField = 'id_hospital'
    ListField = 'nome'
    ListSource = DM.DSHospitais
    TabOrder = 12
  end
  object mQueixa: TDBMemo
    Left = 391
    Top = 85
    Width = 178
    Height = 73
    DataField = 'queixa_principal'
    DataSource = DM.DSAtendimentos
    TabOrder = 13
  end
  object mObs: TDBMemo
    Left = 391
    Top = 178
    Width = 185
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.DSAtendimentos
    TabOrder = 14
  end
  object mDiagnostico: TDBMemo
    Left = 391
    Top = 296
    Width = 185
    Height = 89
    DataField = 'diagnostico'
    DataSource = DM.DSAtendimentos
    TabOrder = 15
  end
end
