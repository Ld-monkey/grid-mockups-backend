-- Verify grid-mockups-backend:mockupschema on pg

BEGIN;

SELECT * FROM mockups;

ROLLBACK;
