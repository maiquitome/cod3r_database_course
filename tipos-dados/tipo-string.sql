USE tipos_dados;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        nome VARCHAR(120) NOT NULL,
        nome_social VARCHAR(80)
    );
    
INSERT INTO aluno (matricula, nome, nome_social)
VALUES ("202106AF7", "Marlos Pinheiro Borges", "Marlin");

SELECT * FROM aluno;