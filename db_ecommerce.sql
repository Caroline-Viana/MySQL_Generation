CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL(7,2),
    departamento VARCHAR(255),
    marca VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_produto(nome, preco, departamento, marca) 
VALUES ("Ventilador de mesa", 118.69, "Eletrodomésticos", "Mondial"),
("Aparador de grama", 242.73, "Ferramentas", "Tramontina"),
("Algodao Quadrado", 174.99, "Saúde", "Bellacotton"),
("Galaxy A03", 657.99, "Celulares e Telefones", "Samsung"),
("Rejunte Piscina", 42.73, "Construção", "Portokoll"),
("Impressora", 1199.00, "Informática", "Epson "),
("Capa De Edredom", 118.73, "Casa, Móveis e Decoração", "Duvet"),
("Cadeira De Escritório", 574.73, "Casa, Móveis e Decoração", "Mesh");

SELECT * FROM tb_produto;
SELECT * FROM tb_produto WHERE preco > 500;
SELECT * FROM tb_produto WHERE preco < 500;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produto SET preco = 180.00 WHERE id = 3;