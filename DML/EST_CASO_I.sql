#comando de INSERT
-- Tabela: Fornecedores
INSERT INTO Fornecedores (codigo_fornecedor, nome_empresa, endereco, pais, pessoa_contato, telefone) 
VALUES 
(1, 'Fornecedor A', 'Rua X, 123', 'Brasil', 'João Silva', '(11) 98765-4321'),
(2, 'Fornecedor B', 'Av. Y, 456', 'EUA', 'Mary Johnson', '+1 555-1234'),
(3, 'Fornecedor C', 'Rua Z, 789', 'China', 'Li Wei', '+86 1234-5678'),
(4, 'Fornecedor D', 'Rua W, 321', 'Alemanha', 'Hans Müller', '+49 2345-6789'),
(5, 'Fornecedor E', 'Rua T, 654', 'Brasil', 'Pedro Santos', '(21) 99999-8888');

-- Tabela: Produtos
INSERT INTO Produtos (codigo_produto, nome_produto, descricao, especificacoes_tecnicas, unidade_medida, preco_unitario) 
VALUES 
(101, 'Produto 1', 'Descrição do Produto 1', 'Especificação X', 'Unidade', 50.00),
(102, 'Produto 2', 'Descrição do Produto 2', 'Especificação Y', 'Quilos', 100.00),
(103, 'Produto 3', 'Descrição do Produto 3', 'Especificação Z', 'Litros', 75.00),
(104, 'Produto 4', 'Descrição do Produto 4', 'Especificação W', 'Unidade', 150.00),
(105, 'Produto 5', 'Descrição do Produto 5', 'Especificação V', 'Unidade', 200.00);

-- Tabela: Pedidos de Compra
INSERT INTO Pedidos_Compra (numero_pedido, codigo_fornecedor, data_pedido, data_entrega_esperada, status_pedido)
VALUES 
(1001, 1, '2024-11-01', '2024-11-10', 'Em Processamento'),
(1002, 2, '2024-11-02', '2024-11-15', 'Enviado'),
(1003, 3, '2024-11-05', '2024-11-20', 'Cancelado'),
(1004, 1, '2024-11-06', '2024-11-18', 'Recebido'),
(1005, 4, '2024-11-10', '2024-11-25', 'Recebido');

-- Tabela: Recebimento de Materiais
INSERT INTO Recebimento_Materiais (numero_recebimento, numero_pedido, data_recebimento, condicao_materiais)
VALUES 
(1, 1004, '2024-11-18', 'Aceito'),
(2, 1005, '2024-11-25', 'Aceito'),
(3, 1002, '2024-11-16', 'Rejeitado'),
(4, 1003, '2024-11-22', 'Rejeitado'),
(5, 1001, '2024-11-11', 'Aceito');

-- Tabela: Filiais
INSERT INTO Filiais (codigo_filial, nome, endereco, capacidade_armazenamento)
VALUES 
(1, 'Filial A', 'Rua Central, 123', 5000),
(2, 'Filial B', 'Av. Secundária, 456', 7000),
(3, 'Filial C', 'Rua Lateral, 789', 3000),
(4, 'Filial D', 'Av. Norte, 321', 8000),
(5, 'Filial E', 'Rua Sul, 654', 4000);

#comando de UPDATE
-- Atualizar telefone de um fornecedor
UPDATE Fornecedores
SET telefone = '(31) 98765-0000'
WHERE codigo_fornecedor = 1;

-- Atualizar status de um pedido
UPDATE Pedidos_Compra
SET status_pedido = 'Recebido'
WHERE numero_pedido = 1002;

#comando de DELETE
-- Remover um fornecedor
DELETE FROM Fornecedores
WHERE codigo_fornecedor = 5;

-- Remover um pedido de compra
DELETE FROM Pedidos_Compra
WHERE numero_pedido = 1003;
