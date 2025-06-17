CREATE TABLE IF NOT EXISTS articles 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  content TEXT DEFAULT NULL,
  project_id BIGINT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT articles_pkey PRIMARY KEY (id),
  CONSTRAINT articles_project_id_fkey FOREIGN KEY (project_id)
    REFERENCES projects (id) ON DELETE CASCADE
);

CREATE OR REPLACE RULE delete_articles_rule AS
    ON DELETE TO articles 
    DO INSTEAD (
        UPDATE articles 
        SET deleted_at = now()
        WHERE id = OLD.id
    );
