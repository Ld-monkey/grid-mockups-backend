-- Revert grid-mockups-backend:type_project from pg

BEGIN;

-- XXX Add DDLs here.
DROP TABLE type CASCADE;

DROP TABLE mockup_type;

COMMIT;
