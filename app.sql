CREATE DATABASE pagina_web_db;

USE pagina_web_db;

-- Crear una tabla
CREATE TABLE tareas(
    id INT PRIMARY KEY AUTO_INCREMENT, /* primary key nos indica q es algo importante y se pone para q cumpla ser una llave primaria y asi va a funcionar como identificador unico*/
    
    texto VARCHAR (500), 
    completada TINYINT (1) DEFAULT 0,
    lista_id INT NOT NULL,
     FOREIGN KEY (lista_id) REFERENCES listas(id)
);
CREATE TABLE listas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (30),
    expandida TINYINT (1) DEFAULT 1
   
    );


--Muestra las bases de datos existentes
SHOW DATABASES;

SHOW TABLES;

SELECT * FROM tareas;
