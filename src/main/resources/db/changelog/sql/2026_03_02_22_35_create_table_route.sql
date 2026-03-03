CREATE TABLE IF NOT EXISTS route (
    id BIGINT PRIMARY KEY,
    id_origin BIGINT NOT NULL,
    id_destination BIGINT NOT NULL,
    distance_km NUMERIC(10,2) NOT NULL,
    CONSTRAINT fk_route_origin  FOREIGN KEY (id_origin)  REFERENCES city(id),
    CONSTRAINT fk_route_destination FOREIGN KEY (id_destination) REFERENCES city(id),
);


CREATE INDEX IF NOT EXISTS idx_route_origin  ON rota (id_origin);
CREATE INDEX IF NOT EXISTS idx_route_destination ON rota (id_destination);
CREATE INDEX IF NOT EXISTS idx_rota_origin_destination ON rota (id_origin, id_destination);