-- Deploy grid-mockups-backend:type_project to pg

BEGIN;

CREATE TABLE type (
  id smallserial,
  backend boolean,
  frontend boolean,
  create_at timestamptz NOT NULL DEFAULT now(),
  update_at timestamptz,
  PRIMARY KEY (id)
);

CREATE TABLE mockup_type (
  id_mockup integer NOT NULL,
  id_type integer NOT NULL,
  FOREIGN KEY (id_mockup) REFERENCES mockups(id),
  FOREIGN KEY (id_type) REFERENCES type(id),
  create_at timestamptz NOT NULL DEFAULT now(),
  update_at timestamptz
);

-- Define 1) backend, 2) frontend and 3) fullstack.
INSERT INTO type (id, backend, frontend, update_at)
VALUES
    (1, true, false, now()),
    (2, false, true, now()),
    (3, true, true, now());

INSERT INTO mockup_type (id_mockup, id_type, update_at)
VALUES
    (1, 3, now());

COMMIT;
