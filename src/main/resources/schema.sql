CREATE TABLE IF NOT EXISTS categoria (
    id_categoria    INT          NOT NULL AUTO_INCREMENT,
    nombre          VARCHAR(50)  NOT NULL,
    descripcion     VARCHAR(200) NOT NULL,
    estado          BOOLEAN      NOT NULL DEFAULT 1, -- 🌟 Cambiado a BOOLEAN
    PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario        INT          NOT NULL AUTO_INCREMENT,
    nombre            VARCHAR(50)  NOT NULL,
    apellido_paterno  VARCHAR(50)  NOT NULL,
    apellido_materno  VARCHAR(50)  NOT NULL,
    email             VARCHAR(100) NOT NULL,
    contrasena        VARCHAR(100) NOT NULL,
    rol               VARCHAR(20)  NOT NULL,
    estado            BOOLEAN      NOT NULL DEFAULT 1, -- 🌟 Cambiado a BOOLEAN
    fecha_creacion    DATE         NOT NULL,
    PRIMARY KEY (id_usuario),
    CONSTRAINT uk_usuario_email UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS evento (
    id_evento         INT            NOT NULL AUTO_INCREMENT,
    id_categoria      INT            NOT NULL,
    titulo            VARCHAR(100)   NOT NULL,
    descripcion       VARCHAR(500)   NOT NULL,
    fecha_evento      DATE           NOT NULL,
    hora              TIME           NOT NULL,
    precio            DECIMAL(10, 2) NOT NULL,
    lugar             VARCHAR(150)   NOT NULL,
    aforo_total       INT            NOT NULL,
    aforo_disponible  INT            NOT NULL,
    imagen_url        VARCHAR(255)   NOT NULL,
    estado            BOOLEAN        NOT NULL DEFAULT 1,  -- 🌟 Cambiado a BOOLEAN
    destacado         BOOLEAN        NOT NULL DEFAULT 0, -- 🌟 Cambiado a BOOLEAN
    PRIMARY KEY (id_evento),
    CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS ticket (
    id_ticket     INT            NOT NULL AUTO_INCREMENT,
    id_usuario    INT            NOT NULL,
    id_evento     INT            NOT NULL,
    id_categoria  INT            NOT NULL,
    cantidad      INT            NOT NULL,
    subtotal      DECIMAL(10, 2) NOT NULL,
    total         DECIMAL(10, 2) NOT NULL,
    fecha_compra  DATE           NOT NULL,
    estado        BOOLEAN        NOT NULL DEFAULT 1, -- 🌟 Cambiado a BOOLEAN
    tipo_pago     VARCHAR(50)    NOT NULL,
    detalle       VARCHAR(255)   NOT NULL,
    PRIMARY KEY (id_ticket),
    CONSTRAINT fk_ticket_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    CONSTRAINT fk_ticket_evento  FOREIGN KEY (id_evento)  REFERENCES evento(id_evento),
    CONSTRAINT fk_ticket_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);