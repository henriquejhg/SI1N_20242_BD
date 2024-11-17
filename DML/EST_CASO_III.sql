#comandos de INSERT
-- Pacientes
INSERT INTO Pacientes (nome, cpf, data_nascimento, endereco) VALUES ('João Almeida', '12345678901', '1985-07-15', 'Rua Saúde, 101');
INSERT INTO Pacientes (nome, cpf, data_nascimento, endereco) VALUES ('Maria Santos', '98765432101', '1990-03-22', 'Av. Bem-Estar, 203');
INSERT INTO Pacientes (nome, cpf, data_nascimento, endereco) VALUES ('Carlos Pereira', '34567890123', '1975-01-10', 'Rua Esperança, 405');
INSERT INTO Pacientes (nome, cpf, data_nascimento, endereco) VALUES ('Ana Oliveira', '56789012345', '1988-11-08', 'Av. Saúde Plena, 707');
INSERT INTO Pacientes (nome, cpf, data_nascimento, endereco) VALUES ('Paula Costa', '67890123456', '2000-06-14', 'Rua Vida, 909');

-- Médicos
INSERT INTO Medicos (nome, crm, especialidade, telefone) VALUES ('Dr. João Cardoso', '12345-SP', 'Cardiologia', '11999999999');
INSERT INTO Medicos (nome, crm, especialidade, telefone) VALUES ('Dra. Mariana Costa', '98765-RJ', 'Pediatria', '21988888888');
INSERT INTO Medicos (nome, crm, especialidade, telefone) VALUES ('Dr. Carlos Silva', '54321-MG', 'Ortopedia', '31977777777');
INSERT INTO Medicos (nome, crm, especialidade, telefone) VALUES ('Dra. Ana Lopes', '67890-PR', 'Ginecologia', '41966666666');
INSERT INTO Medicos (nome, crm, especialidade, telefone) VALUES ('Dr. Pedro Souza', '11223-SP', 'Dermatologia', '51955555555');

-- Consultas
INSERT INTO Consultas (codigo, data_horario, paciente_cpf, medico_crm, status) VALUES ('C001', '2024-11-20 08:00:00', '12345678901', '12345-SP', 'Agendada');
INSERT INTO Consultas (codigo, data_horario, paciente_cpf, medico_crm, status) VALUES ('C002', '2024-11-21 10:00:00', '98765432101', '98765-RJ', 'Agendada');
INSERT INTO Consultas (codigo, data_horario, paciente_cpf, medico_crm, status) VALUES ('C003', '2024-11-22 14:00:00', '34567890123', '54321-MG', 'Agendada');
INSERT INTO Consultas (codigo, data_horario, paciente_cpf, medico_crm, status) VALUES ('C004', '2024-11-23 16:00:00', '56789012345', '67890-PR', 'Agendada');
INSERT INTO Consultas (codigo, data_horario, paciente_cpf, medico_crm, status) VALUES ('C005', '2024-11-24 09:00:00', '67890123456', '11223-SP', 'Agendada');

-- Exames
INSERT INTO Exames (codigo, tipo, paciente_cpf, data_realizacao, resultado) VALUES ('E001', 'Raio-X', '12345678901', '2024-11-18', 'Normal');
INSERT INTO Exames (codigo, tipo, paciente_cpf, data_realizacao, resultado) VALUES ('E002', 'Hemograma', '98765432101', '2024-11-17', 'Alterado');
INSERT INTO Exames (codigo, tipo, paciente_cpf, data_realizacao, resultado) VALUES ('E003', 'Ressonância Magnética', '34567890123', '2024-11-15', 'Normal');
INSERT INTO Exames (codigo, tipo, paciente_cpf, data_realizacao, resultado) VALUES ('E004', 'Ultrassonografia', '56789012345', '2024-11-16', 'Alterado');
INSERT INTO Exames (codigo, tipo, paciente_cpf, data_realizacao, resultado) VALUES ('E005', 'Tomografia', '67890123456', '2024-11-14', 'Normal');

#comandos de UPDATE
-- Pacientes
UPDATE Pacientes SET endereco = 'Rua Nova Esperança, 303' WHERE cpf = '12345678901';
UPDATE Pacientes SET data_nascimento = '1995-05-10' WHERE cpf = '98765432101';

-- Médicos
UPDATE Medicos SET especialidade = 'Neurologia' WHERE crm = '54321-MG';
UPDATE Medicos SET telefone = '31988888888' WHERE crm = '67890-PR';

-- Consultas
UPDATE Consultas SET status = 'Concluída' WHERE codigo = 'C003';
UPDATE Consultas SET data_horario = '2024-11-21 09:00:00' WHERE codigo = 'C002';

-- Exames
UPDATE Exames SET resultado = 'Alterado' WHERE codigo = 'E001';
UPDATE Exames SET data_realizacao = '2024-11-20' WHERE codigo = 'E005';

#comandos de DELETE
-- Pacientes
DELETE FROM Pacientes WHERE cpf = '34567890123';

-- Médicos
DELETE FROM Medicos WHERE crm = '11223-SP';

-- Consultas
DELETE FROM Consultas WHERE codigo = 'C004';

-- Exames
DELETE FROM Exames WHERE codigo = 'E002';


