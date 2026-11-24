-- db/schema.sql — base de datos de ms-areas
SET NAMES utf8mb4;

CREATE TABLE areas (
  id                   INT AUTO_INCREMENT PRIMARY KEY,
  nombre_area          VARCHAR(80) NOT NULL,
  piso                 INT NOT NULL,
  max_tickets_alta     INT NOT NULL
);

INSERT INTO areas (nombre_area, piso, max_tickets_alta) VALUES
  ('Contabilidad', 2, 2),
  ('Gerencia', 5, 10),
  ('Bodega', 1, 0),
  ('Ventas', 3, 5);
