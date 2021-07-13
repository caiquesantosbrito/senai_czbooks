-- DML

USE czbooks_tarde
GO

INSERT INTO tiposUsuarios(TiposUsuario)
VALUES		('Administrador')
			,('Autor')
			,('Cliente');
GO

INSERT INTO usuarios(IdTiposUsuario, Email, Senha)
VALUES		(1, 'ricardo.lima@czbooks.com.br', 'admin')
			,(2, 'j.k.rowling@gmail.com', '12345')
			,(2, 'cressida.cowell@gmail.com', '12345')
			,(2, 'alexandre.dumas@gmail.com', '12345')
			,(2, 'raphael.montes@gmail.com', '12345')
			,(3, 'ligia@gmail.com', '123')
			,(3, 'alexandre@gmail.com', '123')
			,(3, 'fernando@gmail.com', '123')
			,(3, 'joao@gmail.com', '123')
			,(3, 'mariana@gmail.com', '123');
GO

INSERT INTO autores(IdUsuario, Nome)
VALUES		(2, 'J.K.Rowling')
			,(3, 'Cressida Cowell')
			,(4, 'Alexandre Dumas')
			,(5, 'Raphael Montes');
GO

INSERT INTO instituicao(Nome, Endereco)
VALUES		('CzBooks', 'Alameda Barão de Limeira, 539 - Santa Cecilia, São Paulo - SP, 01202-001');
GO

INSERT INTO	categorias(Categoria)
VALUES		('Fantasia')
			,('Aventura')
			,('Romance')
			,('Terror');
GO

INSERT INTO livros(IdAutor, IdCategoria, IdInstituicao, Titulo, Sinopse, Categoria, Autor, DataPublicacao, Preco)
VALUES		(1, 1, 1,	'Harry Potter',				'',		'Fantasia',		'J.K.Rowling',		'26/6/1997',	'25.90')
			,(2, 2, 1,	'Como Treinar Seu Dragão',	'',		'Aventura',		'Cressida Cowell',	'01/02/2003',	'22.90')
			,(3, 3, 1,  'Os Três Mosqueteiros',		'',		'Romance',		'Alexandre Dumas',	'07/1844',		'22.95')
			,(4, 4, 1,	'O Vilarejo',				'',		'Terror',		'Raphael Montes',	'14/08/2015',	'22.89');
GO