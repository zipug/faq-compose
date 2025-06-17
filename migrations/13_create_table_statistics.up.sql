CREATE TABLE IF NOT EXISTS statistics
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  bot_id BIGINT NOT NULL,
  telegram_id BIGINT NOT NULL,
  question TEXT DEFAULT NULL,
  article_id BIGINT DEFAULT NULL REFERENCES articles (id),
  article_name TEXT NOT NULL,
  is_resolved BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT statistics_pkey PRIMARY KEY (id),
  CONSTRAINT statistics_bot_id_fkey FOREIGN KEY (bot_id)
    REFERENCES bots (id) ON DELETE CASCADE,
  CONSTRAINT statistics_telegram_id_fkey FOREIGN KEY (telegram_id)
    REFERENCES telegram_users (telegram_id) ON DELETE CASCADE
);
