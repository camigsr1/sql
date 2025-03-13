CREATE DATABASE Serasa;
 
CREATE TABLE empregado(
    CODIGO INT(5) PRIMARY KEY NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    DEPTO INT(4) NOT NULL ,
    SALARIO INT(4) NOT NULL
);
 
INSERT INTO empregado
( CODIGO,NOME,DEPTO, SALARIO)
VALUES
(43500, 'Ana da Silva',9411,5200),
(43501,'Vitoria Beatriz',9411,3400),
(43502,'Pedro José',9412,2600),
(43503,'Amary Manoel',9412,8400),
(43504,'Carlos Silva',9412,5600),
(43505,'Vitorio Cardoso',9413,2300),
(43506,'Carlos Ives Souza',9413,3380),
(43507,'Victor Silva',9413,4500),
(43508,'Saulo Monteiro',9413,6800);
 
--Alterando departamento para 9414
 
UPDATE empregado
SET DEPTO = 9414
WHERE DEPTO;
 
--Alterando departamento dos 3 Primeiros  para 9415
 
UPDATE empregado
SET DEPTO = 9415
WHERE CODIGO BETWEEN 43500 AND 43502;
 
-- Alterando departamentos para valores originais
UPDATE empregado
SET DEPTO = 9411
WHERE CODIGO BETWEEN 43500 AND 43501;
 
UPDATE empregado
SET DEPTO = 9412
WHERE CODIGO BETWEEN 43502 AND 43504;
 
UPDATE empregado
SET DEPTO = 9413
WHERE Codigo BETWEEN 43505 AND 43508;
 
-- Select em todos os dados do banco de dados Senac
 
SELECT * From empregado;
 
-- Select da coluna nome onde sálario R$ 6800,00
 
SELECT NOME FROM empregado
WHERE SALARIO = 6800.00;
 
-- Select da coluna Código e nome onde salário igual 5200,00
 
SELECT CODIGO, NOME FROM empregado
WHERE SALARIO = 5200.00;
 
-- Select da coluna DEPTO onde salário MAIOR que 3000,00 e Menor que 5.500,00
 
SELECT DEPTO FROM empregado
WHERE SALARIO > 3000.00 AND SALARIO < 5000.00;
 
-- Select da coluna CODIGO e DEPTO onde salário ENTRE 2600,00 e 3380,00
 
SELECT CODIGO, DEPTO FROM empregado
WHERE SALARIO BETWEEN 2600.00  AND 3380.00;
 
-- Select da Coluna nome onde DEPTO for 9411 AND 9412
 
SELECT NOME FROM empregado
WHERE DEPTO = 9411 AND 9412;
 
-- Select da Coluna DEPTO, Salario e NOME  onde o Código for 43500 OR 43502
 
SELECT DEPTO, SALARIO, NOME From empregado
WHERE Codigo = 43500 or 43502;
 
-- Select SUM de todos os SALÀRIOS
 
SELECT SUM(SALARIO) FROM empregado;