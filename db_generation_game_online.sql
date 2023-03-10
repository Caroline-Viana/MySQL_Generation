CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    level_forca INT,
    level_habilidade INT,
    level_magia INT,
    classes_id BIGINT,
    PRIMARY KEY(id),
    CONSTRAINT fk_personagens_classes FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, level_forca, level_habilidade, level_magia, classes_id) 
VALUES ("Freya", 750, 800, 980, 2),
("Aster", 880, 500, 700, 1),
("Brendan", 950, 680, 540, 3),
("Darion", 810, 600, 760, 1),
("Ezra", 370, 970, 780, 5),
("Elói", 650, 790, 900, 2),
("Fael", 690, 500, 760, 4),
("Moka", 750, 900, 980, 3);

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE level_forca > 500;
SELECT * FROM tb_personagens WHERE classes_id = 2;
SELECT * FROM tb_personagens WHERE level_habilidade BETWEEN 600 AND 800;
SELECT * FROM tb_personagens WHERE nome LIKE "%r%";
SELECT nome, level_forca, level_habilidade, level_magia, classes_id FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
SELECT magia, guerreiro FROM tb_classes
RIGHT JOIN tb_personagens ON tb_personagens.classes_id = tb_classes.id;
