CREATE TABLE empresas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit INT(45),
    telefono INT(20),
    direccion VARCHAR(45)
)

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(45)
)

CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45)
)

CREATE TABLE ciudad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
)

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(45),
    contraseña VARCHAR(45),
    edad DATE,
    genero VARCHAR(10),
    altura VARCHAR(10),
    peso VARCHAR(10)
)

/* Insert */

INSERT INTO empresas (nombre, nit, telefono, direccion) VALUES ('Juan', 12345678, 1235456, 'calle1#4-5');

INSERT INTO vehiculos(placa,modelo,marca,color,tipo_vehiculo) VALUES('okl33f', '2013', 'honda', 'blanco', 'moto')


INSERT INTO paises(nombres) VALUES('Colombia')

INSERT INTO ciudad(nombre) VALUES ('Medellin')

INSERT INTO usuarios(nombre,apellidos, correo, contraseña, edad, genero, altura, peso) VALUES ('Juan', 'Sanabria', 'juan@gmail.com', '123456', '2024-05-04', 'masculino', '1.79', '65kg')

DROP TABLE usuarios

SELECT nombre,edad,genero FROM usuarios

UPDATE ciudad SET nombre='Bogota' WHERE nombre='Medellin'

SELECT * FROM ciudad