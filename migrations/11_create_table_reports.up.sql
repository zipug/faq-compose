CREATE TABLE IF NOT EXISTS reports 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  icon VARCHAR(50) DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT reports_pkey PRIMARY KEY (id),
  CONSTRAINT reports_name_unique UNIQUE (name)
);

CREATE OR REPLACE RULE delete_reports_rule AS
    ON DELETE TO reports 
    DO INSTEAD (
        UPDATE reports 
        SET deleted_at = now()
        WHERE id = OLD.id
    );
