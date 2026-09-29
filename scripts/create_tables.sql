PRAGMA foreign_keys = ON;

CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY,
    nome_categoria TEXT NOT NULL UNIQUE
);

CREATE TABLE Fornecedor (
    id_fornecedor INTEGER PRIMARY KEY,
    nome_fornecedor TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    telefone TEXT
);

CREATE TABLE Autor (
    id_autor INTEGER PRIMARY KEY,
    nome_autor TEXT NOT NULL
);

CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    email TEXT UNIQUE,
    telefone TEXT
);

CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL,
    matricula TEXT NOT NULL UNIQUE
);

CREATE TABLE Promocao (
    id_promocao INTEGER PRIMARY KEY,
    nome_promocao TEXT NOT NULL,
    desconto_percentual REAL NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

CREATE TABLE Livro (
    id_livro INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    isbn TEXT NOT NULL UNIQUE,
    preco REAL NOT NULL,
    estoque INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    id_fornecedor INTEGER NOT NULL,

    FOREIGN KEY (id_categoria)
        REFERENCES Categoria(id_categoria),

    FOREIGN KEY (id_fornecedor)
        REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Livro_Autor (
    id_livro INTEGER NOT NULL,
    id_autor INTEGER NOT NULL,

    PRIMARY KEY (id_livro, id_autor),

    FOREIGN KEY (id_livro)
        REFERENCES Livro(id_livro),

    FOREIGN KEY (id_autor)
        REFERENCES Autor(id_autor)
);

CREATE TABLE Venda (
    id_venda INTEGER PRIMARY KEY,
    data_venda DATE NOT NULL,
    valor_total REAL NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES Cliente(id_cliente),

    FOREIGN KEY (id_funcionario)
        REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Item_Venda (
    id_item INTEGER PRIMARY KEY,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    id_venda INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,

    FOREIGN KEY (id_venda)
        REFERENCES Venda(id_venda),

    FOREIGN KEY (id_livro)
        REFERENCES Livro(id_livro)
);

CREATE TABLE Pagamento (
    id_pagamento INTEGER PRIMARY KEY,
    forma_pagamento TEXT NOT NULL,
    valor_pago REAL NOT NULL,
    data_pagamento DATE NOT NULL,
    id_venda INTEGER NOT NULL,

    FOREIGN KEY (id_venda)
        REFERENCES Venda(id_venda)
);

CREATE TABLE Livro_Promocao (
    id_livro INTEGER NOT NULL,
    id_promocao INTEGER NOT NULL,

    PRIMARY KEY (id_livro, id_promocao),

    FOREIGN KEY (id_livro)
        REFERENCES Livro(id_livro),

    FOREIGN KEY (id_promocao)
        REFERENCES Promocao(id_promocao)
);