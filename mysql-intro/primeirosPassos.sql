CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(20) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ('Edna', '1998 05 10')
INSERT INTO pessoas (nome, nascimento) VALUES ('Amanda', '2002 08 09')

SELECT * FROM pessoas /*mostra toda a tabela*/
UPDATE pessoas SET nome='Edna Martins' WHERE id=1 /*adiciona Martins em Edna*/
DELETE FROM pessoas WHERE id=2 /*deleta Amanda*/

INSERT INTO pessoas (nome, nascimento) VALUES ('Maria', '1998 05 09')
INSERT INTO pessoas (nome, nascimento) VALUES ('Helena', '2005 08 09')

SELECT * FROM pessoas ORDER BY nome /*mostra toda a tabela em ordem alfabetica dos nomes*/

ALTER TABLE 'pessoas' ADD 'genero' VARCHAR(1) AFTER 'nascimento' /*adiciona o atributo genero na tabela*/

UPDATE pessoas SET genero='F' /*adiciona genero F em tudo*/
SELECT COUNT(id), genero FROM pessoas GROUP BY genero /*mostra os generos presentes na tabela e quantas pessoas estao em cada*/


/* tabela final 

pessoas________________________________
nome            nascimento  genero  id
---------------------------------------
Edna Martins    1998 05 10  F       1    
Maria           1998 05 09  F       3
Helena          2005 08 09  F       4
________________________________________

*/