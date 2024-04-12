-- Crear la tabla de Áreas
CREATE TABLE Areas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

-- Crear la tabla de Cuidadores
CREATE TABLE Cuidadores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono VARCHAR(20),
    correo VARCHAR(100)
);

-- Crear la tabla de Hábitats
CREATE TABLE Habitats (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

-- Crear la tabla de Animales
CREATE TABLE Animales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    especie VARCHAR(100),
    edad INTEGER,
    sexo CHAR(1),
    fecha_ingreso TIMESTAMP,
    id_area INTEGER REFERENCES Areas(id)
);

-- Crear la tabla de Alimentación
CREATE TABLE Alimentacion (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    tipo VARCHAR(100),
    cantidad INTEGER,
    id_animal INTEGER REFERENCES Animales(id)
);

-- Crear la tabla de Visitas
CREATE TABLE Visitas (
    id SERIAL PRIMARY KEY,
    id_animal INTEGER REFERENCES Animales(id),
    id_visitante INTEGER,
    fecha TIMESTAMP,
    observaciones TEXT
);