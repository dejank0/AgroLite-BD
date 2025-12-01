#AgroLite - Sistema de Gestão de Talhões e Máquinas Agrícolas

Descrição do Projeto
O **AgroLite** é um sistema de banco de dados relacional desenvolvido para controlar as operações básicas de uma propriedade rural. O foco do sistema é registrar os **talhões** (áreas de plantio), as **máquinas agrícolas** disponíveis e as **atividades** realizadas no campo (como plantio, colheita e pulverização).

Este projeto faz parte da atividade prática da disciplina de Banco de Dados, aplicando conceitos de **Modelagem de Dados**, **Normalização (1FN, 2FN, 3FN)** e manipulação via **SQL (DML e DQL)**.

Estrutura do Banco de Dados
O modelo lógico foi implementado com as seguintes entidades:
* **Talhão:** Armazena as áreas de cultivo (`idTalhao`, `nome`, `area`, `cultura`).
* **Máquina:** Registra o maquinário da fazenda (`idMaquina`, `tipo`, `modelo`, `estado`).
* **Atividade:** Tabela fato que registra o histórico de operações, relacionando qual máquina trabalhou em qual talhão (`idAtividade`, `data`, `descricao`, `idTalhao`, `idMaquina`).

Tecnologias Utilizadas
* **Linguagem:** SQL (Structured Query Language)
* **Banco de Dados:** MySQL / PostgreSQL (Compatível com ambos)
* **Ferramenta:** MySQL Workbench

Conteúdo do Repositório
1.  **`0_create_tables.sql`**: Script DDL para criação da estrutura das tabelas e relacionamentos (chaves estrangeiras).
2.  **`1_inserts.sql`**: Script DML contendo a carga inicial de dados (povoamento) para testes.
3.  **`2_selects.sql`**: Script DQL contendo consultas estratégicas utilizando:
    * Junções (`INNER JOIN`, `LEFT JOIN`)
    * Filtros (`WHERE`)
    * Ordenação (`ORDER BY`)
    * Agrupamento (`GROUP BY`)
4.  **`3_manipulacao.sql`**: Script DML com exemplos práticos de manutenção de dados:
    * 3 Comandos de atualização (`UPDATE`) com condições.
    * 3 Comandos de exclusão (`DELETE`) com condições de segurança e respeito à Integridade Referencial.

Como Executar
1.  Clone este repositório.
2.  Abra os arquivos `.sql` na sua ferramenta de banco de dados preferida.
3.  Execute os scripts na ordem numérica (0 -> 1 -> 2 -> 3) para garantir a integridade referencial.

***
Prova Visual da Implementação

 1. Diagrama Entidade-Relacionamento (DER)
O diagrama abaixo reflete o modelo lógico implementado no `0_create_tables.sql`, comprovando a criação correta das Chaves Primárias (`PK`) e Estrangeiras (`FK`) e os relacionamentos **1:N** entre as entidades.

<img width="1919" height="707" alt="Image" src="https://github.com/user-attachments/assets/58ea0c5e-5bc7-4c7d-9fa9-c5aacd3df729" />

2. Validação da Consulta (DQL)
O resultado da consulta com `JOIN` abaixo valida que os dados foram inseridos corretamente (`1_inserts.sql`) e que a **Integridade Referencial** está funcionando, permitindo a extração de relatórios úteis.

<img width="1239" height="836" alt="Image" src="https://github.com/user-attachments/assets/078a8ab8-45f9-4896-8133-f3f3fc8465f9" />

***
Desenvolvido por: Kawan
