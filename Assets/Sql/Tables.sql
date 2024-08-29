CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome int
);

INSERT INTO tb_categorias (nome) VALUE ('lanche');

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
    preco DECIMAL(6, 2),
    imagem VARCHAR(200),
    categoria INT,
    descricao VARCHAR(255)
);

INSERT INTO tb_produtos (titulo, preco, imagem, categoria, descricao) VALUE ('Hamburguer Kids', 15.90, './assets/img/produtos/hmbSimples.png', 1, 'Delicioso hamburguer kids, perfeito para os pequenos. Sabor inesquecível em tamanho reduzido.');

CREATE TABLE tb_usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    usuario VARCHAR(100),
    senha VARCHAR(100),
    id_pessoa INT,
    nivel VARCHAR(255) NULL
);
    
CREATE TABLE tb_pessoas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    ano_nascimento YEAR(4),
    cpf VARCHAR(11),
    telefone_1 VARCHAR(15)
);

CREATE TABLE tb_vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATETIME NOT NULL,
    id_pessoa INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);