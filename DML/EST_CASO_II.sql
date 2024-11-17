#comando de INSERT
-- Passageiros
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('João Silva', '12345678901', '11999999999', 'Rua A, 123');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Maria Oliveira', '98765432101', '21988888888', 'Av. B, 456');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Carlos Santos', '34567890123', '31977777777', 'Rua C, 789');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Ana Costa', '56789012345', '41966666666', 'Av. D, 321');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Paula Lima', '67890123456', '51955555555', 'Rua E, 654');

-- Voos
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('V001', 'São Paulo', 'Rio de Janeiro', '2024-11-18 08:00:00', '2024-11-18 09:30:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('V002', 'Rio de Janeiro', 'São Paulo', '2024-11-18 18:00:00', '2024-11-18 19:30:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('V003', 'São Paulo', 'Belo Horizonte', '2024-11-19 07:00:00', '2024-11-19 08:30:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('V004', 'Belo Horizonte', 'Brasília', '2024-11-19 09:00:00', '2024-11-19 10:30:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('V005', 'Brasília', 'São Paulo', '2024-11-20 14:00:00', '2024-11-20 15:30:00');

-- Aeroportos
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('GRU', 'Guarulhos', 'São Paulo', 'SP');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('SDU', 'Santos Dumont', 'Rio de Janeiro', 'RJ');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('CNF', 'Confins', 'Belo Horizonte', 'MG');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('BSB', 'Brasília', 'Brasília', 'DF');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('CGH', 'Congonhas', 'São Paulo', 'SP');

-- Aeronaves
INSERT INTO Aeronaves (identificador, modelo, capacidade) VALUES ('A001', 'Airbus A320', 180);
INSERT INTO Aeronaves (identificador, modelo, capacidade) VALUES ('A002', 'Boeing 737', 200);
INSERT INTO Aeronaves (identificador, modelo, capacidade) VALUES ('A003', 'Embraer E195', 130);
INSERT INTO Aeronaves (identificador, modelo, capacidade) VALUES ('A004', 'Airbus A321', 220);
INSERT INTO Aeronaves (identificador, modelo, capacidade) VALUES ('A005', 'Boeing 777', 300);

-- Reservas
INSERT INTO Reservas (codigo_reserva, codigo_voo, codigo_passageiro, status) VALUES ('R001', 'V001', '12345678901', 'Confirmada');
INSERT INTO Reservas (codigo_reserva, codigo_voo, codigo_passageiro, status) VALUES ('R002', 'V002', '98765432101', 'Confirmada');
INSERT INTO Reservas (codigo_reserva, codigo_voo, codigo_passageiro, status) VALUES ('R003', 'V003', '34567890123', 'Confirmada');
INSERT INTO Reservas (codigo_reserva, codigo_voo, codigo_passageiro, status) VALUES ('R004', 'V004', '56789012345', 'Confirmada');
INSERT INTO Reservas (codigo_reserva, codigo_voo, codigo_passageiro, status) VALUES ('R005', 'V005', '67890123456', 'Confirmada');


#comando de UPDATE
-- Atualizar telefone do passageiro
-- Passageiros
UPDATE Passageiros SET telefone = '11988888888' WHERE cpf = '12345678901';
UPDATE Passageiros SET endereco = 'Rua Nova, 999' WHERE cpf = '98765432101';

-- Voos
UPDATE Voos SET horario_partida = '2024-11-18 08:30:00' WHERE codigo = 'V001';
UPDATE Voos SET destino = 'Porto Alegre' WHERE codigo = 'V003';

-- Aeroportos
UPDATE Aeroportos SET cidade = 'Campinas' WHERE codigo = 'GRU';
UPDATE Aeroportos SET estado = 'ES' WHERE codigo = 'SDU';

-- Aeronaves
UPDATE Aeronaves SET modelo = 'Airbus A350' WHERE identificador = 'A001';
UPDATE Aeronaves SET capacidade = 240 WHERE identificador = 'A002';

-- Reservas
UPDATE Reservas SET status = 'Cancelada' WHERE codigo_reserva = 'R001';
UPDATE Reservas SET status = 'Em Espera' WHERE codigo_reserva = 'R005';

#comando de DELETE
-- Passageiros
DELETE FROM Passageiros WHERE cpf = '34567890123';

-- Voos
DELETE FROM Voos WHERE codigo = 'V004';

-- Aeroportos
DELETE FROM Aeroportos WHERE codigo = 'CNF';

-- Aeronaves
DELETE FROM Aeronaves WHERE identificador = 'A005';

-- Reservas
DELETE FROM Reservas WHERE codigo_reserva = 'R002';

