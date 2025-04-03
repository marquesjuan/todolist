CREATE DATABASE IF NOT EXISTS todolist;
USE todolist;

CREATE TABLE IF NOT EXISTS usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS lista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idusuario INT,
    datalista DATE NOT NULL,
    FOREIGN KEY (idusuario) REFERENCES usuario(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idlista INT,
    texto TEXT NOT NULL,
    status ENUM ('concluido', 'pendente') DEFAULT 'pendente',
    FOREIGN KEY (idlista) REFERENCES lista(id) ON DELETE CASCADE
);



INSERT INTO usuario (nome, email, senha) VALUES
('João Silva', 'joao@email.com', 'senha123'),
('Maria Oliveira', 'maria@email.com', 'senha123'),
('Carlos Souza', 'carlos@email.com', 'senha123');


INSERT INTO lista (idusuario, datalista) VALUES
(1, '2024-04-01'),
(1, '2024-04-02'),
(1, '2024-04-03'),
(2, '2024-04-04'),
(2, '2024-04-05'),
(2, '2024-04-06'),
(3, '2024-04-07'),
(3, '2024-04-08'),
(3, '2024-04-09');


INSERT INTO task (idlista, texto, status) VALUES
(1, 'Comprar leite', 'pendente'),
(1, 'Fazer exercícios', 'concluido'),
(1, 'Ler um capítulo do livro', 'pendente'),

(2, 'Revisar relatório', 'concluido'),
(2, 'Enviar e-mails', 'pendente'),
(2, 'Estudar SQL', 'pendente'),

(3, 'Pagar contas', 'pendente'),
(3, 'Planejar viagem', 'concluido'),
(3, 'Assistir aula online', 'pendente'),

(4, 'Ir ao supermercado', 'concluido'),
(4, 'Lavar o carro', 'pendente'),
(4, 'Agendar consulta médica', 'concluido'),

(5, 'Finalizar projeto', 'pendente'),
(5, 'Reunião com equipe', 'concluido'),
(5, 'Praticar inglês', 'pendente'),

(6, 'Fazer caminhada', 'concluido'),
(6, 'Comprar presente', 'pendente'),
(6, 'Organizar documentos', 'pendente'),

(7, 'Estudar programação', 'concluido'),
(7, 'Ler artigo técnico', 'pendente'),
(7, 'Criar plano de estudos', 'concluido'),

(8, 'Fazer revisão de código', 'pendente'),
(8, 'Atualizar currículo', 'concluido'),
(8, 'Responder mensagens', 'pendente'),

(9, 'Planejar orçamento', 'concluido'),
(9, 'Fazer compras online', 'pendente'),
(9, 'Escrever relatório semanal', 'concluido');
