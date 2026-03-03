CREATE TABLE IF NOT EXISTS delivery (
    id BIGINT PRIMARY KEY,
    id_package BIGINT NOT NULL REFERENCES package(id),
    id_origin BIGINT NOT NULL REFERENCES city(id),
    id_destination BIGINT NOT NULL REFERENCES city(id),
    status VARCHAR(255) NOT NULL,
    priority VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    created_by VARCHAR(255) NOT NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_by VARCHAR(255) NOT NULL,
    );


CREATE INDEX IF NOT EXISTS idx_delivery_status ON delivery (status);
CREATE INDEX IF NOT EXISTS idx_delivery_origin ON delivery (id_origin);
CREATE INDEX IF NOT EXISTS idx_delivery_destination ON delivery (id_destination);
CREATE INDEX IF NOT EXISTS idx_delivery_package ON delivery (id_package);
CREATE INDEX IF NOT EXISTS idx_delivery_updated_at ON delivery (updated_at);