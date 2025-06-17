UPDATE role_permissions
SET do_create = true, do_read = true, do_update = true, do_delete = true
WHERE role_id = 3 AND permission_id = 5;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 5;
