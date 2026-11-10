-- DROP DATABASE gestao_hospitalar;
-- =====================================================
-- BANCO DE DADOS: GESTAO HOSPITALAR
-- =====================================================
/* ALTER TABLE ocorrencias
DROP COLUMN conduta; */

CREATE DATABASE IF NOT EXISTS gestao_hospitalar;

USE gestao_hospitalar;

-- =====================================================
-- 1. CIDADES
-- =====================================================

CREATE TABLE cidades (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL,

    CONSTRAINT uq_cidade_uf UNIQUE (nome, uf)
);

-- =====================================================
-- 2. CONVENIOS
-- =====================================================

CREATE TABLE convenios (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cnpj CHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(120),
    status VARCHAR(20) NOT NULL
);

-- =====================================================
-- 3. HOSPITAIS
-- =====================================================

CREATE TABLE hospitais (
    id_hospital INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cnpj CHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(120),
    logradouro VARCHAR(150),
    numero VARCHAR(15),
    bairro VARCHAR(80),
    cep CHAR(8),
    id_cidade INT NOT NULL,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_hospitais_cidades
        FOREIGN KEY (id_cidade)
        REFERENCES cidades(id_cidade)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 4. RESPONSAVEIS
-- =====================================================

CREATE TABLE responsaveis (
    id_responsavel INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(120),
    logradouro VARCHAR(150),
    numero VARCHAR(15),
    bairro VARCHAR(80),
    id_cidade INT,

    CONSTRAINT fk_responsaveis_cidades
        FOREIGN KEY (id_cidade)
        REFERENCES cidades(id_cidade)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 5. MEDICOS
-- =====================================================

CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE,
    crm VARCHAR(20) NOT NULL,
    uf_crm CHAR(2) NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(120),
    id_cidade INT NOT NULL,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT uq_medico_crm_uf
        UNIQUE (crm, uf_crm),

    CONSTRAINT fk_medicos_cidades
        FOREIGN KEY (id_cidade)
        REFERENCES cidades(id_cidade)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 6. CLINICAS
-- =====================================================

CREATE TABLE clinicas (
    id_clinica INT AUTO_INCREMENT PRIMARY KEY,
    id_hospital INT NOT NULL,
    nome VARCHAR(120) NOT NULL,
    descricao VARCHAR(255),
    telefone VARCHAR(20),
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_clinicas_hospitais
        FOREIGN KEY (id_hospital)
        REFERENCES hospitais(id_hospital)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 7. SETORES
-- =====================================================

CREATE TABLE setores (
    id_setor INT AUTO_INCREMENT PRIMARY KEY,
    id_hospital INT NOT NULL,
    id_clinica INT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_setores_hospitais
        FOREIGN KEY (id_hospital)
        REFERENCES hospitais(id_hospital)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_setores_clinicas
        FOREIGN KEY (id_clinica)
        REFERENCES clinicas(id_clinica)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 8. QUARTOS
-- =====================================================

CREATE TABLE quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    id_setor INT NOT NULL,
    numero VARCHAR(20) NOT NULL,
    andar VARCHAR(20),
    tipo VARCHAR(40),
    status VARCHAR(20) NOT NULL,

    CONSTRAINT uq_quarto_setor
        UNIQUE (id_setor, numero),

    CONSTRAINT fk_quartos_setores
        FOREIGN KEY (id_setor)
        REFERENCES setores(id_setor)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 9. SALAS 
-- =====================================================

CREATE TABLE salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    id_setor INT NOT NULL,
    tipo VARCHAR(40) NOT NULL,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_aposentos_setor
        FOREIGN KEY (id_setor)
        REFERENCES setores(id_setor)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 10. PACIENTES
-- =====================================================

CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(30),
    telefone VARCHAR(20),
    email VARCHAR(120),
    logradouro VARCHAR(150),
    numero VARCHAR(15),
    bairro VARCHAR(80),
    cep CHAR(8),
    id_cidade INT NOT NULL,
    id_responsavel INT,
    id_convenio INT,
    numero_prontuario VARCHAR(20) NOT NULL UNIQUE,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_pacientes_cidades
        FOREIGN KEY (id_cidade)
        REFERENCES cidades(id_cidade)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_pacientes_responsaveis
        FOREIGN KEY (id_responsavel)
        REFERENCES responsaveis(id_responsavel)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_pacientes_convenios
        FOREIGN KEY (id_convenio)
        REFERENCES convenios(id_convenio)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 11. USUARIOS / LOGIN
-- =====================================================

CREATE TABLE usuarios (
    email VARCHAR(120) NOT NULL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    ocupacao VARCHAR(50) NOT NULL
);

INSERT INTO usuarios (email, nome, senha, ocupacao) VALUES ('root@gmail.com', 'root' , 'root','Administrador');

-- =====================================================
-- 12. ATENDIMENTOS
-- =====================================================

CREATE TABLE atendimentos (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_hospital INT NOT NULL,
    data_hora DATETIME NOT NULL,
    tipo_atendimento VARCHAR(50) NOT NULL,
    queixa_principal TEXT,
    diagnostico TEXT,
    observacoes TEXT,

    CONSTRAINT fk_atendimentos_pacientes
        FOREIGN KEY (id_paciente)
        REFERENCES pacientes(id_paciente)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_atendimentos_medicos
        FOREIGN KEY (id_medico)
        REFERENCES medicos(id_medico)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_atendimentos_hospitais
        FOREIGN KEY (id_hospital)
        REFERENCES hospitais(id_hospital)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 13. INTERNACOES
-- =====================================================

CREATE TABLE internacoes (
    id_internacao INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_convenio INT,
    id_quarto INT NOT NULL,
    data_entrada DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    motivo_internacao TEXT NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_alta DATETIME,
    motivo_alta VARCHAR(255),
    codigo_liberacao_hash VARCHAR(255),


    CONSTRAINT fk_internacoes_pacientes
        FOREIGN KEY (id_paciente)
        REFERENCES pacientes(id_paciente)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_internacoes_medicos
        FOREIGN KEY (id_medico)
        REFERENCES medicos(id_medico)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_internacoes_convenios
        FOREIGN KEY (id_convenio)
        REFERENCES convenios(id_convenio)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_internacoes_quarto
        FOREIGN KEY (id_quarto)
        REFERENCES quartos(id_quarto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 14. TRANSFERENCIAS
-- =====================================================

CREATE TABLE transferencias (
    id_transferencia INT AUTO_INCREMENT PRIMARY KEY,
    id_internacao INT NOT NULL,
    id_quarto_origem INT NOT NULL,
    id_quarto_destino INT NOT NULL,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    motivo VARCHAR(255) NOT NULL,
    observacoes TEXT,

    CONSTRAINT fk_transferencias_internacoes
        FOREIGN KEY (id_internacao)
        REFERENCES internacoes(id_internacao)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_transferencias_origem
        FOREIGN KEY (id_quarto_origem)
        REFERENCES quartos(id_quarto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_transferencias_destino
        FOREIGN KEY (id_quarto_destino)
        REFERENCES quartos(id_quarto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- 15. OCORRENCIAS / HISTORICO CLINICO
-- =====================================================

CREATE TABLE ocorrencias (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    id_internacao INT NOT NULL,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tipo VARCHAR(40) NOT NULL,
    descricao TEXT NOT NULL,
    conduta TEXT,
    data_criacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_ocorrencias_internacoes
        FOREIGN KEY (id_internacao)
        REFERENCES internacoes(id_internacao)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================================
-- FIM DA CRIACAO DAS 15 TABELAS
-- =====================================================

-- Conferir as tabelas criadas:
SHOW TABLES;
