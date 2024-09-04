-- Crear tabla CLIENTES
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    fecha_registro DATE NOT NULL
);

-- Crear tabla CATEGORIAS
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Crear tabla PRODUCTOS
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INTEGER NOT NULL,
    categoria_id INTEGER NOT NULL REFERENCES categorias(id)
);

-- Crear tabla VENTAS
CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    producto_id INTEGER NOT NULL REFERENCES productos(id),
    cliente_id INTEGER NOT NULL REFERENCES clientes(id),
    fechaventa DATE NOT NULL,
    cantidad INTEGER NOT NULL
);