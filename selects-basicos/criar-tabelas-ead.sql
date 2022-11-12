USE ead;

-- UNSIGNED = sem sinal, ou seja, não pode números negativos

-- DATETIME é diferente de TIMESTAMP
-- TIMESTAMP é um número, tendo d data de referencia a partir de 01 de Janeiro de 1970
-- exemplo de TIMESTAMP: 1668294886

DROP TABLE IF EXISTS curso;

CREATE TABLE IF NOT EXISTS curso (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  descricao VARCHAR(4000),
  visivel BOOLEAN NOT NULL DEFAULT 0,
  gratis BOOLEAN NOT NULL DEFAULT 0,
  data_publicacao DATETIME,
  duracao_segundos INT,
  nota DECIMAL(2, 1) UNSIGNED NOT NULL DEFAULT 0,
  preco DECIMAL(7, 2) UNSIGNED NOT NULL DEFAULT 0,
  CONSTRAINT chk_nota CHECK (nota <= 5)
);

CREATE TABLE IF NOT EXISTS aula (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  video_url VARCHAR(1000),
  visivel BOOLEAN NOT NULL DEFAULT 1,
  gratis BOOLEAN NOT NULL DEFAULT 0,
  data_publicacao DATETIME,
  duracao_segundos INT,
  id_curso INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES curso(id)
);

SELECT * FROM curso;
SELECT * FROM aula;