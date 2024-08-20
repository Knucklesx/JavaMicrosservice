CREATE DATABASE IF NOT EXISTS JavaMicrosservice;

USE pagamentos;

CREATE TABLE IF NOT EXISTS pagamentos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10, 2) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    numero VARCHAR(19) NOT NULL,
    expiracao VARCHAR(7) NOT NULL,
    codigo VARCHAR(3) NOT NULL,
    status VARCHAR(255) NOT NULL,
    pedido_id BIGINT NOT NULL,
    forma_de_pagamento_id BIGINT NOT NULL
    );