-- Revert grid-mockups-backend:technologies from pg

BEGIN;

-- XXX Add DDLs here.
DROP TABLE technologies CASCADE;

DROP TABLE mockup_technology;

COMMIT;
