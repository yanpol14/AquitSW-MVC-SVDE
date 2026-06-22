CREATE TABLE IF NOT EXISTS categoria (
    id_categoria    VARCHAR(10)  NOT NULL,
    nombre          VARCHAR(50)  NOT NULL,
    descripcion     VARCHAR(200),
    estado          INT          NOT NULL DEFAULT 1,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario        VARCHAR(10)  NOT NULL,
    nombre            VARCHAR(50)  NOT NULL,
    apellido_paterno  VARCHAR(50)  NOT NULL,
    apellido_materno  VARCHAR(50)  NOT NULL,
    email             VARCHAR(100) NOT NULL,
    contrasena        VARCHAR(100) NOT NULL,
    rol               VARCHAR(20)  NOT NULL,
    estado            INT          NOT NULL DEFAULT 1,
    fecha_creacion    DATE,
    PRIMARY KEY (id_usuario),
    CONSTRAINT uk_usuario_email UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS evento (
    id_evento         VARCHAR(10)    NOT NULL,
    id_categoria      VARCHAR(10)    NOT NULL,
    titulo            VARCHAR(100)   NOT NULL,
    descripcion       VARCHAR(500),
    fecha_evento      DATE,
    hora              TIME,
    precio            DECIMAL(10, 2) NOT NULL,
    lugar             VARCHAR(150),
    aforo_total       INT,
    aforo_disponible  INT,
    imagen_url        VARCHAR(255),
    estado            INT            NOT NULL DEFAULT 1,
    tipo_entrada      INT            NOT NULL DEFAULT 1,
    PRIMARY KEY (id_evento),
    CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS ticket (
    id_ticket     VARCHAR(20)    NOT NULL,
    id_usuario    VARCHAR(10)    NOT NULL,
    id_evento     VARCHAR(10)    NOT NULL,
    id_categoria  VARCHAR(10)    NOT NULL,
    cantidad      INT            NOT NULL,
    subtotal      DECIMAL(10, 2) NOT NULL,
    total         DECIMAL(10, 2) NOT NULL,
    fecha_compra  DATE           NOT NULL,
    estado        INT            NOT NULL DEFAULT 1,
    tipo_pago     VARCHAR(50),
    detalle       VARCHAR(255),
    PRIMARY KEY (id_ticket),
    CONSTRAINT fk_ticket_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    CONSTRAINT fk_ticket_evento  FOREIGN KEY (id_evento)  REFERENCES evento(id_evento),
    CONSTRAINT fk_ticket_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);
