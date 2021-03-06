CREATE OR REPLACE FUNCTION INSERTA_ROL(
  IN V_NOMBRE VARCHAR(30),
  IN V_ABREVIACION VARCHAR(8),
  IN V_DESCRIPCION VARCHAR(90)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID ROL.ID_ROL%TYPE;
  V_NOMBRE  ALIAS FOR $1;
  V_ABREVIACION ALIAS FOR $2;
  V_DESCRIPCION ALIAS FOR $3;
BEGIN
  INSERT INTO ROL(NOMBRE, ABREVIACION, DESCRIPCION) VALUES (V_NOMBRE, V_ABREVIACION, V_DESCRIPCION) RETURNING ID_ROL INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_ROL('Administrador', 'ADMIN', 'Todos los permisos');
