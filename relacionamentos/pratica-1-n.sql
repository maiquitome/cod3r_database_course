USE relacionamentos;

DROP TABLE IF EXISTS postagem;

DROP TABLE IF EXISTS usuario;

CREATE TABLE
    IF NOT EXISTS usuario (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(120) NOT NULL,
        email VARCHAR(120) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS postagem (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        titulo VARCHAR(120) NOT NULL,
        conteudo TEXT NOT NULL,
        id_usuario INT UNSIGNED,
        FOREIGN KEY (id_usuario) REFERENCES usuario(id)
    );

INSERT INTO
    usuario (nome, email)
VALUES ('João', 'joao123@abcmail.com');

INSERT INTO
    postagem (titulo, conteudo, id_usuario)
VALUES (
        'Tipos de joins',
        'INNER, LEFT, RIGHT, SEMI, ANTI...',
        1
    );

SELECT * FROM usuario;