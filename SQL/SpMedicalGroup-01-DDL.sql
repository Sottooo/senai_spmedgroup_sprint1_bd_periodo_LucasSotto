CREATE DATABASE SpMedicalGroup_tarde

USE SpMedicalGroup_tarde

CREATE TABLE Clinica (
IdClinica     INT PRIMARY KEY IDENTITY,
RazaoSocial  VARCHAR(344),
Endereco      VARCHAR(344),
Numero        INT,
CNPJ          CHAR(20)
);

CREATE TABLE Medico (
IdMedico      INT PRIMARY KEY IDENTITY,
NomeMedico    VARCHAR(344),
CRM           VARCHAR(344),
EMAIL         VARCHAR(344),
IdClinica     INT FOREIGN KEY REFERENCES Clinica (IdClinica),
IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
IdTipoUsuario  INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Consulta (
IdConsulta INT PRIMARY KEY IDENTITY,
DataConsulta  DATETIME2,
Situacao      VARCHAR(344),
IdMedico      INT FOREIGN KEY REFERENCES Medico (IdMedico),
IdUsuario     INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Usuario (
IdUsuario     INT PRIMARY KEY IDENTITY,
Nome          VARCHAR (344),
Email         VARCHAR (344),
Senha         VARCHAR (344),
DataNascimento DATETIME2,
Telefone      VARCHAR(344),
RG            CHAR(20),
CPF           CHAR(20),
Endereco      VARCHAR(344),
Numero        INT,
IdTipoUsuario  INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE TipoUsuario (
IdTipoUsuario  INT PRIMARY KEY IDENTITY,
TipoUsuario    VARCHAR(344)
);

CREATE TABLE Especialidade (
IdEspecialidade  INT PRIMARY KEY IDENTITY,
Especialidade    VARCHAR(344)
);

ALTER TABLE Medico ADD
Senha VARCHAR(344)
