--DDL

CREATE DATABASE czbooks_tarde
GO

USE czbooks_tarde
GO

CREATE TABLE tiposUsuarios(
		IdTiposUsuario INT PRIMARY KEY IDENTITY
		,TiposUsuario VARCHAR(20) UNIQUE NOT NULL
);
GO

CREATE TABLE usuarios(
		IdUsuario INT PRIMARY KEY IDENTITY
		,IdTiposUsuario INT FOREIGN KEY REFERENCES tiposUsuarios(IdTiposUsuario)
		,Email VARCHAR(50) NOT NULL
		,Senha VARCHAR(20) NOT NULL
);
GO

CREATE TABLE autores(
		IdAutor INT PRIMARY KEY IDENTITY
		,IdUsuario INT FOREIGN KEY REFERENCES usuarios(IdUsuario)
		,Nome VARCHAR(50) NOT NULL
);
GO

CREATE TABLE instituicao(
		IdInstituicao INT PRIMARY KEY IDENTITY
		,Nome VARCHAR(50) NOT NULL
		,Endereco VARCHAR(100) NOT NULL
);
GO

CREATE TABLE categorias(
		IdCategoria INT PRIMARY KEY IDENTITY
		,Categoria VARCHAR(50) NOT NULL
);
GO

CREATE TABLE livros(
		IdLivro INT PRIMARY KEY IDENTITY
		,IdAutor INT FOREIGN KEY REFERENCES autores(IdAutor)
		,IdCategoria INT FOREIGN KEY REFERENCES categorias(IdCategoria)
		,IdInstituicao INT FOREIGN KEY REFERENCES instituicao(IdInstituicao)
		,Titulo VARCHAR(50) NOT NULL
		,Sinopse VARCHAR(500) NOT NULL
		,Categoria VARCHAR(50) NOT NULL
		,Autor VARCHAR(50) NOT NULL
		,DataPublicacao VARCHAR(20) NOT NULL
		,Preco DECIMAL(25,0) NOT NULL
);
GO
