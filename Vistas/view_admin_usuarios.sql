CREATE OR REPLACE VIEW view_admin_usuarios
(ID_PERSONA, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, FECHA_NACIMIENTO, CURP, FECHA_INGRESO, ROL, USUARIO)
AS
SELECT P.ID_PERSONA, P.NOMBRE, P.AP_PATERNO, P.AP_MATERNO, P.FECHA_NACIMIENTO, P.CURP, P.FECHA_INGRESO, R.NOMBRE, U.USUARIO
FROM PERSONA P
LEFT OUTER JOIN USUARIO U
ON P.ID_PERSONA = U.ID_PERSONA
LEFT OUTER JOIN ROL R
ON U.ID_ROL = R.ID_ROL;

SELECT * FROM view_admin_usuarios;