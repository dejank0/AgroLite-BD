-- --- POVOANDO TALHÕES ---
INSERT INTO Talhao (nome, area, cultura) VALUES 
('Talhão Norte', 150.00, 'Soja'),
('Talhão Sul', 80.50, 'Milho'),
('Talhão Leste', 120.00, 'Algodão');

-- --- POVOANDO MÁQUINAS ---
INSERT INTO Maquina (tipo, modelo, estado) VALUES 
('Trator', 'John Deere 7200', 'Operacional'),
('Colheitadeira', 'Case IH 2388', 'Operacional'),
('Pulverizador', 'Jacto Uniport', 'Manutenção'),
('Semeadeira', 'Tatu Marchesan', 'Operacional');

-- --- POVOANDO ATIVIDADES (Relacionando Talhões e Máquinas) ---
-- Obs: Os IDs 1, 2, 3 referem-se à ordem que inserimos acima.
INSERT INTO Atividade (data, descricao, idTalhao, idMaquina) VALUES 
('2023-10-05', 'Plantio de Soja', 1, 4),             -- Semeadeira no Talhão Norte
('2023-10-10', 'Aplicação de Defensivo', 1, 3),      -- Pulverizador no Talhão Norte
('2023-10-12', 'Preparação de Solo', 2, 1),          -- Trator no Talhão Sul
('2023-11-20', 'Colheita de Milho Safrinha', 2, 2);  -- Colheitadeira no Talhão Sul