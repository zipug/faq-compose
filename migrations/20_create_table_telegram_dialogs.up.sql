CREATE TABLE IF NOT EXISTS telegram_dialogs
(
  telegram_id BIGINT NOT NULL,
  project_id BIGINT NOT NULL,
  dialog JSONB DEFAULT '[]'::jsonb,
  CONSTRAINT telegram_dialogs_pkey PRIMARY KEY (telegram_id, project_id),
  CONSTRAINT telegram_dialogs_telegram_id_fkey FOREIGN KEY (telegram_id)
    REFERENCES telegram_users (telegram_id) ON DELETE CASCADE,
  CONSTRAINT telegram_dialogs_project_id_fkey FOREIGN KEY (project_id)
    REFERENCES projects (id) ON DELETE CASCADE
);
