ALTER TABLE statistics
  ADD COLUMN parent_id BIGINT DEFAULT NULL REFERENCES statistics (id);
