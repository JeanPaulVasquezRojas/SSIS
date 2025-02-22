
-- =============================================
-- Insertar cliente Prueba
-- =============================================

INSERT INTO Cliente (nombre, apellido, email, Fecha_Ingreso, Fecha_Actualizacion, id_lista_precio, Distrito, Canal_Ingreso)
VALUES 
('Luis', 'Gomez', 'luis.gomez@ejemplo.com', '2025-01-01', '2025-01-01', 1, 'Miraflores', 'Online'),
('Ana', 'Rojas', 'ana.rojas@ejemplo.com', '2025-02-10', '2025-02-10', 2, 'San Isidro', 'Sucursal');


-- =============================================
-- Insertar Productos Prueba
-- =============================================
INSERT INTO Producto (nombre, marca, idCategoria, idListaPrecio)
VALUES 
('Laptop Lenovo', 'Lenovo', 1, 1),
('Smartphone Samsung', 'Samsung', 1, 2);

-- =============================================
-- Actulizar Datos del Cliente
-- =============================================
UPDATE Cliente
SET email = 'luis.gomez_updated@example.com'
WHERE idCliente = 1;

-- =============================================
-- Cambiar Estado de Venta
-- =============================================
UPDATE VentaDocumento
SET estado = 'Completada'
WHERE idDocumento = 1;