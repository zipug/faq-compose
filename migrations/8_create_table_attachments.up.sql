CREATE TABLE IF NOT EXISTS attachments
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  description TEXT DEFAULT NULL,
  object_id TEXT NOT NULL,
  mimetype VARCHAR(30) NOT NULL,
  user_id BIGINT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT attachments_pkey PRIMARY KEY (id),
  CONSTRAINT attachments_object_id_unique UNIQUE (object_id)
);

CREATE OR REPLACE RULE delete_attachments_rule AS
    ON DELETE TO attachments
    DO INSTEAD (
        UPDATE attachments
        SET deleted_at = now()
        WHERE id = OLD.id
    );
