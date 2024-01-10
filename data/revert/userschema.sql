-- Revert grid-mockups-backend:userschema from pg

BEGIN;

DROP TABLE users;

COMMIT;
