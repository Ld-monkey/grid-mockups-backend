-- Revert grid-mockups-backend:mockupschema from pg

BEGIN;

DROP TABLE mockups;

COMMIT;
