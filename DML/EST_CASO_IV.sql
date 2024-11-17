#comando de INSERT
-- Produtos
INSERT INTO Produtos (codigo, nome, preco, quantidade_estoque) VALUES (101, 'Arroz', 20.50, 100);
INSERT INTO Produtos (codigo, nome, preco, quantidade_estoque) VALUES (102, 'Feijão', 12.80, 200);
INSERT INTO Produtos (codigo, nome, preco, quantidade_estoque) VALUES (103, 'Açúcar', 5.00, 150);
INSERT INTO Produtos (codigo, nome, preco, quantidade_estoque) VALUES (104, 'Óleo de Soja', 7.90, 300);
INSERT INTO Produtos (codigo, nome, preco, quantidade_estoque) VALUES (105, 'Macarrão', 4.50, 250);

-- Clientes
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('12345678901', 'João Silva', '11999999999', 'Rua Compras, 123');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('98765432101', 'Maria Oliveira', '11988888888', 'Av. Mercado, 456');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('34567890123', 'Carlos Souza', '11977777777', 'Rua Economia, 789');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('56789012345', 'Ana Santos', '11966666666', 'Av. Descontos, 101');
INSERT INTO Clientes (cpf, nome, telefone, endereco) VALUES ('67890123456', 'Paula Costa', '11955555555', 'Rua Super, 202');

-- Vendas
INSERT INTO Vendas (codigo, cliente_cpf, data, valor_total) VALUES (1, '12345678901', '2024-11-15', 150.00);
INSERT INTO Vendas (codigo, cliente_cpf, data, valor_total) VALUES (2, '98765432101', '2024-11-16', 200.00);
INSERT INTO Vendas (codigo, cliente_cpf, data, valor_total) VALUES (3, '34567890123', '2024-11-17', 300.00);
INSERT INTO Vendas (codigo, cliente_cpf, data, valor_total) VALUES (4, '56789012345', '2024-11-18', 250.00);
INSERT INTO Vendas (codigo, cliente_cpf, data, valor_total) VALUES (5, '67890123456', '2024-11-19', 100.00);

#comando de UPDATE
-- Produtos
UPDATE Produtos SET preco = 18.00 WHERE codigo = 101;
UPDATE Produtos SET quantidade_estoque = 180 WHERE codigo = 102;

-- Clientes
UPDATE Clientes SET telefone = '11944444444' WHERE cpf = '56789012345';
UPDATE Clientes SET endereco = 'Rua Nova Economia, 707' WHERE cpf = '67890123456';

-- Vendas
UPDATE Vendas SET valor_total = 180.00 WHERE codigo = 1;
UPDATE Vendas SET data = '2024-11-20' WHERE codigo = 5;

#comando de DELETE
-- Produtos
DELETE FROM Produtos WHERE codigo = 105;

-- Clientes
DELETE FROM Clientes WHERE cpf = '34567890123';

-- Vendas
DELETE FROM Vendas WHERE codigo = 3;

