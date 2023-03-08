CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    salario DECIMAL(6,2),
    cargo VARCHAR(255),
    departamento VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, salario, cargo, departamento) 
VALUES ("Caroline", 5000.00, "Desenvolvedora Web", "TI"), 
("Sophia", 9000.00, "Diretora de Marketing", "Marketing"),
("Lara", 1200.00, "Jovem Aprendiz", "TI"),
("Maria", 1000.00, "Estágiaria em RH", "Recursos Humanos"),
("Clara", 5000.00, "Supervisora", "Marketing");

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_colaboradores SET salario = 1100.00 WHERE id = 14;
