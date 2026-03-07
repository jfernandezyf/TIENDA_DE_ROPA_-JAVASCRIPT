-- Creación de la tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(255)
);

-- Inserción de 5 productos de prueba
INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
('Camiseta Básica', 'Camiseta de algodón 100% en color blanco', 15.99, 'https://example.com/images/camiseta-blanca.jpg'),
('Pantalón Vaquero', 'Pantalón vaquero de corte recto y color azul', 39.95, 'https://example.com/images/vaquero-azul.jpg'),
('Sudadera con Capucha', 'Sudadera deportiva con capucha y bolsillo canguro', 29.99, 'https://example.com/images/sudadera-gris.jpg'),
('Zapatillas Deportivas', 'Zapatillas ligeras para correr, color negro', 45.00, 'https://example.com/images/zapatillas-negras.jpg'),
('Chaqueta de Invierno', 'Chaqueta acolchada para climas fríos', 59.90, 'https://example.com/images/chaqueta-azul.jpg');
