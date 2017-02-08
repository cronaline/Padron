CREATE OR REPLACE FUNCTION INSERTA_STATUS_PERSONA(
  IN V_NOMBRE VARCHAR(35),
  IN V_DESCRIPCION VARCHAR(80)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID TIPO_PUESTO.ID_TIPO_PUESTO%TYPE;
  NOMBRE_PUESTO  ALIAS FOR $1;
  V_DESCRIPCION ALIAS FOR $2;
BEGIN
  INSERT INTO STATUS_PERSONA(NOMBRE, DESCRIPCION) VALUES (NOMBRE_PUESTO, V_DESCRIPCION) RETURNING ID_STATUS_PERSONA INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_STATUS_PERSONA('Activo', 'Actualmente trabajando');