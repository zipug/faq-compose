CREATE TABLE IF NOT EXISTS role_permissions
(
  role_id BIGINT NOT NULL,
  permission_id BIGINT NOT NULL,
  do_create BOOLEAN DEFAULT FALSE,
  do_read BOOLEAN DEFAULT FALSE,
  do_update BOOLEAN DEFAULT FALSE,
  do_delete BOOLEAN DEFAULT FALSE,
  CONSTRAINT role_permissions_pkey PRIMARY KEY (role_id, permission_id),
  CONSTRAINT role_permissions_role_id_fkey FOREIGN KEY (role_id)
    REFERENCES roles (id) ON DELETE CASCADE,
  CONSTRAINT role_permissions_permission_id_fkey FOREIGN KEY (permission_id)
    REFERENCES permissions (id) ON DELETE CASCADE
);
