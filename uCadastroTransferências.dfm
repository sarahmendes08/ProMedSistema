inherited frmCadastroTransferencia: TfrmCadastroTransferencia
  Caption = 'Cadastro de Tr'#226'nsferencias'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 32
    Top = 80
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel [1]
    Left = 32
    Top = 176
    Width = 99
    Height = 15
    Caption = 'Quarto de Destino:'
  end
  object Label4: TLabel [2]
    Left = 344
    Top = 80
    Width = 59
    Height = 15
    Caption = 'Interna'#231#227'o:'
  end
  object Label5: TLabel [3]
    Left = 344
    Top = 129
    Width = 65
    Height = 15
    Caption = 'Data e Hora:'
  end
  object TLabel [4]
    Left = 32
    Top = 129
    Width = 99
    Height = 15
    Caption = 'Quarto de Origem:'
  end
  object Label2: TLabel [5]
    Left = 344
    Top = 176
    Width = 41
    Height = 15
    Caption = 'Motivo:'
  end
  object Label6: TLabel [6]
    Left = 32
    Top = 216
    Width = 70
    Height = 15
    Caption = 'Observa'#231#245'es:'
  end
  inherited DBGrid1: TDBGrid
    DataSource = DM.DSTransferencias
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 77
    Width = 121
    Height = 23
    DataField = 'id_transferencia'
    DataSource = DM.DSTransferencias
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 415
    Top = 126
    Width = 121
    Height = 23
    DataField = 'data_hora'
    DataSource = DM.DSTransferencias
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 391
    Top = 173
    Width = 121
    Height = 23
    DataField = 'motivo'
    DataSource = DM.DSTransferencias
    TabOrder = 9
  end
  object DBMemo1: TDBMemo
    Left = 108
    Top = 207
    Width = 381
    Height = 43
    DataField = 'observacoes'
    DataSource = DM.DSTransferencias
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 137
    Top = 173
    Width = 145
    Height = 23
    DataField = 'id_quarto_destino'
    DataSource = DM.DSTransferencias
    KeyField = 'id_quarto'
    ListField = 'numero'
    ListSource = DM.DSQuartos
    TabOrder = 11
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 137
    Top = 126
    Width = 145
    Height = 23
    DataField = 'id_quarto_origem'
    DataSource = DM.DSTransferencias
    KeyField = 'id_quarto'
    ListField = 'numero'
    ListSource = DM.DSQuartos
    TabOrder = 12
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 409
    Top = 77
    Width = 145
    Height = 23
    DataField = 'id_internacao'
    DataSource = DM.DSTransferencias
    KeyField = 'id_internacao'
    ListField = 'id_internacao'
    ListSource = DM.DSInternacoes
    TabOrder = 13
  end
end
