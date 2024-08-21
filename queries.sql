
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
VALUES ('Tiago Ferreira', 'tiagoferreiraoliveir@gmail.com');

SELECT * FROM clientes
WHERE email = 'tiagoferreiraoliveir@gmail.com';


INSERT INTO produtos (nome, preco)
VALUES ('Cadeira Gamer', 800.00);

SELECT * FROM produtos
WHERE nome = 'Cadeira Gamer';


INSERT INTO pedidos (cliente_id, produto_id, quantidade)
VALUES (1, 1, 2);  

SELECT * FROM pedidos
WHERE cliente_id = 1 AND produto_id = 1;

INSERT INTO fornecedores (nome, telefone)
VALUES ('Despacho 99', '9999-9999');


SELECT * FROM fornecedores
WHERE nome = 'Despacho 99';


INSERT INTO funcionarios (nome, cargo)
VALUES ('João Gabriel', 'Analista');


SELECT * FROM funcionarios
WHERE nome = 'João Gabriel';


UPDATE clientes
SET email = 'tiagoferreiraoliveir@gmail.com'
WHERE nome = 'Tiago Ferreira';


SELECT * FROM clientes
WHERE nome = 'Tiago Ferreira';


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
SET telefone = '9999-9988'
WHERE nome = 'Despacho 99';


SELECT * FROM fornecedores
WHERE nome = 'Despacho 99';


UPDATE funcionarios
SET cargo = 'Gerente'
WHERE nome = 'João Gabriel';


SELECT * FROM funcionarios
WHERE nome = 'João Gabriel';


DELETE FROM clientes
WHERE nome = 'Tiago Ferreira';


SELECT * FROM clientes
WHERE nome = 'Tiago Ferreira';


DELETE FROM produtos
WHERE nome = 'Cadeira Gamer';


SELECT * FROM produtos
WHERE nome = 'Cadeira Gamer';


DELETE FROM pedidos
WHERE id = 1;


SELECT * FROM pedidos
WHERE id = 1;


DELETE FROM fornecedores
WHERE nome = 'Despacho 99';


SELECT * FROM fornecedores
WHERE nome = 'Despacho 99';


DELETE FROM funcionarios
WHERE nome = 'João Gabriel';


SELECT * FROM funcionarios
WHERE nome = 'João Gabriel';
