USE constraints;

DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS funcionario;

CREATE TABLE IF NOT EXISTS departamento (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  localizacao VARCHAR(80),
  qtde_funcionarios INT CHECK (qtde_funcionarios >= 0)
);

CREATE TABLE IF NOT EXISTS funcionario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  id_departamento INT NOT NULL,
  salario DECIMAL(7, 2) NOT NULL DEFAULT 2000,
  estado_civil ENUM('solteiro', 'casado', 'divorciado') NOT NULL DEFAULT 'solteiro',
  
  FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

-- error - departamento não existe
INSERT INTO funcionario (nome, id_departamento)
VALUES ('Maiqui', 1);

INSERT INTO departamento (nome, qtde_funcionarios)
VALUES ('RH', 50);

INSERT INTO funcionario (nome, id_departamento)
VALUES ('Maiqui', 1);

INSERT INTO departamento (nome, qtde_funcionarios)
VALUES ('TI', 100);

INSERT INTO funcionario (nome, id_departamento)
VALUES ('Mike', 2);


SELECT * FROM departamento;
SELECT * FROM funcionario;

SELECT * FROM funcionario, departamento; -- TRAZ TUDO, DADOS NÃO RELACIONADOS

SELECT 
  f.nome AS funcionario, 
  d.nome AS departamento
FROM 
  funcionario f, 
  departamento d
WHERE
  f.id_departamento = d.id;
  

