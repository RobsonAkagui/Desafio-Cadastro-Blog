/*No "comando SQL" primeiro crie essa tabela => executa*/
CREATE TABLE papel (
  id int,
  descricao VARCHAR(15),
  CONSTRAINT id_papel_pk PRIMARY KEY(id)
)
/* Segunda tabela do usuario => executar*/
CREATE TABLE users (
  id INT AUTO_INCREMENT,
  name VARCHAR(30),
  email VARCHAR(50),
  senha VARCHAR(30),  
  ativo BOOLEAN , 
  papel_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT id_users_pk PRIMARY KEY (id),
  CONSTRAINT id_papel_fk FOREIGN KEY (papel_id) REFERENCES papel(id)
);

/*E por ultimo dar esse comando de INSER INTO => EXECUTAR*/
INSERT INTO papel(id,descricao)  VALUES (0, 'Usuario');
INSERT INTO papel(id, descricao) VALUES (1, 'Administrador');


INSERT INTO users(id,name, email, senha, ativo, papel_id) 
VALUES ("1","Robson Akagui", "Akaguikenta@gmail.com", "Admin", true, 1);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Rafael Labegalini", "rafael.labegalini@gmail.com", "123Mudar@", true, 1);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Mario Silva", "mario.silva@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("João Neto", "joao.neto@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Carlo Ferrari", "carlo.ferrari@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Paulo Oliveira", "paulo.oliveira@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Ana Lima", "ana.lima@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Lucas Akio", "lucas.akio@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Lorena Akio", "lorena.akio@gmail.com", "123Mudar@", true, 0);

INSERT INTO users(name, email, senha, ativo, papel_id) 
VALUES ("Djverson Jubscreison", "Djverson.Jubscreion@gmail.com", "123Mudar@", true, 0);



