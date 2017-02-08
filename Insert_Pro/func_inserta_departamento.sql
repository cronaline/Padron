CREATE OR REPLACE FUNCTION INSERTA_DEPARTAMENTO(
  IN NOMBRE VARCHAR(50),
  IN DESCRIPCION VARCHAR(240),
  IN ABREVIACION VARCHAR(7)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID DEPARTAMENTO.ID_DEPARTAMENTO%TYPE;
  V_NOMBRE  ALIAS FOR $1;
  V_DESCRIPCION  ALIAS FOR $2;
  V_ABREVIACION ALIAS FOR $3;
BEGIN
  INSERT INTO DEPARTAMENTO(NOMBRE, DESCRIPCION, ABREVIACION)
  VALUES (V_NOMBRE, V_DESCRIPCION, V_ABREVIACION)
  RETURNING ID_DEPARTAMENTO INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_DEPARTAMENTO('Dirección Instrumentación/Computo', 'DESCRIPCIÓN', 'ABRE');