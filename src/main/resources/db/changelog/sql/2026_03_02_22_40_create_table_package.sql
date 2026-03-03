CREATE TABLE IF NOT EXISTS package (
    id BIGINT PRIMARY KEY,
    tracking_code VARCHAR(255) NOT NULL,
    weight_kg NUMERIC(10,3) NOT NULL DEFAULT 0,
    declareted_value NUMERIC(12,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    created_by VARCHAR(255) NOT NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_by VARCHAR(255) NOT NULL,
    CONSTRAINT uk_tracking_code UNIQUE (tracking_code),
);

CREATE INDEX IF NOT EXISTS idx_package_created_at ON package (created_at);