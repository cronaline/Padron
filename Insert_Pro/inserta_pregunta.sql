CREATE OR REPLACE FUNCTION INSERTA_PREGUNTA_SEGURIDAD(
  IN V_PREGUNTA VARCHAR(100)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID PREGUNTA_SEGURIDAD.ID_PREGUNTA%TYPE;
  V_PREGUNTA  ALIAS FOR $1;
BEGIN
  INSERT INTO PREGUNTA_SEGURIDAD(NOMBRE) VALUES (V_PREGUNTA) RETURNING ID_PREGUNTA INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_PREGUNTA('¿Cuál es el nobre de tu primer mascota?');
