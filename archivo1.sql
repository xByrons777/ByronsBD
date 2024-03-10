CREATE DATABASE Promos;

Use Promos;

CREATE TABLE Peliculas (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(255),
    duracion_minutos INT,
    clasificacion VARCHAR(50),
    genero VARCHAR(50)
);

CREATE TABLE Salas (
    id_sala INT PRIMARY KEY,
    nombre VARCHAR(255),
    capacidad INT
);

CREATE TABLE Horarios (
    id_horario INT PRIMARY KEY,
    hora_inicio TIME,
    hora_fin TIME
);

CREATE TABLE Funciones (
    id_funcion INT PRIMARY KEY,
    id_pelicula INT,
    id_sala INT,
    id_horario INT,
    fecha DATE,
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala),
    FOREIGN KEY (id_horario) REFERENCES Horarios(id_horario)
);

CREATE TABLE Promociones (
    id_promocion INT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    descuento DECIMAL(5,2),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE PromocionesFunciones (
    id_promocion_funcion INT PRIMARY KEY,
    id_promocion INT,
    id_funcion INT,
    FOREIGN KEY (id_promocion) REFERENCES Promociones(id_promocion),
    FOREIGN KEY (id_funcion) REFERENCES Funciones(id_funcion)
);

CREATE TABLE Disponibilidad (
    id_disponibilidad INT PRIMARY KEY,
    id_funcion INT,
    asientos_disponibles INT,
    FOREIGN KEY (id_funcion) REFERENCES Funciones(id_funcion)
);

