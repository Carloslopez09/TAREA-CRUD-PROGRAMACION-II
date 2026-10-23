CREATE DATABASE db_paqueteria;
USE db_paqueteria;

CREATE TABLE camionero (
    idCamionero INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    poblacion VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    dpi VARCHAR(13) NOT NULL UNIQUE,
    telefono VARCHAR(8) NOT NULL
    
);

CREATE TABLE camion (
    idCamion INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    potencia DECIMAL(10, 2) NOT NULL,
    noPlaca VARCHAR(10) NOT NUll UNIQUE
    
);

CREATE TABLE paquete (
    idPaquete INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL,
    destinatario VARCHAR(80) NOT NULL,
    peso DECIMAL(10,2) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    idCamionero INT NOT NULL,
    idCiudad INT NOT NULL,
    FOREIGN KEY (idCamionero) REFERENCES camionero(idCamionero),
    FOREIGN KEY (idCiudad) REFERENCES ciudad(idCiudad)
);

CREATE TABLE camionero_camion (
    idConductorCamion INT AUTO_INCREMENT PRIMARY KEY,
    idCamionero INT NOT NULL,
    idCamion INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (idCamionero) REFERENCES camionero(idCamionero),
    FOREIGN KEY (idCamion) REFERENCES camion(idCamion)
);