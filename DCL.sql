
-- ROLES
-- Rol para administradores con control total
CREATE ROLE rol_admin;

-- Rol para el equipo de ventas, solo pueden insertar y consultar
CREATE ROLE rol_ventas;

-- Rol para analistas, acceso solo de lectura
CREATE ROLE rol_analista;


-- PERMISOS
-- Conceder permisos totales
GRANT SELECT, INSERT, UPDATE, DELETE ON Cliente TO rol_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Producto TO rol_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON VentaDocumento TO rol_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON DetalleVenta TO rol_admin;

-- Conceder acceso solo a lectura,
GRANT SELECT ON VentaDocumento TO rol_ventas;
GRANT SELECT ON DetalleVenta TO rol_ventas;

-- Permitir consultar clientes
GRANT SELECT ON Cliente TO rol_ventas;

-- Analistas
-- Permisos de solo lectura
GRANT SELECT ON Cliente TO rol_analista;
GRANT SELECT ON Producto TO rol_analista;
GRANT SELECT ON VentaDocumento TO rol_analista;
GRANT SELECT ON DetalleVenta TO rol_analista;

-- Crear usuario de administrador
CREATE LOGIN admin_user WITH PASSWORD = 'Admin123!';
CREATE USER admin_user FOR LOGIN admin_user;
ALTER ROLE rol_admin ADD MEMBER admin_user;

-- Crear usuario de ventas
CREATE LOGIN ventas_user WITH PASSWORD = 'Ventas123!';
CREATE USER ventas_user FOR LOGIN ventas_user;
ALTER ROLE rol_ventas ADD MEMBER ventas_user;

-- Crear usuario analista
CREATE LOGIN analista_user WITH PASSWORD = 'Analista123!';
CREATE USER analista_user FOR LOGIN analista_user;
ALTER ROLE rol_analista ADD MEMBER analista_user;

-- Denegar Acceso Específico
DENY SELECT ON Cliente(email) TO rol_analista;