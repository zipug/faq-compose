CREATE TABLE IF NOT EXISTS generated_reports
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  user_id BIGINT NOT NULL,
  report_id BIGINT NOT NULL,
  object_id TEXT NOT NULL,
  content JSONB NOT NULL,
  date_from TIMESTAMP NOT NULL,
  date_to TIMESTAMP NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  CONSTRAINT generated_reports_user_id_fkey_pkey PRIMARY KEY (id),
  CONSTRAINT generated_reports_user_id_fkey FOREIGN KEY (user_id)
    REFERENCES users (id) ON DELETE CASCADE,
  CONSTRAINT generated_reports_report_id_fkey FOREIGN KEY (report_id)
    REFERENCES reports (id) ON DELETE CASCADE,
  CONSTRAINT generated_reports_object_id_unique UNIQUE (object_id)
);

CREATE OR REPLACE RULE delete_generated_reports_rule AS
    ON DELETE TO generated_reports
    DO INSTEAD (
        UPDATE generated_reports
        SET deleted_at = now()
        WHERE id = OLD.id
    );
