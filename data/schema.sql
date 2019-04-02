CREATE DATABASE kuorra_login;

USE kuorra_login;

CREATE TABLE users(
    username varchar(20) NOT NULL PRIMARY KEY,
    password varchar(32) NOT NULL,
    privilege integer NOT NULL DEFAULT -1,
    status integer NOT NULL DEFAULT 1,
    name varchar(150) NOT NULL,
    email varchar(100) NOT NULL,
    other_data varchar(50) NOT NULL,
    user_hash varchar(32) NOT NULL,
    change_pwd integer NOT NULL DEFAULT 1,
    created timestamp NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE sessions(
    session_id char(128) UNIQUE NOT NULL,
    atime timestamp NOT NULL default current_timestamp,
    data text
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE logs( 
    id_log integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username varchar(20) NOT NULL,
    ip varchar(16) NOT NULL,
    access timestamp NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO users (username, password, privilege, status, name, email, other_data, user_hash, change_pwd)
VALUES ('admin',MD5(concat('admin', 'kuorra_key')), 0, 1, 'Admin', 'admin@gmail.com','TIC:SI', MD5(concat('admin', 'kuorra_key', '2016/06/04')), 0),
('guess',MD5(concat('guess', 'kuorra_key')), 1, 1, 'Guess', 'guess@gmail.com','TIC:SI', MD5(concat('guess', 'kuorra_key','2016/06/04')), 0);



SELECT * FROM users;
SELECT * FROM sessions;

CREATE USER 'kuorra'@'localhost' IDENTIFIED BY 'kuorra.2018';
GRANT ALL PRIVILEGES ON kuorra_login.* TO 'kuorra'@'localhost';
FLUSH PRIVILEGES;

create table cliente (
      id_cliente int null auto_increment primary key,
      nombre varchar(20) not null,
      apellido_paterno varchar(30) not null,
      apellido_materno  varchar(30) not null,
      telefono char(10) not null,
      email varchar(50) not null
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;


insert into cliente (id_cliente,nombre,apellido_paterno,apellido_materno,telefono,email)values
     (1,'Alex','Lopez','Martinez','7751235689','leopa@hotmail.com'),
     (2,'Paloma','Luqueño','Perez','7756456890','palo@gmail.com'),
     (3,'Jose','Martinez','Hernandez','7752134900','carlos@hotmail.com');