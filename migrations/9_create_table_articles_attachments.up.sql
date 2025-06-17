CREATE TABLE IF NOT EXISTS attachments_articles
(
  article_id BIGINT NOT NULL,
  attachment_id BIGINT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT article_attachments_pkey PRIMARY KEY (article_id, attachment_id),
  CONSTRAINT article_id_fkey FOREIGN KEY (article_id)
    REFERENCES articles (id) ON DELETE CASCADE,
  CONSTRAINT attachment_id_fkey FOREIGN KEY (attachment_id)
    REFERENCES attachments (id) ON DELETE CASCADE
);

CREATE OR REPLACE RULE delete_attachments_articles_rule AS
    ON DELETE TO attachments_articles
    DO INSTEAD (
        UPDATE attachments_articles
        SET deleted_at = now()
        WHERE article_id = OLD.article_id
          AND attachment_id = OLD.attachment_id
    );
