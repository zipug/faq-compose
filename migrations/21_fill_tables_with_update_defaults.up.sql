UPDATE articles
SET content = '*How to use list comprehension in Python*
_List comprehension in Python is a concise way to create lists. It allows you to generate a new list by applying an expression to each item in an existing iterable (like a `list`, `tuple`, or `range`)._
```python
  [expression for item in iterable if condition]
```
*Examples:*
_Create a list of squares of numbers from 0 to 9._
```python
  squares = [x**2 for x in range(10)]
  print(squares)
  # Output: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```
'
WHERE id = 1;

UPDATE permissions
SET name = 'chats_feature', description = 'Вкладка с чатами'
WHERE id = 7;

UPDATE role_permissions
SET do_create = false, do_read = false, do_update = false, do_delete = false
WHERE role_id = 1 AND permission_id = 7;

UPDATE role_permissions
SET do_create = true, do_read = true, do_update = true, do_delete = true
WHERE role_id = 2 AND permission_id = 7;

UPDATE role_permissions
SET do_create = false, do_read = true, do_update = false, do_delete = false
WHERE role_id = 3 AND permission_id = 7;

DELETE FROM role_permissions
WHERE permission_id = 9;

DELETE FROM permissions
WHERE id = 9;
