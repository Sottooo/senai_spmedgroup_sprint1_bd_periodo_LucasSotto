USE SpMedicalGroup_tarde

SELECT * FROM Consulta
SELECT * FROM Clinica
SELECT * FROM Especialidade
SELECT * FROM Medico
SELECT * FROM TipoUsuario
SELECT * FROM Usuario

SELECT Consulta.DataConsulta, Consulta.Situacao, Medico.NomeMedico, Usuario.Nome FROM Consulta
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico
INNER JOIN Usuario ON Consulta.IdUsuario = Usuario.IdUsuario

SELECT Medico.NomeMedico, Medico.CRM, Medico.EMAIL, Medico.Senha, Clinica.RazaoSocial, Especialidade.Especialidade, TipoUsuario.TipoUsuario FROM Medico
INNER JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
INNER JOIN TipoUsuario ON Medico.IdTipoUsuario = TipoUsuario.IdTipoUsuario

SELECT Usuario.Nome, Usuario.Email, Usuario.Senha, Usuario.Senha, Usuario.DataNascimento, Usuario.Telefone, Usuario.RG, Usuario.CPF, Usuario.Endereco, Usuario.Numero, TipoUsuario.TipoUsuario FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario

SELECT CONVERT(VARCHAR(10), DataNascimento, 110) AS [MM/DD/YYYY]
FROM Usuario

SELECT COUNT(IdUsuario) FROM Usuario

CREATE PROCEDURE MedicoEspecialidade 
@ID INT
AS

SELECT Medico.NomeMedico, Especialidade.Especialidade  FROM Medico
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
WHERE Especialidade.IdEspecialidade = @ID

EXECUTE MedicoEspecialidade 9

DROP PROCEDURE IdadeUsuario
CREATE PROCEDURE IdadeUsuario 
@id INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) 
FROM Usuario
WHERE Usuario.IdUsuario = @id

EXECUTE IdadeUsuario  1