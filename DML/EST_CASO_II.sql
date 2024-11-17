#comando de INSERT

-- Tabela: Passageiros
INSERT INTO Passageiros (cpf, nome, telefone, endereco) 
VALUES 
('12345678901', 'Carlos Silva', '(11) 99999-1234', 'Rua A, 123'),
('98765432100', 'Ana Maria', '(21) 98765-4321', 'Av. B, 456'),
('56789012345', 'José Santos', '(31) 91234-5678', 'Rua C, 789'),
('65432198700', 'Mariana Oliveira', '(41) 99876-5432', 'Av. D, 321'),
('78901234567', 'Pedro Lima', '(51) 99888-7766', 'Rua E, 654');

-- Tabela: Voos
INSERT INTO Voos (codigo_voo, origem, destino, horario_partida, horario_chegada)
VALUES 
(1, 'São Paulo', 'Rio de Janeiro', '2024-11-20 08:00', '2024-11-20 09:30'),
(2, 'Rio de Janeiro', 'Salvador', '2024-11-20 10:30', '2024-11-20 12:30'),
(3, 'Salvador', 'Brasília', '2024-11-20 14:00', '2024-11-20 15:30'),
(4, 'Brasília', 'Fortaleza', '2024-11-20 17:00', '2024-11-20 19:00'),
(5, 'Fortaleza', 'Recife', '2024-11-20 20:30', '2024-11-20 21:45');

-- Tabela: Aeroportos
INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES 
('GRU', 'Guarulhos', 'São Paulo', 'Brasil'),
('GIG', 'Galeão', 'Rio de Janeiro', 'Brasil'),
('SSA', 'Deputado Luís Eduardo Magalhães', 'Salvador', 'Brasil'),
('BSB', 'Presidente Juscelino Kubitschek', 'Brasília', 'Brasil'),
('REC', 'Guararapes', 'Recife', 'Brasil');

-- Tabela: Aeronaves
INSERT INTO Aeronaves (identificador, modelo, capacidade)
VALUES 
('PR-A001', 'Boeing 737', 180),
('PR-A002', 'Airbus A320', 190),
('PR-A003', 'Boeing 747', 300),
('PR-A004', 'Airbus A330', 280),
('PR-A005', 'Embraer E195', 140);

-- Tabela: Reservas
INSERT INTO Reservas (codigo_reserva, cpf_passageiro, codigo_voo)
VALUES 
(10001, '12345678901', 1),
(10002, '98765432100', 2),
(10003, '56789012345', 3),
(10004, '65432198700', 4),
(10005, '78901234567', 5);

#comando de UPDATE
-- Atualizar telefone do passageiro
UPDATE Passageiros
SET telefone = '(11) 91234-0000'
WHERE cpf = '12345678901';

-- Atualizar horário de partida de um voo
UPDATE Voos
SET horario_partida = '2024-11-20 09:00'
WHERE codigo_voo = 1;

#comando de DELETE
-- Remover um passageiro
DELETE FROM Passageiros
WHERE cpf = '98765432100';

-- Remover uma reserva
DELETE FROM Reservas
WHERE codigo_reserva = 10005;

