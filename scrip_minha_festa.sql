CREATE DATABASE minhaFesta_DB;

USE minhaFesta_DB;

drop database minhaFesta_DB;

-- CREATE TABLE funcionario(
-- id_funcionario INT auto_increment,
-- nome_funcionario VARCHAR (100),
-- email_colaborador VARCHAR (100),
-- senha_colaborador INT (10)
-- );

CREATE TABLE cliente(
id_cliente INT auto_increment,
nome VARCHAR(100),
telefone CHAR (11),
endereco_festa VARCHAR (100),
tema_festa VARCHAR (100),
data_festa DATETIME,
hora_termino TIME,
PRIMARY KEY (id_cliente) 
);
select *from cliente;

CREATE TABLE temas(
id_tema INT auto_increment,
tema_festa VARCHAR (255),	
cor_toalha VARCHAR(255),
valor_aluguel INT,
PRIMARY KEY (id_tema)
);
select * from cliente;

CREATE TABLE orcamento(
id_orcamento INT PRIMARY KEY auto_increment,
fk_id_cliente INT, 
fk_id_tema INT,
FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (fk_id_tema) REFERENCES temas(id_tema)
);


-- Insert

INSERT INTO cliente (nome, telefone, endereco_festa, tema_festa, data_festa, hora_termino) VALUES
				    ("Pedro Carlos", "55698759542", "Avenida Brasil, 456", "Festa Boteco", "2024.06.12", "20:00:00"),
                    ("Amanda NUnes",  "2765987453", "Rua Minas Gerais, 789" ,"Festa Colegial", "2024.07.01","19:00:00"),
                    ("Lucas Silva", "236547899998", "Rua Paraná, 101", "Festa Nerd", "2024.07.30", "20:30:00");    
                    
iNSERT INTO temas (tema_festa,cor_toalha,valor_aluguel )  VALUES
				  ("Festa Boteco", "Vermelho", 600),
                  ("Festa Colegial", "Azul ciano", 650),
                  ("Festa Colegial", "Verde", 350),
                  ("Festa da Peruca", "Amarelo", 250),
                  ("Festa do Pijama", "Rosa", 750);
                  
                  

