USE starwars;

CREATE TABLE IF NOT EXISTS personagem (
  id INT, -- Ex: 1
  nome VARCHAR(120), -- Ex: 'Darth Vader'
  altura DECIMAL(4, 2), -- no máximo armazena 99.99
  destaque BOOLEAN, -- 0 (false) ou 1 (true)
  nascimento DATE -- Ex: '1993-05-13'
)