CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT NOT NULL, 
nome varchar(255) NOT NULL, 
habilidade  varchar(255),
arma  varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Arqueiro", "Chuva de Flechas", "Arco e Flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Feiticeiro", "Bola de Fogo", "Cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Druida", "Gelo", "Livro");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Guerreiro", "Excalibur", "Espada");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Curandeiro", "Ressureição", "Gaze");

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT NOT NULL, 
nome varchar(255) NOT NULL,
nivel int, 
ataque int,
defesa int, 
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mokona", 100, 300, 100, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Minseok", 100, 3000, 2800, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUE ("Junmyeon", 100, 2000, 2000, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Baekhyun", 10, 1000, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongdae", 1000, 1300, 1110, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Chanyeol", 500, 2300, 3000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kyungsoo", 400, 1800, 2200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongin", 300, 1300, 850, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sehun", 150, 2100, 900, 3);

SELECT * FROM tb_personagens; 

SELECT * FROM tb_personagens WHERE ataque > 2000; 

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id; 

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome = "Arqueiro"; 










