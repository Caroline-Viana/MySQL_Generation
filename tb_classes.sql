USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    magia VARCHAR(255),
    guerreiro VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_classes(magia, guerreiro) 
VALUES ("Mago", "Cavaleiro"), 
("Bruxa", "Arqueira"), 
("Feiticeiro", "Templário"),
("Necromante", "Ladino"),
("Curandeiro", "Cavaleiro");
