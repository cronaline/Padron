CREATE OR REPLACE VIEW view_admin_curso
(ID_CURSO, ID_ORGANIZACION, ORGANIZACION, NOMBRE_CURSO, DESCRIPCION)
AS
SELECT C.ID_CURSO, O.ID_ORGANIZACION, O.NOMBRE, C.NOMBRE, C.DESCRIPCION
FROM ORGANIZACION O
INNER JOIN CURSO C
ON O.ID_ORGANIZACION = C.ID_ORGANIZACION;

SELECT * FROM VIEW_ADMIN_CURSO;