INSERT INTO users (state, name, lastname, email, password)
VALUES ('verified', 'Admin', 'Admin', 'admin@admin.com', '$2a$10$Eimi6mYCXTVvxgbm8bZo1.y58mwddcPKCTmterT.Hmnhj01nm4cdm'), -- admin
('verified', 'Support', 'Support', 'support@support.com', '$2a$10$gSinpyWRt.aUe/3aWhkgzeARD2DYfEgQwOlJ7s92Wj0.RSQZUX8Aa'), -- support
('registered', 'Name', 'Lastname', 'test@test.com', '$2a$10$EqnhRhSZsSjmHhP9FLONH.23oHBrTS0cXXGdvyfiPFReoNLceJk7W'); -- password 

INSERT INTO roles (name, description)
VALUES ('admin', 'Administrator with full features'),
('support', 'Support with support features'),
('user', 'User with basic features');

INSERT INTO permissions (name, description)
VALUES ('bots_feature', 'Вкладка с ботами'),
('roles_feature', 'Вкладка с ролями'),
('permissions_feature', 'Вкладка с возможностями'),
('projects_feature', 'Вкладка с проектами'),
('users_feature', 'Вкладка с пользователя'),
('articles_feature', 'Вкладка со статьями'),
('reports_feature', 'Вкладка с отчётами'),
('attachments_feature', 'Вкладка с файлами (приложения к статьям)'),
('generatedreports_feature', 'Вкладка с сгенерированными отчётами');

INSERT INTO role_permissions (role_id, permission_id, do_create, do_read, do_update, do_delete)
VALUES (1, 1, true, true, true, true),
(1, 2, true, true, true, true),
(1, 3, false, true, false, false),
(1, 4, true, true, true, true),
(1, 5, true, true, true, true),
(1, 6, true, true, true, true),
(1, 7, true, true, true, true),
(1, 8, true, true, true, true),
(1, 9, true, true, true, true),
(2, 1, false, true, false, false),
(2, 2, false, true, false, false),
(2, 3, false, true, false, false),
(2, 4, false, true, false, false),
(2, 5, false, true, false, false),
(2, 6, false, true, false, false),
(2, 7, false, true, true, false),
(2, 8, false, true, false, false),
(2, 9, false, false, false, false),
(3, 1, true, true, true, true),
(3, 2, false, true, false, false),
(3, 3, false, false, false, false),
(3, 4, true, true, true, true),
(3, 5, false, false, false, false),
(3, 6, true, true, true, true),
(3, 7, true, true, true, true),
(3, 8, true, true, true, true),
(3, 9, true, true, true, true);

INSERT INTO user_roles (role_id, user_id)
VALUES (1, 1),
(2, 2),
(3, 3);

INSERT INTO projects (name, description, remote_url, user_id)
VALUES ('Test project', 'Test project description', 'test.ru', 3),
('Big Black bear', 'Black medved project', 'medved.com', 3);

INSERT INTO articles (name, description, content, project_id)
VALUES ('Test article', 'Test article description', '<b>How to use list comprehension in Python</b>
    <i>List comprehension in Python is a concise way to create lists. It allows you to generate a new list by applying an expression to each item in an existing iterable (like a <code>list</code>, <code>tuple</code>, or <code>range</code>).</i>
    <pre>
      <code class="language-python">
        [expression for item in iterable if condition]
      </code>
    </pre>
    <b>Examples:</b>
    <b>1. Basic List Comprehension:</b>
    <i>Create a list of squares of numbers from 0 to 9.</i>
    <pre>
      <code class="language-python">
        squares = [x**2 for x in range(10)]
        print(squares)
        # Output: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
      </code>
    </pre>
    <b>2. List Comprehension with Condition:</b>
    <i>Create a list of even numbers from 0 to 9.</i>
    <pre>
      <code class="language-python">
        evens = [x for x in range(10) if x % 2 == 0]
        print(evens)
        # Output: [0, 2, 4, 6, 8]
      </code>
    </pre>
    <b>3. Nested List Comprehension:</b>
    <i>Flatten a 2D list (matrix) into a 1D list.</i>
    <pre>
      <code class="language-python">
        matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        flattened = [num for row in matrix for num in row]
        print(flattened)
        # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
      </code>
    </pre>
    <b>4. List Comprehension with Multiple Conditions:</b>
    <i>Create a list of numbers divisible by both 2 and 3 from 0 to 20.</i>
    <pre>
      <code class="language-python">
        divisible_by_2_and_3 = [x for x in range(21) if x % 2 == 0 and x % 3 == 0]
        print(divisible_by_2_and_3)
        # Output: [0, 6, 12, 18]
      </code>
    </pre>
    <b>5. List Comprehension with Function:</b>
    <i>Apply a function to each item in the list.</i>
    <pre>
      <code class="language-python">
        def double(x):
          return x * 2

        doubled = [double(x) for x in range(5)]
        print(doubled)
        # Output: [0, 2, 4, 6, 8]
      </code>
    </pre>', 1),
('Big Black bear', 'Black medved article', 'Black medved article content', 2);

INSERT INTO bots (project_id, name, description, state, user_id, api_token)
VALUES (1, 'Test project bot', 'Test project description', 'created', 3, '7672631119:AAEqdcBCTP1FEtS96JrVd1FU-Zc1JC8NLjo'),
(2, 'Big Black bear', 'Black medved project', 'created', 3, '7825041192:AAHhbiAv9Sove9-KpZApnLBtjLQUsrZ3E9c');

INSERT INTO reports (name, description, icon)
VALUES ('Общая статистика', 'Количество пользователей, заданные пользователями вопросы и их распределение по проектам', ''),
       ('Нерешённые вопросы', 'Статистика по нерешённым вопросам', '');

INSERT INTO generated_reports (user_id, report_id, object_id, content, date_from, date_to)
VALUES (3, 1, 'b1a88aaa-5163-4c2b-b19a-99fd494af507', '[{"project_id": "2", "question": "Настройка 1С", "telegram_id": "13312121", "article_name": "Настройка 1С по шагам", "date": "2025-02-11"}, {"project_id": "1", "question": "Как написать функцию на Python", "telegram_id": "13312142", "article_name": "Основы Python", "date": "2025-02-11"}]'::jsonb, '2025-02-01', '2025-02-11'),
       (3, 2, '45f39a35-56d3-4376-a7e0-e67d43416ce3', '[{"project_id": "2", "question": "Что делать если?", "telegram_id": "12321312", "date": "2025-02-11"}, {"project_id": "2", "question": "Как настроить настройки?", "telegram_id": "12321312", "date": "2025-02-11"}]'::jsonb, '2025-02-01', '2025-02-06');
