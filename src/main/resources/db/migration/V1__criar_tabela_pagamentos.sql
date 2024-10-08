CREATE TABLE IF NOT EXISTS pagamentos (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    valor decimal(19,2) NOT NULL,
    nome varchar(100) DEFAULT NULL,
    numero varchar(19) DEFAULT NULL,
    expiracao varchar(7) NOT NULL,
    codigo varchar(3) NOT NULL,
    status varchar(255) NOT NULL,
    forma_de_pagamento_id bigint(20) NOT NULL,
    pedido_id bigint(20) NOT NULL,
    PRIMARY KEY (id)
);