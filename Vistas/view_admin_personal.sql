--VISTA QUE MUESTRA LA INFORMACION DE TODOS LOS EMPLEADOS 
CREATE OR REPLACE VIEW view_admin_personal
(ID_PERSONA, NOMBRE, AP_PATERNO, AP_MATERNO, TELEFONOS, CORREOS, CALLE, NUMERO_INTERIOR, NUMERO_EXTERIOR, COLONIA, CP, MUNICIPIO, ESTADO, TIPO_EMPLEADO)
AS
SELECT ID_PERSONA, P.NOMBRE, P.AP_PATERNO, AP_MATERNO,
    (SELECT string_agg(T1.NUMERO, ', ') FROM TELEFONO T1 WHERE T1.ID_PERSONA = P.ID_PERSONA) AS TELEFONOS, --concatenacion de los telefonos
    (SELECT string_agg(C1.CORREO, ', ') FROM CORREO C1 WHERE C1.ID_PERSONA = P.ID_PERSONA) AS CORREOS, 	--concatenacion de los correos
D.CALLE, D.NUM_INTERIOR, D.NUM_EXTERIOR, C.NOMBRE, C.CP, M.NOMBRE, E.NOMBRE, P.TIPO_PERSONA
FROM PERSONA P
INNER JOIN DIRECCION D
ON P.ID_DIRECCION = D.ID_DIRECCION
JOIN COLONIA C
ON D.ID_COLONIA = C.ID_COLONIA
JOIN MUNICIPIO M
ON C.ID_MUNICIPIO = M.ID_MUNICIPIO
JOIN ESTADO E
ON M.ID_ESTADO = E.ID_ESTADO
ORDER BY ID_PERSONA;

SELECT * FROM view_admin_personal;