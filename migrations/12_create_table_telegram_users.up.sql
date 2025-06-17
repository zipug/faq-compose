CREATE TABLE IF NOT EXISTS telegram_users
(
  telegram_id BIGINT NOT NULL,
  first_name TEXT DEFAULT NULL,
  last_name TEXT DEFAULT NULL,
  username TEXT DEFAULT NULL,
  chat_id BIGINT DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT telegram_users_pkey PRIMARY KEY (telegram_id)
);
