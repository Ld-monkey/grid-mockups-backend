-- Deploy grid-mockups-backend:mockupschema to pg

BEGIN;

CREATE TABLE mockups (
  id integer GENERATED ALWAYS AS IDENTITY,
  id_user integer,
  title text NOT NULL,
  "description" CHAR (300),
  preview text,
  source_code text,
  "date" date NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz,
  PRIMARY KEY (id),
  FOREIGN KEY (id_user) REFERENCES users(id)
);

INSERT INTO mockups (id_user, title, description, preview, source_code, "date", updated_at)
VALUES (
    1,
    'faq-accordion-main',
    'An other front end mentor exercice',
    './public/images/1234.gif',
    'https://github.com/user-example/faq-accordion-main',
    '2024-01-12',
    now()
);

COMMIT;
