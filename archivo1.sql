
CREATE TABLE Funciones (
    id_funcion INT PRIMARY KEY,
    id_pelicula INT,
    id_sala INT,
    id_horario INT,
    fecha DATE,
    FOREIGN KEY (id_pelicula) REFERENCES Pelicula(id_pelicula),
    FOREIGN KEY (id_sala) REFERENCES Sala(id_sala),
    FOREIGN KEY (id_horario) REFERENCES Horarios_de_proyec(id_horario)
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

