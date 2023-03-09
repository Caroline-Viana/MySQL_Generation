USE db_quitanda;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria(descricao) VALUES ("Fruta"), ("Verdura"), ("Legume");

SELECT * FROM tb_categoria; 
