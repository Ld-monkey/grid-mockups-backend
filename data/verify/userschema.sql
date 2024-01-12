-- Verify grid-mockups-backend:userschema on pg
BEGIN;

SELECT *
FROM users
WHERE FALSE;

ROLLBACK;