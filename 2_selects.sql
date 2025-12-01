-- 1. Listar todas as máquinas que estão "Operacionais"
SELECT * FROM Maquina 
WHERE estado = 'Operacional';

-- 2. JOIN: Relatório Completo de Atividades (Quem fez o quê e onde?)
-- Mostra: Data, Descrição, Nome do Talhão e Modelo da Máquina
SELECT 
    Atividade.data, 
    Atividade.descricao, 
    Talhao.nome AS Nome_Talhao, 
    Maquina.modelo AS Modelo_Maquina
FROM Atividade
INNER JOIN Talhao ON Atividade.idTalhao = Talhao.idTalhao
INNER JOIN Maquina ON Atividade.idMaquina = Maquina.idMaquina
ORDER BY Atividade.data DESC;

-- 3. Contar quantas atividades foram realizadas em cada Talhão
SELECT Talhao.nome, COUNT(Atividade.idAtividade) AS total_atividades
FROM Talhao
LEFT JOIN Atividade ON Talhao.idTalhao = Atividade.idTalhao
GROUP BY Talhao.nome;

-- 4. Listar Talhões maiores que 100 hectares
SELECT nome, area, cultura 
FROM Talhao 
WHERE area > 100.00;