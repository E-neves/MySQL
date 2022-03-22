<<<<<<< HEAD
CREATE DATABASE db_escola; 
USE db_escola;
=======
USE db_escola; 

CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL, 
idade int,
resultado_exatas decimal(6,2),
resultado_humanas decimal(6,2),
resultado_media decimal(6,2)NOT NULL,
situacao_final varchar (255) NOT NULL,
PRIMARY KEY (id)
); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Joana", 14, 7.8, 4.5, 6.15, "RECUPERAÇÃO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Fernando", 13, 8.0, 5.5, 6.75, "RECUPERAÇÃO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Maria", 13, 7.3, 9.5, 8.4, "APROVADO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Alberto", 13, 8.3, 8.5, 8.4, "APROVADO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Patricia", 14, 9.6, 9.2, 9.4, "APROVADO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Bernando", 13, 10.0, 10.0, 10.0, "APROVADO"); 

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Raquel", 13, 10.0, 7.5, 8.75, "APROVADO");

INSERT INTO tb_estudantes (nome, idade, resultado_exatas, resultado_humanas, resultado_media, situacao_final)
VALUES ("Rafael", 14, 4.7, 4.8 , 4.75, "REPROVADO");

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes ORDER BY nome;
SELECT * FROM tb_estudantes WHERE resultado_media > 7.00;
SELECT * FROM tb_estudantes WHERE resultado_media < 7.00;



>>>>>>> d5c9593 (Atualizando repositorios)
