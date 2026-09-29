INSERT INTO Categoria VALUES
(1, 'Romance'),
(2, 'Fantasia'),
(3, 'Tecnologia'),
(4, 'Literatura Brasileira'),
(5, 'Ficção Científica'),
(6, 'Didáticos');

INSERT INTO Fornecedor VALUES
(1, 'Editora Aurora', '11.111.111/0001-11', '(88) 3000-1001'),
(2, 'Grupo Saber', '22.222.222/0001-22', '(85) 3000-1002'),
(3, 'Editora Horizonte', '33.333.333/0001-33', '(11) 3000-1003'),
(4, 'Distribuidora Letras', '44.444.444/0001-44', '(21) 3000-1004');

INSERT INTO Autor VALUES
(1, 'Machado de Assis'),
(2, 'J. K. Rowling'),
(3, 'George Orwell'),
(4, 'Clarice Lispector'),
(5, 'Robert C. Martin'),
(6, 'Neil Gaiman'),
(7, 'Isaac Asimov'),
(8, 'Yuval Noah Harari');

INSERT INTO Cliente VALUES
(1, 'Ana Beatriz Lima', '111.111.111-11', 'ana@email.com', '(88) 99999-1001'),
(2, 'Bruno Santos', '222.222.222-22', 'bruno@email.com', '(88) 99999-1002'),
(3, 'Carla Oliveira', '333.333.333-33', 'carla@email.com', '(88) 99999-1003'),
(4, 'Daniel Ferreira', '444.444.444-44', 'daniel@email.com', '(88) 99999-1004'),
(5, 'Elisa Costa', '555.555.555-55', 'elisa@email.com', '(88) 99999-1005');

INSERT INTO Funcionario VALUES
(1, 'Mariana Alves', 'Vendedora', 'F001'),
(2, 'Rafael Souza', 'Gerente', 'F002'),
(3, 'Juliana Martins', 'Vendedora', 'F003');

INSERT INTO Promocao VALUES
(1, 'Volta às Aulas', 15.0, '2026-08-01', '2026-09-30'),
(2, 'Semana da Literatura', 20.0, '2026-09-01', '2026-10-15'),
(3, 'Festival de Fantasia', 10.0, '2026-09-10', '2026-10-10');

INSERT INTO Livro VALUES
(1, 'Dom Casmurro', '9780000000001', 39.90, 20, 4, 1),
(2, 'Harry Potter e a Pedra Filosofal', '9780000000002', 49.90, 15, 2, 1),
(3, '1984', '9780000000003', 42.90, 12, 5, 3),
(4, 'A Hora da Estrela', '9780000000004', 34.90, 18, 4, 3),
(5, 'Código Limpo', '9780000000005', 89.90, 10, 3, 2),
(6, 'Coraline', '9780000000006', 44.90, 14, 2, 4),
(7, 'Eu, Robô', '9780000000007', 55.90, 9, 5, 4),
(8, 'Sapiens', '9780000000008', 79.90, 11, 6, 2);

INSERT INTO Livro_Autor VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(6, 2);

INSERT INTO Venda VALUES
(1, '2026-09-10', 89.80, 1, 1),
(2, '2026-09-12', 92.80, 2, 3),
(3, '2026-09-15', 89.90, 3, 1),
(4, '2026-09-18', 124.80, 4, 2),
(5, '2026-09-20', 159.80, 5, 3);

INSERT INTO Item_Venda VALUES
(1, 1, 39.90, 1, 1),
(2, 1, 49.90, 1, 2),
(3, 1, 42.90, 2, 3),
(4, 1, 49.90, 2, 2),
(5, 1, 89.90, 3, 5),
(6, 1, 79.90, 4, 8),
(7, 1, 44.90, 4, 6),
(8, 2, 39.90, 4, 1),
(9, 2, 79.90, 5, 8);

INSERT INTO Pagamento VALUES
(1, 'PIX', 89.80, '2026-09-10', 1),
(2, 'Cartão de crédito', 92.80, '2026-09-12', 2),
(3, 'PIX', 89.90, '2026-09-15', 3),
(4, 'Cartão de débito', 124.80, '2026-09-18', 4),
(5, 'PIX', 159.80, '2026-09-20', 5);

INSERT INTO Livro_Promocao VALUES
(1, 2),
(2, 3),
(4, 2),
(6, 3),
(8, 1);