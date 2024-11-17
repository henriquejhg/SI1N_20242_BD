#comando de INSERT
INSERT INTO Autores (id, nome, nacionalidade) VALUES (1, 'Machado de Assis', 'Brasileiro');
INSERT INTO Autores (id, nome, nacionalidade) VALUES (2, 'J.K. Rowling', 'Britânica');
INSERT INTO Autores (id, nome, nacionalidade) VALUES (3, 'George Orwell', 'Britânico');
INSERT INTO Autores (id, nome, nacionalidade) VALUES (4, 'Gabriel García Márquez', 'Colombiano');
INSERT INTO Autores (id, nome, nacionalidade) VALUES (5, 'Jane Austen', 'Britânica');

INSERT INTO Livros (id, titulo, autor_id, genero, ano_publicacao) VALUES (1, 'Dom Casmurro', 1, 'Romance', 1899);
INSERT INTO Livros (id, titulo, autor_id, genero, ano_publicacao) VALUES (2, 'Harry Potter e a Pedra Filosofal', 2, 'Fantasia', 1997);
INSERT INTO Livros (id, titulo, autor_id, genero, ano_publicacao) VALUES (3, '1984', 3, 'Distopia', 1949);
INSERT INTO Livros (id, titulo, autor_id, genero, ano_publicacao) VALUES (4, 'Cem Anos de Solidão', 4, 'Realismo Mágico', 1967);
INSERT INTO Livros (id, titulo, autor_id, genero, ano_publicacao) VALUES (5, 'Orgulho e Preconceito', 5, 'Romance', 1813);

INSERT INTO Usuarios (id, nome, telefone, endereco) VALUES (1, 'Ana Silva', '11999999999', 'Rua Leitores, 123');
INSERT INTO Usuarios (id, nome, telefone, endereco) VALUES (2, 'Carlos Oliveira', '11988888888', 'Av. Livros, 456');
INSERT INTO Usuarios (id, nome, telefone, endereco) VALUES (3, 'Mariana Souza', '11977777777', 'Rua Biblioteca, 789');
INSERT INTO Usuarios (id, nome, telefone, endereco) VALUES (4, 'Paulo Costa', '11966666666', 'Av. Cultura, 101');
INSERT INTO Usuarios (id, nome, telefone, endereco) VALUES (5, 'Fernanda Lima', '11955555555', 'Rua Conhecimento, 202');

INSERT INTO Emprestimos (id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES (1, 1, 1, '2024-11-01', '2024-11-15');
INSERT INTO Emprestimos (id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES (2, 2, 2, '2024-11-02', '2024-11-16');
INSERT INTO Emprestimos (id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES (3, 3, 3, '2024-11-03', '2024-11-17');
INSERT INTO Emprestimos (id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES (4, 4, 4, '2024-11-04', '2024-11-18');
INSERT INTO Emprestimos (id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES (5, 5, 5, '2024-11-05', '2024-11-19');

#comando de UPDATE
UPDATE Autores SET nacionalidade = 'Brasileira' WHERE id = 1;
UPDATE Autores SET nome = 'Joanne Rowling' WHERE id = 2;

UPDATE Livros SET ano_publicacao = 2000 WHERE id = 2;
UPDATE Livros SET genero = 'Ficção Científica' WHERE id = 3;

UPDATE Usuarios SET telefone = '11944444444' WHERE id = 4;
UPDATE Usuarios SET endereco = 'Av. Leitura, 707' WHERE id = 5;

UPDATE Emprestimos SET data_devolucao = '2024-11-20' WHERE id = 3;
UPDATE Emprestimos SET livro_id = 4 WHERE id = 5;

#comando de DELETE
DELETE FROM Autores WHERE id = 5;

DELETE FROM Livros WHERE id = 5;

DELETE FROM Usuarios WHERE id = 5;

DELETE FROM Emprestimos WHERE id = 5;

