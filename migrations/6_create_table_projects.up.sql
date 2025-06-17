CREATE TABLE IF NOT EXISTS projects 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  avatar_url TEXT DEFAULT NULL,
  remote_url TEXT NOT NULL,
  user_id BIGINT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT projects_pkey PRIMARY KEY (id),
  CONSTRAINT projects_user_id_fkey FOREIGN KEY (user_id)
    REFERENCES users (id) ON DELETE CASCADE,
  CONSTRAINT projects_name_unique UNIQUE (name)
);

CREATE OR REPLACE RULE delete_projects_rule AS
    ON DELETE TO projects 
    DO INSTEAD (
        UPDATE projects 
        SET deleted_at = now()
        WHERE id = OLD.id
    );
