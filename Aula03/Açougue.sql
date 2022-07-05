DROP DATABASE db_cidade_das_carnes;

CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (descricao)
VALUES ("CONGELADO");

INSERT INTO tb_categoria (descricao)
VALUES ("FRESCOS");

INSERT INTO tb_categoria (descricao)
VALUES ("TERCERIZADOS");


CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_de_validade date NULL,
preco decimal(6, 2),
descricao varchar(255),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Alcatra", 8, "2022-03-29", 49.00, "CARNE BOVINA", 2);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Contra File", 13, "2022-03-30", 65.00, "CARNE BOVINA", 2);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Musculo", 10, "2022-03-29", 32.00, "CARNE BOVINA", 2);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Linguca", 10, "2022-03-29", 32.00, "EMBUTIDOS", 1);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Salsicha", 28, "2022-04-27", 12.00, "EMBUTIDOS", 3);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Sobrecoxa de Frango", 34, "2022-03-30", 16.00, "FRANGOS", 1);

INSERT INTO tb_produtos (nome, quantidade, data_de_validade, preco, descricao, categoria_id)
VALUES ("Frango inteiro", 12, "2022-04-03", 20.00, "FRANGOS", 3);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT nome, quantidade, data_de_validade, preco, tb_categoria.descricao FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id;
