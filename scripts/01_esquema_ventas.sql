-- Crear esquema de Ventas
CREATE SCHEMA ventas;

-- Tabla de Clientes
CREATE TABLE ventas.clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE DEFAULT CURRENT_DATE
);

-- Tabla de Pedidos
CREATE TABLE ventas.pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT REFERENCES ventas.clientes(id_cliente),
    monto_total DECIMAL(10, 2) NOT NULL,
    fecha_pedido DATE DEFAULT CURRENT_DATE
);
