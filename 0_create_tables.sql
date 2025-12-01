-- Criação da tabela Talhao
CREATE TABLE Talhao (
    idTalhao INT AUTO_INCREMENT PRIMARY KEY, -- Usando Auto_Increment para facilitar
    nome VARCHAR(100) NOT NULL,
    area DECIMAL(10,2),    -- Ex: 50.50 (hectares)
    cultura VARCHAR(50)    -- Ex: Soja, Milho
);

-- Criação da tabela Maquina
CREATE TABLE Maquina (
    idMaquina INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),      -- Ex: Trator, Colheitadeira
    modelo VARCHAR(100),
    estado VARCHAR(20)     -- Ex: Ativo, Manutenção
);

-- Criação da tabela Atividade (com as Chaves Estrangeiras)
CREATE TABLE Atividade (
    idAtividade INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    descricao TEXT,
    idTalhao INT,
    idMaquina INT,
    FOREIGN KEY (idTalhao) REFERENCES Talhao(idTalhao),
    FOREIGN KEY (idMaquina) REFERENCES Maquina(idMaquina)
);