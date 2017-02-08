--VISTA QUE MUESTRA TODOS LOS PUESTOS DISPONIBLE CON SU STATUS Y SU TIPO DE PUESTO
CREATE OR REPLACE VIEW view_admin_puestos
(ID_PUESTO, NOMBRE, DESCRIPCION, CLAVE, TIPO, STATUS, ID_SUBDEPARTAMENTO, SUBDEPARTAMENTO, ID_DEPARTAMENTO, DEPARTAMENTO)
AS
SELECT P.ID_PUESTO, P.NOMBRE, P.DESCRIPCION, P.CLAVE, TP.NOMBRE, SP.NOMBRE, SU.ID_SUBDEPARTAMENTO, SU.NOMBRE, DE.ID_DEPARTAMENTO, DE.NOMBRE
FROM PUESTO P
INNER JOIN TIPO_PUESTO TP
ON P.ID_TIPO_PUESTO = TP.ID_TIPO_PUESTO
INNER JOIN STATUS_PUESTO SP
ON P.ID_STATUS_PUESTO = SP.ID_STATUS_PUESTO
INNER JOIN SUBDEPARTAMENTO SU
ON SU.ID_SUBDEPARTAMENTO = P.ID_SUBDEPARTAMENTO
INNER JOIN DEPARTAMENTO DE
ON SU.ID_DEPARTAMENTO = DE.ID_DEPARTAMENTO
ORDER BY P.ID_PUESTO;

--SELECT * FROM VIEW_ADMIN_PUESTOS;
