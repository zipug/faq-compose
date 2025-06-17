UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 6;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 8;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 3;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 2;

UPDATE role_permissions
SET do_create = false, do_read = true, do_update = false, do_delete = false
WHERE role_id = 2 AND permission_id = 5;

UPDATE permissions
SET description = 'Вкладка с пользователями'
WHERE id = 5;

UPDATE role_permissions
SET do_create = false, do_read = true, do_update = true, do_delete = false
WHERE role_id = 3 AND permission_id = 7;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 3 AND permission_id = 2;
