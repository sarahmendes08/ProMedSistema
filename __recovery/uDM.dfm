object DM: TDM
  Height = 807
  Width = 1006
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Aluno\Desktop\Trabalho Final\ProMedSistema\libmysql.dll'
    Left = 96
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=gestao_hospitalar'
      'Password=root'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 272
    Top = 48
  end
  object FDTSalas: TFDTable
    Active = True
    IndexFieldNames = 'id_sala;id_setor'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'salas'
    Left = 96
    Top = 136
    object FDTSalasid_sala: TFDAutoIncField
      FieldName = 'id_sala'
      Origin = 'id_sala'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDTSalasid_setor: TIntegerField
      FieldName = 'id_setor'
      Origin = 'id_setor'
      Required = True
      Visible = False
    end
    object FDTSalastipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 40
    end
    object FDTSalasstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTSalassetor_sala: TStringField
      FieldKind = fkLookup
      FieldName = 'setor_sala'
      LookupDataSet = FDTSetores
      LookupKeyFields = 'id_setor'
      LookupResultField = 'nome'
      KeyFields = 'id_setor'
      Lookup = True
    end
  end
  object DSSalas: TDataSource
    DataSet = FDTSalas
    Left = 272
    Top = 136
  end
  object FDTAtendimentos: TFDTable
    Active = True
    IndexFieldNames = 'id_atendimento;id_hospital;id_medico;id_paciente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.atendimentos'
    Left = 96
    Top = 208
    object FDTAtendimentosid_atendimento: TFDAutoIncField
      FieldName = 'id_atendimento'
      Origin = 'id_atendimento'
      ReadOnly = False
    end
    object FDTAtendimentosid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
      Visible = False
    end
    object FDTAtendimentosid_medico: TIntegerField
      FieldName = 'id_medico'
      Origin = 'id_medico'
      Required = True
      Visible = False
    end
    object FDTAtendimentosid_hospital: TIntegerField
      FieldName = 'id_hospital'
      Origin = 'id_hospital'
      Required = True
      Visible = False
    end
    object FDTAtendimentosdata_hora: TDateTimeField
      FieldName = 'data_hora'
      Origin = 'data_hora'
      Required = True
      EditMask = '00/00/0000 00:00:00;1;_'
    end
    object FDTAtendimentostipo_atendimento: TStringField
      FieldName = 'tipo_atendimento'
      Origin = 'tipo_atendimento'
      Required = True
      Size = 50
    end
    object FDTAtendimentosqueixa_principal: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'queixa_principal'
      Origin = 'queixa_principal'
      OnGetText = FDTAtendimentosqueixa_principalGetText
      BlobType = ftMemo
    end
    object FDTAtendimentosdiagnostico: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'diagnostico'
      Origin = 'diagnostico'
      OnGetText = FDTAtendimentosdiagnosticoGetText
      BlobType = ftMemo
    end
    object FDTAtendimentosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      OnGetText = FDTAtendimentosobservacoesGetText
      BlobType = ftMemo
    end
    object FDTAtendimentosPaciente_Atendimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Paciente_Atendimento'
      LookupDataSet = FDTPacientes
      LookupKeyFields = 'id_paciente'
      LookupResultField = 'nome'
      KeyFields = 'id_paciente'
      Lookup = True
    end
    object FDTAtendimentosMedico_Atendimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Medico_Atendimento'
      LookupDataSet = FDTMedicos
      LookupKeyFields = 'id_medico'
      LookupResultField = 'nome'
      KeyFields = 'id_medico'
      Lookup = True
    end
    object FDTAtendimentosHospital_Atendimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Hospital_Atendimento'
      LookupDataSet = FDTHospitais
      LookupKeyFields = 'id_hospital'
      LookupResultField = 'nome'
      KeyFields = 'id_hospital'
      Lookup = True
    end
  end
  object DSAtendimentos: TDataSource
    DataSet = FDTAtendimentos
    Left = 264
    Top = 208
  end
  object FDTCidades: TFDTable
    Active = True
    IndexFieldNames = 'id_cidade'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.cidades'
    Left = 96
    Top = 280
    object FDTCidadesid_cidade: TFDAutoIncField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ReadOnly = False
    end
    object FDTCidadesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object FDTCidadesuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object DSCidades: TDataSource
    DataSet = FDTCidades
    Left = 264
    Top = 280
  end
  object FDTClinicas: TFDTable
    Active = True
    IndexFieldNames = 'id_clinica;id_hospital'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.clinicas'
    Left = 96
    Top = 360
    object FDTClinicasid_clinica: TFDAutoIncField
      FieldName = 'id_clinica'
      Origin = 'id_clinica'
      ReadOnly = False
    end
    object FDTClinicasid_hospital: TIntegerField
      FieldName = 'id_hospital'
      Origin = 'id_hospital'
      Required = True
      Visible = False
    end
    object FDTClinicasnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 120
    end
    object FDTClinicasdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object FDTClinicastelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)00000-0000;1;_'
    end
    object FDTClinicasstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTClinicasclinica_hospital: TStringField
      FieldKind = fkLookup
      FieldName = 'clinica_hospital'
      LookupDataSet = FDTHospitais
      LookupKeyFields = 'id_hospital'
      LookupResultField = 'nome'
      KeyFields = 'id_hospital'
      Lookup = True
    end
  end
  object DSClinicas: TDataSource
    DataSet = FDTClinicas
    Left = 264
    Top = 360
  end
  object FDTConvenios: TFDTable
    Active = True
    IndexFieldNames = 'id_convenio'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.convenios'
    Left = 88
    Top = 432
    object FDTConveniosid_convenio: TFDAutoIncField
      FieldName = 'id_convenio'
      Origin = 'id_convenio'
      ReadOnly = False
    end
    object FDTConveniosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 120
    end
    object FDTConvenioscnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      EditMask = '00.000.000/0000-00;1;_'
      FixedChar = True
      Size = 14
    end
    object FDTConveniostelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)00000-0000;1;_'
    end
    object FDTConveniosemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 120
    end
    object FDTConveniosstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
  end
  object DSConvenios: TDataSource
    DataSet = FDTConvenios
    Left = 264
    Top = 440
  end
  object FDTHospitais: TFDTable
    Active = True
    IndexFieldNames = 'id_hospital;id_cidade'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.hospitais'
    Left = 96
    Top = 504
    object FDTHospitaisid_hospital: TFDAutoIncField
      FieldName = 'id_hospital'
      Origin = 'id_hospital'
      ReadOnly = False
    end
    object FDTHospitaisnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 150
    end
    object FDTHospitaiscnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      EditMask = '00.000.000/0000-00;1;_'
      FixedChar = True
      Size = 14
    end
    object FDTHospitaistelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)00000-0000;1;_'
    end
    object FDTHospitaisemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 120
    end
    object FDTHospitaislogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 150
    end
    object FDTHospitaisnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 15
    end
    object FDTHospitaisbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 80
    end
    object FDTHospitaiscep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000-000;1;_'
      FixedChar = True
      Size = 8
    end
    object FDTHospitaisid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
      Visible = False
    end
    object FDTHospitaisstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTHospitaisHospitais_Cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'Hospitais_Cidades'
      LookupDataSet = FDTCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome'
      KeyFields = 'id_hospital'
      Lookup = True
    end
  end
  object DSHospitais: TDataSource
    DataSet = FDTHospitais
    Left = 264
    Top = 504
  end
  object FDTInternacoes: TFDTable
    Active = True
    IndexFieldNames = 'id_convenio;id_internacao;id_medico;id_paciente;id_quarto'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.internacoes'
    Left = 96
    Top = 584
    object FDTInternacoesid_internacao: TFDAutoIncField
      FieldName = 'id_internacao'
      Origin = 'id_internacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDTInternacoesid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
      Visible = False
    end
    object FDTInternacoesid_medico: TIntegerField
      FieldName = 'id_medico'
      Origin = 'id_medico'
      Required = True
      Visible = False
    end
    object FDTInternacoesid_convenio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_convenio'
      Origin = 'id_convenio'
      Visible = False
    end
    object FDTInternacoesid_quarto: TIntegerField
      FieldName = 'id_quarto'
      Origin = 'id_quarto'
      Required = True
      Visible = False
    end
    object FDTInternacoesdata_entrada: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_entrada'
      Origin = 'data_entrada'
      EditMask = '00/00/0000;1;_'
    end
    object FDTInternacoesmotivo_internacao: TMemoField
      FieldName = 'motivo_internacao'
      Origin = 'motivo_internacao'
      Required = True
      OnGetText = FDTInternacoesmotivo_internacaoGetText
      BlobType = ftMemo
    end
    object FDTInternacoesstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTInternacoesdata_alta: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_alta'
      Origin = 'data_alta'
      EditMask = '00/00/0000;1;_'
    end
    object FDTInternacoesmotivo_alta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_alta'
      Origin = 'motivo_alta'
      Size = 255
    end
    object FDTInternacoescodigo_liberacao_hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_liberacao_hash'
      Origin = 'codigo_liberacao_hash'
      Size = 255
    end
  end
  object DSInternacoes: TDataSource
    DataSet = FDTInternacoes
    Left = 264
    Top = 584
  end
  object FDTMedicos: TFDTable
    Active = True
    IndexFieldNames = 'id_medico'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.medicos'
    Left = 96
    Top = 656
    object FDTMedicosid_medico: TFDAutoIncField
      FieldName = 'id_medico'
      Origin = 'id_medico'
      ReadOnly = False
    end
    object FDTMedicosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 150
    end
    object FDTMedicoscpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '000.000.000-00;1;_'
      FixedChar = True
      Size = 11
    end
    object FDTMedicoscrm: TStringField
      FieldName = 'crm'
      Origin = 'crm'
      Required = True
    end
    object FDTMedicosuf_crm: TStringField
      FieldName = 'uf_crm'
      Origin = 'uf_crm'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FDTMedicosespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 100
    end
    object FDTMedicostelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)00000-0000'
    end
    object FDTMedicosemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 120
    end
    object FDTMedicosid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
      Visible = False
    end
    object FDTMedicosstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTMedicosMedico_Cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'Medico_Cidades'
      LookupDataSet = FDTCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome'
      KeyFields = 'id_cidade'
      Lookup = True
    end
  end
  object DSMedicos: TDataSource
    DataSet = FDTMedicos
    Left = 256
    Top = 656
  end
  object FDTOcorrencias: TFDTable
    IndexFieldNames = 'id_internacao;id_ocorrencia'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ocorrencias'
    Left = 88
    Top = 736
    object FDTOcorrenciasid_ocorrencia: TFDAutoIncField
      FieldName = 'id_ocorrencia'
      Origin = 'id_ocorrencia'
      ReadOnly = False
    end
    object FDTOcorrenciasid_internacao: TIntegerField
      FieldName = 'id_internacao'
      Origin = 'id_internacao'
      Required = True
    end
    object FDTOcorrenciasdata_hora: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_hora'
      Origin = 'data_hora'
    end
    object FDTOcorrenciastipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 40
    end
    object FDTOcorrenciasdescricao: TMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      BlobType = ftMemo
    end
    object FDTOcorrenciasOcorenciasInternações: TIntegerField
      FieldKind = fkLookup
      FieldName = 'OcorenciasInterna'#231#245'es'
      LookupDataSet = FDTInternacoes
      LookupKeyFields = 'id_internacao'
      LookupResultField = 'id_internacao'
      KeyFields = 'id_internacao'
      Lookup = True
    end
  end
  object DSOcorrencias: TDataSource
    DataSet = FDTOcorrencias
    Left = 256
    Top = 744
  end
  object FDTPacientes: TFDTable
    Active = True
    IndexFieldNames = 'id_cidade;id_convenio;id_paciente;id_responsavel'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.pacientes'
    Left = 400
    Top = 56
    object FDTPacientesid_paciente: TFDAutoIncField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      ReadOnly = False
    end
    object FDTPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 150
    end
    object FDTPacientescpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '000.000.000-00'
      FixedChar = True
      Size = 11
    end
    object FDTPacientesdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      Required = True
      EditMask = '00/00/0000;1;_'
    end
    object FDTPacientessexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 30
    end
    object FDTPacientestelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)00000-0000;1;_'
    end
    object FDTPacientesemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 120
    end
    object FDTPacienteslogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 150
    end
    object FDTPacientesnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 15
    end
    object FDTPacientesbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 80
    end
    object FDTPacientescep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000-000'
      FixedChar = True
      Size = 8
    end
    object FDTPacientesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
      Visible = False
    end
    object FDTPacientesid_responsavel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
      Visible = False
    end
    object FDTPacientesid_convenio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_convenio'
      Origin = 'id_convenio'
      Visible = False
    end
    object FDTPacientesnumero_prontuario: TStringField
      FieldName = 'numero_prontuario'
      Origin = 'numero_prontuario'
      Required = True
    end
    object FDTPacientesdata_cadastro: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      EditMask = '00/00/0000;1;_'
    end
    object FDTPacientesstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTPacientesCidade_Paciente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cidade_Paciente'
      LookupDataSet = FDTCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome'
      KeyFields = 'id_cidade'
      Lookup = True
    end
    object FDTPacientesResponsavel_Paciente: TStringField
      FieldKind = fkLookup
      FieldName = 'Responsavel_Paciente'
      LookupDataSet = FDTResponsaveis
      LookupKeyFields = 'id_responsavel'
      LookupResultField = 'nome'
      KeyFields = 'id_responsavel'
      Lookup = True
    end
    object FDTPacientesConvenio_Paciente: TStringField
      FieldKind = fkLookup
      FieldName = 'Convenio_Paciente'
      LookupDataSet = FDTConvenios
      LookupKeyFields = 'id_convenio'
      LookupResultField = 'nome'
      KeyFields = 'id_convenio'
      Lookup = True
    end
  end
  object DSPacientes: TDataSource
    DataSet = FDTPacientes
    Left = 536
    Top = 56
  end
  object FDTQuartos: TFDTable
    IndexFieldNames = 'id_quarto;id_setor'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.quartos'
    Left = 400
    Top = 136
    object FDTQuartosid_quarto: TFDAutoIncField
      FieldName = 'id_quarto'
      Origin = 'id_quarto'
      ReadOnly = False
    end
    object FDTQuartosid_setor: TIntegerField
      FieldName = 'id_setor'
      Origin = 'id_setor'
      Required = True
      Visible = False
    end
    object FDTQuartosnumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object FDTQuartosandar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'andar'
      Origin = 'andar'
    end
    object FDTQuartostipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 40
    end
    object FDTQuartosstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTQuartosQuarto_Setores: TStringField
      FieldKind = fkLookup
      FieldName = 'Quarto_Setores'
      LookupDataSet = FDTSetores
      LookupKeyFields = 'id_setor'
      LookupResultField = 'nome'
      KeyFields = 'id_setor'
      Lookup = True
    end
  end
  object DSQuartos: TDataSource
    DataSet = FDTQuartos
    Left = 536
    Top = 136
  end
  object FDTResponsaveis: TFDTable
    Active = True
    IndexFieldNames = 'id_cidade;id_responsavel'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'responsaveis'
    Left = 400
    Top = 216
    object FDTResponsaveisid_responsavel: TFDAutoIncField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
      ReadOnly = False
    end
    object FDTResponsaveisnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 150
    end
    object FDTResponsaveiscpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      FixedChar = True
      Size = 11
    end
    object FDTResponsaveisdata_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      EditMask = '00/00/0000'
    end
    object FDTResponsaveistelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      EditMask = '(00)00000-0000;1;_'
    end
    object FDTResponsaveisemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 120
    end
    object FDTResponsaveislogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 150
    end
    object FDTResponsaveisnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 15
    end
    object FDTResponsaveisbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 80
    end
    object FDTResponsaveisid_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Visible = False
    end
    object FDTResponsaveisResponsaveis_Cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'Responsaveis_Cidades'
      LookupDataSet = FDTCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome'
      KeyFields = 'id_cidade'
      Lookup = True
    end
  end
  object DSResponsaveis: TDataSource
    DataSet = FDTResponsaveis
    Left = 536
    Top = 224
  end
  object FDTSetores: TFDTable
    Active = True
    IndexFieldNames = 'id_clinica;id_hospital;id_setor'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.setores'
    Left = 400
    Top = 304
    object FDTSetoresid_setor: TFDAutoIncField
      FieldName = 'id_setor'
      Origin = 'id_setor'
      ReadOnly = False
    end
    object FDTSetoresid_hospital: TIntegerField
      FieldName = 'id_hospital'
      Origin = 'id_hospital'
      Required = True
      Visible = False
    end
    object FDTSetoresid_clinica: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_clinica'
      Origin = 'id_clinica'
      Visible = False
    end
    object FDTSetoresnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object FDTSetoresdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object FDTSetoresstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
    end
    object FDTSetoresSetores_Hospitais: TStringField
      FieldKind = fkLookup
      FieldName = 'Setores_Hospitais'
      LookupDataSet = FDTHospitais
      LookupKeyFields = 'id_hospital'
      LookupResultField = 'nome'
      KeyFields = 'id_hospital'
      Lookup = True
    end
    object FDTSetoresSetores_Clinicas: TStringField
      FieldKind = fkLookup
      FieldName = 'Setores_Clinicas'
      LookupDataSet = FDTClinicas
      LookupKeyFields = 'id_clinica'
      LookupResultField = 'nome'
      KeyFields = 'id_clinica'
      Lookup = True
    end
  end
  object DSSetores: TDataSource
    DataSet = FDTSetores
    Left = 536
    Top = 304
  end
  object FDTTransferencias: TFDTable
    IndexFieldNames = 
      'id_internacao;id_transferencia;id_quarto_destino;id_quarto_orige' +
      'm'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'transferencias'
    Left = 400
    Top = 384
    object FDTTransferenciasid_transferencia: TFDAutoIncField
      FieldName = 'id_transferencia'
      Origin = 'id_transferencia'
      ReadOnly = False
    end
    object FDTTransferenciasid_internacao: TIntegerField
      FieldName = 'id_internacao'
      Origin = 'id_internacao'
      Required = True
    end
    object FDTTransferenciasdata_hora: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_hora'
      Origin = 'data_hora'
      EditMask = '00/00/0000 00:00;1;_'
    end
    object FDTTransferenciasmotivo: TStringField
      FieldName = 'motivo'
      Origin = 'motivo'
      Required = True
      Size = 255
    end
    object FDTTransferenciasobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
    object FDTTransferenciasid_quarto_origem: TIntegerField
      FieldName = 'id_quarto_origem'
      Origin = 'id_quarto_origem'
      Required = True
    end
    object FDTTransferenciasid_quarto_destino: TIntegerField
      FieldName = 'id_quarto_destino'
      Origin = 'id_quarto_destino'
      Required = True
    end
    object FDTTransferenciastranferencia_QuartoDeorigem: TIntegerField
      FieldKind = fkLookup
      FieldName = 'tranferencia_QuartoDeorigem'
      LookupDataSet = FDTQuartos
      LookupKeyFields = 'id_quarto'
      LookupResultField = 'numero'
      KeyFields = 'id_quarto_origem'
      Lookup = True
    end
    object FDTTransferenciasTransferência_QuartoDestino: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Transfer'#234'ncia_QuartoDestino'
      LookupDataSet = FDTQuartos
      LookupKeyFields = 'id_quarto'
      LookupResultField = 'numero'
      KeyFields = 'id_quarto_destino'
      Lookup = True
    end
    object FDTTransferenciasTransferencia_Internacao: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Transferencia_Internacao'
      LookupDataSet = FDTInternacoes
      LookupKeyFields = 'id_internacao'
      LookupResultField = 'id_internacao'
      KeyFields = 'id_internacao'
      Lookup = True
    end
  end
  object DSTransferencias: TDataSource
    DataSet = FDTTransferencias
    Left = 536
    Top = 384
  end
  object DSUsuarios: TDataSource
    DataSet = FDTUsuarios
    Left = 536
    Top = 472
  end
  object FDTUsuarios: TFDTable
    IndexFieldNames = 'email'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'gestao_hospitalar.usuarios'
    Left = 400
    Top = 464
    object FDTUsuariosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object FDTUsuariosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 150
    end
    object FDTUsuariossenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 255
    end
    object FDTUsuariosocupacao: TStringField
      FieldName = 'ocupacao'
      Origin = 'ocupacao'
      Required = True
      Size = 50
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 640
    Top = 64
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 784
    Top = 320
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    Left = 792
    Top = 328
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    Left = 800
    Top = 336
  end
  object FDQuery5: TFDQuery
    Connection = FDConnection1
    Left = 808
    Top = 344
  end
  object FDQuery6: TFDQuery
    Connection = FDConnection1
    Left = 816
    Top = 352
  end
  object FDQuery7: TFDQuery
    Connection = FDConnection1
    Left = 824
    Top = 360
  end
  object FDQuery8: TFDQuery
    Connection = FDConnection1
    Left = 832
    Top = 368
  end
  object FDQuery9: TFDQuery
    Connection = FDConnection1
    Left = 840
    Top = 376
  end
  object FDQuery10: TFDQuery
    Connection = FDConnection1
    Left = 848
    Top = 384
  end
  object FDQuery11: TFDQuery
    Connection = FDConnection1
    Left = 856
    Top = 392
  end
  object FDQuery12: TFDQuery
    Connection = FDConnection1
    Left = 864
    Top = 400
  end
  object FDQuery13: TFDQuery
    Connection = FDConnection1
    Left = 872
    Top = 408
  end
  object FDQuery14: TFDQuery
    Connection = FDConnection1
    Left = 880
    Top = 416
  end
  object FDQuery15: TFDQuery
    Connection = FDConnection1
    Left = 752
    Top = 432
  end
  object FDQuery16: TFDQuery
    Connection = FDConnection1
    Left = 768
    Top = 504
  end
end
