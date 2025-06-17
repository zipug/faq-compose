UPDATE role_permissions
SET do_create = false, do_read = true, do_update = false, do_delete = false
WHERE role_id = 3 AND permission_id = 2;
