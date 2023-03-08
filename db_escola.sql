CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    turma INT,
    nota DECIMAL(4,2),
    PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, idade, turma, nota) 
VALUES ("Caroline", 13, 2, 10.00),
("Sophia", 15, 5, 10.00),
("Lara", 8, 8, 10.00),
("Maria", 13, 2, 10.00),
("Clara", 15, 5, 10.00),
("Helena", 6, 4, 10.00),
("Olívia", 6, 4, 10.00),
("Mariana", 14, 7, 10.00);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 07.00;
SELECT * FROM tb_alunos WHERE nota < 07.00;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_alunos SET nota = 08.00 WHERE id = 3;
