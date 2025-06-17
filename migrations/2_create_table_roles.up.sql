CREATE TABLE IF NOT EXISTS roles 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT roles_pkey PRIMARY KEY (id),
  CONSTRAINT roles_name_unique UNIQUE (name)
);

CREATE OR REPLACE RULE delete_roles_rule AS
    ON DELETE TO roles
    DO INSTEAD (
        UPDATE roles
        SET deleted_at = now()
        WHERE id = OLD.id
    );
