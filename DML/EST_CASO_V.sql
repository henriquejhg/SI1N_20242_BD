#comando de INSERT
-- Veículos
INSERT INTO Veiculos (placa, modelo, ano, status) VALUES ('ABC-1234', 'Honda Civic', 2022, 'Disponível');
INSERT INTO Veiculos (placa, modelo, ano, status) VALUES ('DEF-5678', 'Toyota Corolla', 2021, 'Disponível');
INSERT INTO Veiculos (placa, modelo, ano, status) VALUES ('GHI-9012', 'Chevrolet Onix', 2020, 'Alugado');
INSERT INTO Veiculos (placa, modelo, ano, status) VALUES ('JKL-3456', 'Ford Ka', 2019, 'Disponível');
INSERT INTO Veiculos (placa, modelo, ano, status) VALUES ('MNO-7890', 'Fiat Argo', 2023, 'Disponível');

-- Clientes
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('12345678901', 'João Silva', '11999999999', 'Rua Locadora, 123');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('98765432101', 'Maria Oliveira', '21988888888', 'Av. Automóveis, 456');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('34567890123', 'Carlos Souza', '31977777777', 'Rua Carros, 789');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('56789012345', 'Ana Santos', '41966666666', 'Av. Aluguéis, 101');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('67890123456', 'Paula Costa', '51955555555', 'Rua Viagens, 202');

-- Aluguéis
INSERT INTO Alugueis (codigo, veiculo_placa, cliente_cpf, data_inicio, data_fim) VALUES (1, 'ABC-1234', '12345678901', '2024-11-15', '2024-11-20');
INSERT INTO Alugueis (codigo, veiculo_placa, cliente_cpf, data_inicio, data_fim) VALUES (2, 'DEF-5678', '98765432101', '2024-11-16', '2024-11-21');
INSERT INTO Alugueis (codigo, veiculo_placa, cliente_cpf, data_inicio, data_fim) VALUES (3, 'GHI-9012', '34567890123', '2024-11-17', '2024-11-22');
INSERT INTO Alugueis (codigo, veiculo_placa, cliente_cpf, data_inicio, data_fim) VALUES (4, 'JKL-3456', '56789012345', '2024-11-18', '2024-11-23');
INSERT INTO Alugueis (codigo, veiculo_placa, cliente_cpf, data_inicio, data_fim) VALUES (5, 'MNO-7890', '67890123456', '2024-11-19', '2024-11-24');

#comando de UPDATE
-- Veículos
UPDATE Veiculos SET status = 'Alugado' WHERE placa = 'ABC-1234';
UPDATE Veiculos SET modelo = 'Honda City' WHERE placa = 'DEF-5678';

-- Clientes
UPDATE Clientes SET telefone = '11944444444' WHERE cpf = '56789012345';
UPDATE Clientes SET endereco = 'Av. Viagem Segura, 707' WHERE cpf = '67890123456';

-- Aluguéis
UPDATE Alugueis SET data_fim = '2024-11-25' WHERE codigo = 1;
UPDATE Alugueis SET veiculo_placa = 'MNO-7890' WHERE codigo = 5;

#comando de DELETE
-- Veículos
DELETE FROM Veiculos WHERE placa = 'JKL-3456';

-- Clientes
DELETE FROM Clientes WHERE cpf = '34567890123';

-- Aluguéis
DELETE FROM Alugueis WHERE codigo = 3;

