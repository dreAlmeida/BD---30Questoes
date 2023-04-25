CREATE DATABASE BdPartidoPTC

USE BdPartidoPTC

--ATENÇÃO RENOMEAR O NOME DA TABELA PARA "filiadosPTC"

SELECT * FROM filiadosPTC
SELECT COUNT(codinscricao) FROM filiadosPTC

--Quest�o 1

SELECT nomeFiliado, UF FROM filiadosPTC
 WHERE nomeFiliado LIKE 'ANTONIO%'

--Quest�o 2 ARRUMAR

SELECT nomeFiliado FROM filiadosPTC
	WHERE nomeFiliado LIKE '%SEBASTIAO%'

--Quest�o 3

SELECT nomeFiliado FROM filiadosPTC
	WHERE nomeFiliado LIKE 'OS%'

--Quest�o 4

SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE '%LIX%'
--Quest�o 5

SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE '%INHAMBUPE%'

--Quest�o 6

SELECT nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE 'SANTA%'

--Quest�o 7

SELECT nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE 'E%'

--Quest�o 8

SELECT nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE '%CRUZ%'

--Quest�o 9

SELECT nomeMunicipio FROM filiadosPTC
	WHERE nomeMunicipio LIKE '%DE%'

--Quest�o 10

SELECT dataFiliacao FROM filiadosPTC
	WHERE dataFiliacao >'01/01/1990' AND dataFiliacao <'01/01/2000'

--Quest�o 11

SELECT dataFiliacao FROM filiadosPTC
	WHERE dataFiliacao >'02/01/2010' AND dataFiliacao <'01/03/2010'

--Quest�o 12

SELECT nomeFiliado FROM filiadosPTC
	WHERE dataFiliacao >'01/07/2007' AND dataFiliacao <'01/07/2007'

--Quest�o 13

SELECT nomeFiliado FROM filiadosPTC
	WHERE situacaoRegistro LIKE 'REGULAR'

--Quest�o 14

SELECT nomeFiliado FROM filiadosPTC
	WHERE zonaEleitoral LIKE '203'

--Quest�o 15

SELECT nomeFiliado FROM filiadosPTC
	WHERE zonaEleitoral LIKE '180'

--Quest�o 16

SELECT nomeFiliado FROM filiadosPTC
	WHERE zonaEleitoral LIKE '199'

--Quest�o 17

SELECT MAX(zonaEleitoral) FROM filiadosPTC

--Quest�o 18

SELECT MIN(zonaEleitoral) FROM filiadosPTC

--Quest�o 19

UPDATE filiadosPTC
	SET siglaPartido = 'PT'
		WHERE codigoMunicipio LIKE '36471'

--Quest�o 20

UPDATE filiadosPTC
	SET siglaPartido = 'PMDB'
		WHERE codigoMunicipio LIKE '38490'

--Quest�o 21

UPDATE filiadosPTC
	SET siglaPartido = 'PC'
	WHERE nomeMunicipio LIKE 'SANTAN%' AND nomeMunicipio LIKE'%POLIS'

--Quest�o 22

UPDATE filiadosPTC
	SET siglaPartido = 'PV'
	SELECT nomeMunicipio FROM filiadosPTC
	WHERE codigoMunicipio LIKE 'SAO FELIX'

--Quest�o 23

UPDATE filiadosPTC
	SET siglaPartido = 'PSDB'
	SELECT nomeMunicipio FROM filiadosPTC
	WHERE codigoMunicipio LIKE 'ENCRUZILHADA'

--Quest�o 24

UPDATE filiadosPTC
	SET nomeFiliado = 'JORGE LUIS FERREIRA DOS SANTOS'
	SELECT nomeFiliado FROM filiadosPTC
	WHERE nomeFiliado LIKE 'JORGE LUIS MAGALHAES DOS SANTOS'

--Quest�o 25

UPDATE filiadosPTC
	SET nomeFiliado = 'BENTA XAVIER RODRIGUES'
	SELECT nomeFiliado FROM filiadosPTC
	WHERE nomeFiliado LIKE 'RENATA XAVIER RODRIGUES'

--Quest�o 26

UPDATE filiadosPTC
	SET nomeFiliado = 'NOE LEITE DA SILVA'
	SELECT nomeFiliado FROM FiliadosPTC
	WHERE nomeFiliado LIKE 'NOEL LEITE DA SILVA'

--Quest�o 27

UPDATE filiadosPTC
	SET nomeFiliado = 'JOSIENE ANDRADE DE SOUZA', situacaoRegistro = 'REGULAR'
	SELECT nomeFiliado FROM filiadosPTC
	WHERE situacaoRegistro LIKE '%JUDICE'

--Quest�o 28

UPDATE filiadosPTC
	SET nomeFiliado = 'ELIEL ALMEIDA SILVA', situacaoRegistro = 'REGULAR'
	SELECT nomeFiliado FROM filiadosPTC
	WHERE situacaoRegistro LIKE '%DESFILIADO'

--Quest�o 29

UPDATE filiadosPTC
	SET nomeFiliado = 'ALINE DE SOUZA', situacaoRegistro = 'DESFILIADO'
	SELECT nomeFiliado FROM filiadosPTC
	WHERE situacaoRegistro LIKE '%REGULAR'

--Quest�o 30

	ALTER TABLE filiadosPTC
	ADD Sexo CHAR(1);