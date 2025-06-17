UPDATE role_permissions
SET do_create = TRUE, do_read = TRUE, do_update = FALSE, do_delete = FALSE
WHERE role_id = 3
  AND permission_id = 5;
