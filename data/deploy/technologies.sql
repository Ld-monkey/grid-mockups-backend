-- Deploy grid-mockups-backend:technologies to pg

BEGIN;

CREATE TABLE technologies (
  id integer GENERATED ALWAYS AS IDENTITY,
  label text NOT NULL UNIQUE,
  icon text UNIQUE,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz,
  PRIMARY KEY (id)
);

CREATE TABLE mockup_technology (
  id_mockup integer NOT NULL,
  id_technology integer NOT NULL,
  FOREIGN KEY (id_mockup) REFERENCES mockups(id),
  FOREIGN KEY (id_technology) REFERENCES technologies(id),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz
);

INSERT INTO technologies (label, icon, updated_at)
VALUES
    ('javascript', './public/icons/javascript.png', now()),
    ('typescript', './public/icons/typescript.png', now());

INSERT INTO mockup_technology (id_mockup, id_technology, updated_at)
VALUES
    (1, 1, now()),
    (1, 2, now());

COMMIT;
