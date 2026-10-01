# 🎓 SQL · Consultas con JOIN: estudiantes, cursos e inscripciones

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?logo=mysql&logoColor=white)

Modelo **muchos a muchos** entre estudiantes y cursos, resuelto con una tabla intermedia de inscripciones, más un conjunto de consultas para analizar la información.

> Ejercicio del **Bootcamp Full Stack Java (2026)**.

## 🔎 Consultas incluidas

- Cada estudiante con los cursos en que está inscrito (doble `INNER JOIN`).
- Estudiantes inscritos en un curso determinado.
- Cursos que toma un estudiante determinado.
- **Total de estudiantes por curso**, incluso cursos sin inscritos (`LEFT JOIN` + `COUNT`).
- Estudiantes que todavía no se inscriben en ningún curso.

## 🧠 Conceptos aplicados

Relación muchos a muchos · tabla intermedia · `INNER JOIN` · `LEFT JOIN` · `COUNT` · `GROUP BY` · alias de tablas

## ▶️ Cómo ejecutarlo

```bash
mysql -u root -p < consultas_inscripciones.sql
```

---

## 👩‍💻 Autora

**Evelyn Álvarez Vásquez** · Técnica en Informática en formación (IPLACEX) · Profesora y Magíster en Didáctica de la Matemática

[![LinkedIn](https://img.shields.io/badge/LinkedIn-profesoraevelyn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/profesoraevelyn/)
[![GitHub](https://img.shields.io/badge/GitHub-evelyntec-181717?logo=github&logoColor=white)](https://github.com/evelyntec)
[![Web](https://img.shields.io/badge/Web-profesoraevelyn.com-00B8D9?logo=googlechrome&logoColor=white)](https://profesoraevelyn.com)
