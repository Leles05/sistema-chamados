-- =========================
-- TIPOS (ENUM)
-- =========================

CREATE TYPE tipo_status_enum AS ENUM (
    'EM_ANALISE',
    'RESOLVIDO',
    'NAO_RESOLVIDO'
);

CREATE TYPE tipo_prioridade_enum AS ENUM (
    'NORMAL',
    'URGENTE'
);

CREATE TYPE tipo_atendimento_enum AS ENUM (
    'CHAT',
    'LIGACAO',
    'ACESSO_REMOTO'
);

-- =========================
-- TABELA: CLIENTE
-- =========================

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    telefone VARCHAR(16) UNIQUE NOT NULL
);

-- =========================
-- TABELA: SUPORTE
-- =========================

CREATE TABLE suporte (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    telefone VARCHAR(16) NOT NULL
);

-- =========================
-- TABELA: CHAMADO
-- =========================

CREATE TABLE chamado (
    id_chamado SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    prioridade tipo_prioridade_enum NOT NULL,
    status tipo_status_enum NOT NULL,
    data_abertura TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- =========================
-- TABELA: ATENDIMENTO
-- =========================

CREATE TABLE atendimento (
    id_atendimento SERIAL PRIMARY KEY,
    id_chamado INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_inicio TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_fim TIMESTAMP,

    FOREIGN KEY (id_chamado) REFERENCES chamado(id_chamado),
    FOREIGN KEY (id_funcionario) REFERENCES suporte(id_funcionario)
);

-- =========================
-- TABELA: INTERACAO
-- =========================

CREATE TABLE interacao (
    id_interacao SERIAL PRIMARY KEY,
    id_atendimento INT NOT NULL,
    tipo_atendimento tipo_atendimento_enum NOT NULL,
    descricao TEXT NOT NULL,
    data_interacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_atendimento) REFERENCES atendimento(id_atendimento)
);

-- =========================
-- REGRA DE NEGÓCIO (IMPORTANTE)
-- Apenas 1 atendimento ativo por chamado
-- =========================
