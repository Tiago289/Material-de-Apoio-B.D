
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);


CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);


CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

INSERT INTO clientes (nome, email)
VALUES ('Ana Costa', 'ana.costa@example.com');

SELECT * FROM clientes
WHERE email = 'ana.costa@example.com';


INSERT INTO produtos (nome, preco)
VALUES ('Cadeira Gamer', 800.00);

SELECT * FROM produtos
WHERE nome = 'Cadeira Gamer';


INSERT INTO pedidos (cliente_id, produto_id, quantidade)
VALUES (1, 1, 2);  

SELECT * FROM pedidos
WHERE cliente_id = 1 AND produto_id = 1;

INSERT INTO fornecedores (nome, telefone)
VALUES ('Fornecedor X', '1234-5678');


SELECT * FROM fornecedores
WHERE nome = 'Fornecedor X';


INSERT INTO funcionarios (nome, cargo)
VALUES ('João Almeida', 'Analista');


SELECT * FROM funcionarios
WHERE nome = 'João Almeida';


UPDATE clientes
SET email = 'ana.novo@example.com'
WHERE nome = 'Ana Costa';


SELECT * FROM clientes
WHERE nome = 'Ana Costa';


UPDATE produtos
SET preco = 850.00
WHERE nome = 'Cadeira Gamer';


SELECT * FROM produtos
WHERE nome = 'Cadeira Gamer';


UPDATE pedidos
SET quantidade = 3
WHERE id = 1;


SELECT * FROM pedidos
WHERE id = 1;


UPDATE fornecedores
SET telefone = '8765-4321'
WHERE nome = 'Fornecedor X';


SELECT * FROM fornecedores
WHERE nome = 'Fornecedor X';


UPDATE funcionarios
SET cargo = 'Coordenador'
WHERE nome = 'João Almeida';


SELECT * FROM funcionarios
WHERE nome = 'João Almeida';


DELETE FROM clientes
WHERE nome = 'Ana Costa';


SELECT * FROM clientes
WHERE nome = 'Ana Costa';


DELETE FROM produtos
WHERE nome = 'Cadeira Gamer';


SELECT * FROM produtos
WHERE nome = 'Cadeira Gamer';


DELETE FROM pedidos
WHERE id = 1;


SELECT * FROM pedidos
WHERE id = 1;


DELETE FROM fornecedores
WHERE nome = 'Fornecedor X';


SELECT * FROM fornecedores
WHERE nome = 'Fornecedor X';


DELETE FROM funcionarios
WHERE nome = 'João Almeida';


SELECT * FROM funcionarios
WHERE nome = 'João Almeida';
