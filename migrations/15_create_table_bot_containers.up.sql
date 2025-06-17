CREATE TABLE IF NOT EXISTS bot_containers
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  container_name TEXT DEFAULT NULL,
  port integer NOT NULL,
  container_id TEXT NOT NULL,
  bot_id BIGINT NOT NULL,
  project_id BIGINT NOT NULL,
  user_id BIGINT NOT NULL,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  icon VARCHAR(50) DEFAULT NULL,
  state TEXT NOT NULL,
  api_token TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT bot_containers_pkey PRIMARY KEY (id),
  CONSTRAINT bot_containers_state_check CHECK (state IN ('created', 'running', 'stopped', 'deleted')),
  CONSTRAINT bot_containers_bot_id_fkey FOREIGN KEY (bot_id)
    REFERENCES bots (id) ON DELETE CASCADE,
  CONSTRAINT bot_containers_project_id_fkey FOREIGN KEY (project_id)
    REFERENCES projects (id) ON DELETE CASCADE,
  CONSTRAINT bot_containers_user_id_fkey FOREIGN KEY (user_id)
    REFERENCES users (id) ON DELETE CASCADE
);

CREATE OR REPLACE RULE delete_bot_containers_rule AS
    ON DELETE TO bot_containers
    DO INSTEAD (
        UPDATE bot_containers
        SET deleted_at = now()
        WHERE id = OLD.id
    );
