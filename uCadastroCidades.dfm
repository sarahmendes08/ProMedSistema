inherited frmCadastroCidades: TfrmCadastroCidades
  Caption = 'Cadastro de Cidades'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 205
    Top = 99
    Width = 45
    Height = 15
    Caption = 'C'#243'digo: '
  end
  object Label2: TLabel [1]
    Left = 205
    Top = 144
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 205
    Top = 195
    Width = 17
    Height = 15
    Caption = 'UF:'
  end
  inherited DBGrid1: TDBGrid
    DataSource = DM.DSCidades
  end
  object edtCodigo: TDBEdit
    Left = 256
    Top = 96
    Width = 57
    Height = 23
    DataField = 'id_cidade'
    DataSource = DM.DSCidades
    Enabled = False
    TabOrder = 7
  end
  object edtNome: TDBEdit
    Left = 256
    Top = 141
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.DSCidades
    TabOrder = 8
  end
  object edtUf: TDBEdit
    Left = 256
    Top = 192
    Width = 121
    Height = 23
    DataField = 'uf'
    DataSource = DM.DSCidades
    TabOrder = 9
  end
end
