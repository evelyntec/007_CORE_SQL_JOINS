CREATE DATABASE sistema_inscripciones;
USE sistema_inscripciones;

CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    edad INT
);

CREATE TABLE cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    duracion VARCHAR(50)
);

CREATE TABLE inscripciones (
    id_estudiante INT,
    id_curso INT,
    PRIMARY KEY (id_estudiante, id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE
);

INSERT INTO estudiantes (nombre, edad) VALUES
('Evelyn Alvarez', 44),
('Carlos Mendoza', 30),
('Ana Silva', 28),
('Pedro Gomez', 35),
('Luis Perez', 22); 

INSERT INTO cursos (nombre, duracion) VALUES
('Java Spring Boot', '3 meses'),
('Bases de Datos SQL', '2 meses'),
('Desarrollo Frontend', '4 meses'),
('Arquitectura de Software', '2 meses');

INSERT INTO inscripciones (id_estudiante, id_curso) VALUES
(1, 1), (1, 2),
(2, 2), (2, 3),
(3, 1), (3, 4),
(4, 3), (4, 4);

SELECT e.nombre AS estudiante, c.nombre AS curso
FROM estudiantes e
INNER JOIN inscripciones i ON e.id = i.id_estudiante
INNER JOIN cursos c ON i.id_curso = c.id;

SELECT e.nombre AS estudiante
FROM estudiantes e
INNER JOIN inscripciones i ON e.id = i.id_estudiante
INNER JOIN cursos c ON i.id_curso = c.id
WHERE c.nombre = 'Bases de Datos SQL';

SELECT c.nombre AS curso
FROM cursos c
INNER JOIN inscripciones i ON c.id = i.id_curso
INNER JOIN estudiantes e ON i.id_estudiante = e.id
WHERE e.nombre = 'Evelyn Alvarez';

SELECT c.nombre AS curso, COUNT(i.id_estudiante) AS total_estudiantes
FROM cursos c
LEFT JOIN inscripciones i ON c.id = i.id_curso
GROUP BY c.id, c.nombre;

SELECT e.nombre AS estudiante_sin_curso
FROM estudiantes e
LEFT JOIN inscripciones i ON e.id = i.id_estudiante
WHERE i.id_curso IS NULL;