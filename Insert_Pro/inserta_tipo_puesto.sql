CREATE OR REPLACE FUNCTION INSERTA_TIPO_PUESTO(
  IN V_NOMBRE VARCHAR(80),
  IN V_DESCRIPCION VARCHAR(140)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID TIPO_PUESTO.ID_TIPO_PUESTO%TYPE;
  NOMBRE_PUESTO  ALIAS FOR $1;
  V_DESCRIPCION ALIAS FOR $2;
BEGIN
  INSERT INTO TIPO_PUESTO(NOMBRE, DESCRIPCION) VALUES (NOMBRE_PUESTO, V_DESCRIPCION) RETURNING ID_TIPO_PUESTO INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_TIPO_PUESTO('Director', 'Es la persona encargada de dirigir una actividad.');
