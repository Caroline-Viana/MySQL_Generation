CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    valor DECIMAL (4,2),
    tamanho VARCHAR(255),
    borda VARCHAR(255),
    nome VARCHAR(255),
    categorias_id BIGINT,
    PRIMARY KEY(id),
    CONSTRAINT fk_pizzas_categorias FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(valor, tamanho, borda, nome, categorias_id) 
VALUES (42.45, "Média", "Tradicional", "Vegetariana", 5),
(39.95, "Grande", "Tradicional", "Pepperoni", 4),
(37.45, "Média", "Tradicional", "Marguerita", 3),
(42.45, "Média", "Recheada", "Corn & Bacon", 5),
(48.45, "Grande", "Tradicional", "Country", 5),
(42.45, "Média", "Tradicional", "Brasileira", 1),
(24.90, "Média", "Recheada com requeijão cremoso", "Brigadeiro", 2),
(24.90, "Média", "Tradicional", "Brigadeiro", 2);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT valor, tamanho, borda, nome, categorias_id FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;
SELECT sabor FROM tb_categorias
RIGHT JOIN tb_pizzas ON tb_pizzas.categorias_id = tb_categorias.id;
