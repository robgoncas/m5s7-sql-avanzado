INSERT INTO categorias (nombre) VALUES
('Frutas'),
('Verduras'),
('Vinos'),
('Pescados y Mariscos'),
('Carnes'),
('Lácteos'),
('Bebidas'),
('Productos de Exportación'),
('Otros');

INSERT INTO productos (nombre, precio, categoria_id) VALUES
('Manzana Fuji', 1200, 1), -- Frutas
('Manzana Gala', 1100, 1),
('Uva de Mesa', 1500, 1),
('Cereza', 6000, 1),
('Arándano', 3000, 1),
('Kiwi', 1300, 1),
('Palta Hass', 4500, 1),
('Naranja', 900, 1),
('Limón de Pica', 700, 1),
('Frutilla', 2500, 1),

('Lechuga Escarola', 800, 2), -- Verduras
('Tomate Limachino', 1200, 2),
('Pimentón Rojo', 1400, 2),
('Papa Chilota', 600, 2),
('Zanahoria', 500, 2),
('Cebolla Morada', 900, 2),
('Ajo Chilote', 1300, 2),
('Zapallo Italiano', 700, 2),
('Brócoli', 1000, 2),
('Espárrago', 1700, 2),

('Vino Cabernet Sauvignon', 5000, 3), -- Vinos
('Vino Carmenere', 5500, 3),
('Vino Merlot', 4800, 3),
('Vino Chardonnay', 5200, 3),
('Vino Sauvignon Blanc', 5300, 3),

('Salmón Atlántico', 8000, 4), -- Pescados y Mariscos
('Reineta', 4500, 4),
('Congrio', 6000, 4),
('Camarón', 7500, 4),
('Ostiones', 12000, 4),

('Carne de Res', 10000, 5), -- Carnes
('Cordero Magallánico', 15000, 5),
('Cerdo', 8500, 5),
('Pollo', 5000, 5),
('Pavo', 6500, 5);

INSERT INTO clientes (nombre, email, fecha_registro) VALUES
('Andrea Gonzalez', 'andrea.gon@mail.com', '2024-02-18');

('María González', 'maria.gonzalez@mail.com', '2024-01-15'),
('Jorge Pérez', 'jorge.perez@mail.com', '2024-01-20'),
('Ana Martínez', 'ana.martinez@mail.com', '2024-01-25'),
('Carlos Díaz', 'carlos.diaz@mail.com', '2024-01-30'),
('Lorena Ríos', 'lorena.rios@mail.com', '2024-02-02'),
('Luis Castro', 'luis.castro@mail.com', '2024-02-05'),
('Patricia Navarro', 'patricia.navarro@mail.com', '2024-02-10'),
('Roberto Sánchez', 'roberto.sanchez@mail.com', '2024-02-12'),
('Fernanda Morales', 'fernanda.morales@mail.com', '2024-02-14'),
('Andrés Bravo', 'andres.bravo@mail.com', '2024-02-18');


-- Ventas en 2024
INSERT INTO ventas (producto_id, cliente_id, fechaventa, cantidad) VALUES
(1, 1, '2024-03-01', 10), 
(2, 2, '2024-03-02', 15), 
(3, 3, '2024-03-03', 8),  
(4, 4, '2024-03-04', 5),  
(5, 5, '2024-03-05', 12), 
(6, 6, '2024-03-06', 7),  
(7, 7, '2024-03-07', 20), 
(8, 8, '2024-03-08', 18), 
(9, 9, '2024-03-09', 14),
(10, 10, '2024-03-10', 25), 

(11, 1, '2024-03-11', 10), 
(12, 2, '2024-03-12', 15),
(13, 3, '2024-03-13', 8), 
(14, 4, '2024-03-14', 5), 
(15, 5, '2024-03-15', 12),
(16, 6, '2024-03-16', 7), 
(17, 7, '2024-03-17', 20),
(18, 8, '2024-03-18', 18),
(19, 9, '2024-03-19', 14),
(20, 10, '2024-03-20', 25),

(21, 1, '2024-03-21', 5),
(22, 2, '2024-03-22', 6),
(23, 3, '2024-03-23', 7),
(24, 4, '2024-03-24', 8),
(25, 5, '2024-03-25', 9),

(26, 6, '2024-03-26', 5),
(27, 7, '2024-03-27', 4),
(28, 8, '2024-03-28', 6),
(29, 9, '2024-03-29', 7),
(30, 10, '2024-03-30', 3);

-- Ventas en 2021
INSERT INTO ventas (producto_id, cliente_id, fechaventa, cantidad) VALUES
(1, 1, '2021-01-10', 12),
(2, 2, '2021-02-15', 8),
(3, 3, '2021-03-20', 10),
(4, 4, '2021-04-25', 6),
(5, 5, '2021-05-30', 15),
(6, 1, '2021-06-05', 20),
(7, 2, '2021-07-10', 25),
(8, 3, '2021-08-15', 5),
(9, 4, '2021-09-20', 18),
(10, 5, '2021-10-25', 14);

-- Ventas en 2022
INSERT INTO ventas (producto_id, cliente_id, fechaventa, cantidad) VALUES
(1, 1, '2022-01-12', 10),
(2, 2, '2022-02-18', 7),
(3, 3, '2022-03-22', 12),
(4, 4, '2022-04-27', 9),
(5, 5, '2022-05-01', 20),
(6, 1, '2022-06-06', 22),
(7, 2, '2022-07-11', 30),
(8, 3, '2022-08-16', 4),
(9, 4, '2022-09-21', 17),
(10, 5, '2022-10-26', 13);

-- Ventas en 2023
INSERT INTO ventas (producto_id, cliente_id, fechaventa, cantidad) VALUES
(1, 1, '2023-01-14', 11),
(2, 2, '2023-02-19', 9),
(3, 3, '2023-03-24', 13),
(4, 4, '2023-04-29', 7),
(5, 5, '2023-05-03', 18),
(6, 1, '2023-06-08', 24),
(7, 2, '2023-07-13', 28),
(8, 3, '2023-08-18', 3),
(9, 4, '2023-09-23', 16),
(10, 5, '2023-10-28', 12);