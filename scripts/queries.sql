SELECT * FROM Categoria;

SELECT * FROM Fornecedor;

SELECT * FROM Autor;

SELECT * FROM Cliente;

SELECT * FROM Funcionario;

SELECT * FROM Promocao;

SELECT * FROM Livro;

SELECT * FROM Livro_Autor;

SELECT * FROM Venda;

SELECT * FROM Item_Venda;

SELECT * FROM Pagamento;

SELECT * FROM Livro_Promocao;


SELECT * FROM Categoria
WHERE id_categoria = 1;

SELECT * FROM Fornecedor
WHERE nome_fornecedor LIKE '%Editora%';

SELECT * FROM Autor
WHERE nome_autor LIKE 'J%';

SELECT * FROM Cliente
WHERE nome LIKE 'A%';

SELECT * FROM Funcionario
WHERE cargo = 'Vendedora';

SELECT * FROM Promocao
WHERE desconto_percentual >= 15;

SELECT * FROM Livro
WHERE preco > 50;

SELECT * FROM Livro_Autor
WHERE id_autor = 2;

SELECT * FROM Venda
WHERE valor_total >= 100;

SELECT * FROM Item_Venda
WHERE quantidade >= 2;

SELECT * FROM Pagamento
WHERE forma_pagamento = 'PIX';

SELECT * FROM Livro_Promocao
WHERE id_promocao = 3;


SELECT * FROM Categoria
ORDER BY nome_categoria ASC;

SELECT * FROM Fornecedor
ORDER BY nome_fornecedor ASC;

SELECT * FROM Autor
ORDER BY nome_autor ASC;

SELECT * FROM Cliente
ORDER BY nome ASC;

SELECT * FROM Funcionario
ORDER BY nome ASC;

SELECT * FROM Promocao
ORDER BY desconto_percentual DESC;

SELECT * FROM Livro
ORDER BY preco DESC;

SELECT * FROM Livro_Autor
ORDER BY id_livro ASC;

SELECT * FROM Venda
ORDER BY valor_total DESC;

SELECT * FROM Item_Venda
ORDER BY quantidade DESC;

SELECT * FROM Pagamento
ORDER BY valor_pago DESC;

SELECT * FROM Livro_Promocao
ORDER BY id_promocao ASC;


SELECT
    l.titulo,
    c.nome_categoria,
    f.nome_fornecedor,
    l.preco
FROM Livro l
JOIN Categoria c
    ON l.id_categoria = c.id_categoria
JOIN Fornecedor f
    ON l.id_fornecedor = f.id_fornecedor;
	
	SELECT
    v.id_venda,
    c.nome AS cliente,
    f.nome AS funcionario,
    l.titulo,
    iv.quantidade
FROM Venda v
JOIN Cliente c
    ON v.id_cliente = c.id_cliente
JOIN Funcionario f
    ON v.id_funcionario = f.id_funcionario
JOIN Item_Venda iv
    ON v.id_venda = iv.id_venda
JOIN Livro l
    ON iv.id_livro = l.id_livro;
	
	
	SELECT
    c.nome_categoria,
    COUNT(l.id_livro) AS quantidade_livros
FROM Categoria c
LEFT JOIN Livro l
    ON c.id_categoria = l.id_categoria
GROUP BY c.id_categoria;

SELECT
    v.id_venda,
    SUM(iv.quantidade * iv.preco_unitario)
    AS total_calculado
FROM Venda v
JOIN Item_Venda iv
    ON v.id_venda = iv.id_venda
GROUP BY v.id_venda;


	