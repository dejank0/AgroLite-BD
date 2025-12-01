-- #############################################
-- # ARQUIVO: 3_manipulacao.sql (VERSÃO FINAL)
-- #############################################

USE agrolite;

-- 🚨 DESATIVA O MODO DE SEGURANÇA (NECESSÁRIO PARA UPDATES/DELETES SEM PK NO WHERE)
SET SQL_SAFE_UPDATES = 0; 

-- --- UPDATES (3 Comandos) ---

-- 1. Atualizar o estado do Pulverizador (idMaquina 3 ou 4)
UPDATE Maquina 
SET estado = 'Operacional' 
WHERE modelo = 'Jacto Uniport'; 

-- 2. Corrigir a área do Talhão Sul (idTalhao = 2)
UPDATE Talhao 
SET area = 85.00 
WHERE nome = 'Talhão Sul'; 

-- 3. Mudar o tipo de Trator (idMaquina = 1)
UPDATE Maquina 
SET tipo = 'Trator Pesado' 
WHERE idMaquina = 1;


-- --- DELETES (3 Comandos - Ordem Rigorosa) ---

-- 1. DELETAR FILHA: Remove todas as atividades da Semeadeira (idMaquina=4)
DELETE FROM Atividade 
WHERE idMaquina = 4;

-- 2. DELETAR PAI 1: Agora removemos a Máquina Semeadeira (idMaquina=4)
DELETE FROM Maquina 
WHERE idMaquina = 4; 

-- 3. DELETAR PAI 2: Removemos o Talhão Leste (idTalhao=3)
DELETE FROM Talhao 
WHERE idTalhao = 3;

-- 🔓 REATIVA O MODO DE SEGURANÇA (Boa prática)
SET SQL_SAFE_UPDATES = 1;