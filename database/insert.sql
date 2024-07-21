USE TODOLISTDB;

INSERT INTO users (name, email, password) VALUES
('jose', 'jose@email.com', 'jose'),
('joao', 'joao@email.com', 'joao'),
('maria', 'maria@email.com', 'maria');


INSERT INTO tasks (name, description, priority, isEnded, due_date, user_id) VALUES
('limpar casa',  'limpar toda a casa',            'high',   'false', '2024-08-01', 1),
('estudar',      'estudar matematica',            'medium', 'false', '2024-08-02', 2),
('programar',    'pragromar algoritmo djisktras', 'low',    'false', '2024-08-02', 3),
('ler livro',    'ler poesia',                    'medium', 'false', '2024-08-02', 1),
('arrumar cama', 'arrumar a cama e limpar',       'low',    'true', '2024-08-03',  2);
