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
			,(3, 'ligia@gmail.com', '123')
			,(3, 'alexandre@gmail.com', '123')
			,(3, 'fernando@gmail.com', '123')
			,(3, 'joao@gmail.com', '123')
GO

INSERT INTO autores(IdUsuario, Nome)
VALUES		(2, 'J.K.Rowling')
			,(3, 'Cessida Cowell')
			,(4, 'Alexandre Dumas')
GO

