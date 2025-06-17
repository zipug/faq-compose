ALTER TABLE users ADD COLUMN created_by BIGINT DEFAULT NULL;
UPDATE users
SET created_by = 3
WHERE id = 2;
