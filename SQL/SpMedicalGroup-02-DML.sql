USE SpMedicalGroup_tarde

INSERT INTO Clinica (RazaoSocial, Endereco, Numero, CNPJ)
VALUES              ('SpMedicalGroup', 'Avenida Alameda Barao de Limeira', 495, '24242424242424');
truncate table clinica
INSERT INTO TipoUsuario (TipoUsuario)
VALUES                  ('Adm'),
						('Paciente'),
						('Medico');

INSERT INTO Especialidade (Especialidade)
						  
VALUES                    ('Psiquiatra'),	
						  ('Cardiologista'),
						  ('Dermatologista'),
						  ('Pediatra'),
						  ('otorrinolaringologia'),
						  ('Urologista'),
						  ('Acunputura'),
						  ('Toc'),
						  ('Psicologia'),
						  ('Cirurgia Geral');

INSERT INTO Usuario       (Nome, DataNascimento, RG, CPF, Email, Senha, Endereco, Numero, Telefone, IdTipoUsuario)
VALUES                    ('Lucas Sotto', '22/01/2001', '212121212', '12345456789', 'lucas@Sotto.com', 'sotto321', 'alguma rua', '123', '212121212', 1),
						  ('Vinicius Takedi', '08/03/2013', '987654321', '343434343', 'Vinicius@Takedi.com',' tak3d1','rua jeferson', '202', '212121212', 1),
						  ('Gustavo Almeida',' 24/01/2008', '123498765', '5656565', 'Gustavo@Almeida.com', 'gust132','rua embiruçu', '604', '21212121', 2),
						  ('Gabriel Jesus',' 02/11/2012', '67891234', '7878787', 'Gabriel@Jesus.com', 'jesus345','rua Estados Unidos ', '1940', '212121212', 2);

INSERT INTO Medico       (NomeMedico, Email, Senha, CRM, IdEspecialidade, IdClinica, IdTipoUsuario)
VALUES                   ('Tiago', 'tiago@souza.com','souz432 ','12345', 2, 1, 3),
				 ('Ricardo Lemos', 'ricardo@ricardo.com','Ricardo123','4321', 5, 1, 3),
				 ('Helena Strada', 'helana@helena', 'helena123', '12354',  9 , 1, 3);
						

INSERT INTO Consulta     (DataConsulta, Situacao, IdMedico, IdUsuario)
VALUES                   ('11/02/2020 12:30', 'Confirmado', 1, 8),
						 ('14/02/2020 14:30', 'Nao Confirmado', 3, 9),
						 ('22/02/2020 15:30', 'Confirmado', 2 , 10);

SELECT * FROM Clinica
SELECT * FROM Consulta
SELECT * FROM Medico
SELECT * FROM Usuario
SELECT * FROM TipoUsuario
SELECT * FROM Especialidade
