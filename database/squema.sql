CREATE TABLE Usuarios (
    -- Campos completados por el Usuario
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cuit VARCHAR(11) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    celular VARCHAR(20),
    password_hash VARCHAR(255) NOT NULL, -- Siempre guardar contraseñas encriptadas
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Campos completados por el Administrador
    id_vendedor INT NULL,
    id_proveedor INT NULL,
    id_cliente INT NULL,
    segmento_cliente ENUM('Agencia', 'Promotor') DEFAULT 'Agencia',
    categoria_cliente ENUM('S', 'M', 'L', 'XL') DEFAULT 'S',
    estado_cuenta ENUM('Pendiente', 'Activo', 'Suspendido') DEFAULT 'Pendiente'
);