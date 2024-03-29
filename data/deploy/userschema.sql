-- Deploy grid-mockups-backend:userschema to pg

BEGIN;

CREATE TABLE users (
  id integer GENERATED ALWAYS AS IDENTITY,
  email text NOT NULL UNIQUE,
  password text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz, 
  PRIMARY KEY (id)
);

COMMIT;
