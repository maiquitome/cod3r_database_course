USE constraints;

-- ao procurar o nome, vai percorrer o índice sem precisar percorrer a tabela inteira

CREATE INDEX idx_funcionario_nome ON funcionario(nome);