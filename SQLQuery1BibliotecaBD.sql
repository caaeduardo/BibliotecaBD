
--Initial(Create)
create database BibliotecaDB
go

use BibliotecaDB;
go

use master;
go


--Criando Tabelas
CREATE TABLE Autores (
	AutorId int identity primary key,
	NomeCompleto varchar(255)not null, 
	PaisOrigem varchar(50) 
	FOREIGN KEY 
);
CREATE TABLE Livro (
	LivroId int identity primary key ,
	Titulo varchar(255), 
	AnoPublicação int,
	AutorID int
);
CREATE TABLE Empréstimos (
	EmprestimosID int identity primary key ,
	DataEmprestimo date not null,
	DataDevolucao date not null,
	LivroID int,
);
--Inserir Dados nas 3 Entidades
INSERT INTO Autores VALUES
('Gustavo Guanabara', 'Brazil'),
('Rafa Balerinni', 'Brazil'),
('Gilberto Mautner', 'Germany')

INSERT INTO Livro VALUES
('Curso em Video', 2007, 1),
('GitLab Tutorial', 2012, 2),
('Locaweb Init', 1997, 3)

INSERT INTO Empréstimos VALUES
('10/30/2024', '17/30/2024'),
('17/30/2024', '24/30/2024')




--Drops
--drop table Autores
--drop table Livro
--drop table Empréstimos
--drop database BibliotecaDB


-- Update dos Registros da Tabela.
UPDATE Autores
SET NomeCompleto = 'João Silva'
WHERE AutorId = 3;

--Selecionar tabelas
SELECT * from Autores


--Backup do Banco
BACKUP DATABASE BibliotecaDB 
TO DISK = 'C:\temp\BibliotecaDB.bak'; 

--Restaurando do Banco
RESTORE DATABASE BibliotecaDB
FROM DISK = 'C:\temp\BibliotecaDB.bak'; 
