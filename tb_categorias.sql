USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    ingredientes VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(sabor, ingredientes) 
VALUES ("Salgado", "Frango, queijo Hut e requeijão cremoso"),
("Doce", "Pizza Individual coberta com o tradicional e delicioso brigadeiro e chocolate granulado"),
("Salgado", "Queijo Hut, coberto com tomates fatiados e com um toque de manjericão"),
("Salgado", "O sonho dos amantes de pepperoni. Muitas fatias de pepperoni, servidas sobre uma generosa camada de queijo Hut"),
("Salgado", "Queijo Hut, tomate, champignon, pimentão, cebola e azeitonas");

SELECT * FROM tb_categorias;