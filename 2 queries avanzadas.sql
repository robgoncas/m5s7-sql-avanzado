select * from categorias;

select * from clientes;

select * from productos;

select * from categorias;

-- 1
SELECT productos.nombre AS nombre_producto, 
categorias.nombre AS nombre_categoria
FROM productos
INNER JOIN categorias ON productos.categoria_id = categorias.id

-- 2
SELECT clientes.nombre AS nombreCliente,
ventas.fechaventa AS fechaVentaProducto,
productos.nombre AS nombreProducto
FROM clientes
LEFT JOIN ventas ON clientes.id = ventas.cliente_id
LEFT JOIN productos ON ventas.producto_id = productos.id
ORDER BY nombreCliente ASC, fechaVentaProducto ASC

--4

SELECT nombre, precio
FROM productos
WHERE precio > (SELECT AVG(precio)
FROM productos)

-- 5
SELECT cat.nombre AS nombre_categoria, 
COUNT(prod.id) AS total_productos

FROM categorias AS cat

LEFT JOIN productos AS prod ON cat.id = prod.categoria_id
GROUP BY cat.nombre;

--6
SELECT nombre
FROM clientes AS cl
WHERE NOT EXISTS 
(SELECT 1 
 FROM ventas AS v 
 WHERE v.cliente_id = cl.id
);



--7 
SELECT EXTRACT(YEAR FROM fechaventa) AS anioVenta,
COUNT(id) AS cantidadVentas
FROM ventas
GROUP BY anioVenta
ORDER BY anioVenta ASC


--10
SELECT nombre, precio, 
       CASE
           WHEN precio < 100 THEN 'Bajo'
           WHEN precio BETWEEN 100 AND 500 THEN 'Medio'
           ELSE 'Alto'
       END AS categoria_precio
FROM productos
ORDER BY precio ASC

SELECT * FROM (
(SELECT id, nombre, 'Cliente' as tipo FROM clientes order by nombre)
UNION
(SELECT id, nombre, 'Categoria' as tipo FROM categorias order by nombre)

)
ORDER BY tipo