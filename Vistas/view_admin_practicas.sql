CREATE OR REPLACE VIEW view_admin_practicas
(ID_PRACTICAS, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, FECHA_NACIMIENTO, CURP, FECHA_INGRESO, STATUS)
AS
SELECT P.ID_PERSONA, P.NOMBRE, P.AP_PATERNO, P.AP_MATERNO, P.FECHA_NACIMIENTO, P.CURP, P.FECHA_INGRESO, S.NOMBRE
FROM PERSONA P
INNER JOIN PRACTICAS PR
ON P.ID_PERSONA = PR.ID_PERSONA
JOIN STATUS_PERSONA S
ON P.ID_STATUS_PERSONA = S.ID_STATUS_PERSONA;

SELECT * FROM view_admin_practicas;