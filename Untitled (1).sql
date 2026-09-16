CREATE TABLE `livros` (
  `id_livro` integer PRIMARY KEY,
  `titulo` varchar(255),
  `ano_publicacao` integer,
  `genero` varchar(255),
  `quantidade` integer,
  `id_autor` integer NOT NULL
);

CREATE TABLE `autores` (
  `id_autor` integer PRIMARY KEY,
  `nome` varchar(255),
  `nacionalidade` varchar(255)
);

CREATE TABLE `leitores` (
  `id_leitor` integer PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255)
);

CREATE TABLE `emprestimos` (
  `id_emprestimo` integer PRIMARY KEY,
  `id_livro` integer NOT NULL,
  `id_leitor` integer NOT NULL,
  `data_emprestimo` date,
  `data_devolucao` date
);

ALTER TABLE `livros` ADD CONSTRAINT `livro_autor` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);

ALTER TABLE `emprestimos` ADD CONSTRAINT `livro_emprestimo` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`);

ALTER TABLE `emprestimos` ADD CONSTRAINT `leitor_emprestimo` FOREIGN KEY (`id_leitor`) REFERENCES `leitores` (`id_leitor`);
