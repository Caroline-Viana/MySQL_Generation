-- comando de criação do banco de dados 
CREATE DATABASE db_quitanda;
-- comando que indica qual é o banco de dados que está sendo trabalhado 
USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),

    PRIMARY KEY(id)
);
-- encontre (select) todos (*) os dados da minha tabela (from)
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) VALUES ("Maça", 3.00), ("Melancia", 7.00);
-- desativando modo seguro
SET SQL_SAFE_UPDATES = 0;

-- atualização de um dado dentro da tabela
UPDATE tb_produtos SET preco = 5.00 WHERE id = 3;
-- Adicionando a nova coluna
ALTER TABLE tb_produtos ADD categoria_id BIGINT;
-- Adicionando a constraint
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id);

INSERT INTO tb_produtos(nome_produto, preco, categoria_id) 
VALUES ("Pitaya", 15.00, 1),
("Agrião", 3.00, 2),
("Cenoura", 3.50, 3);
