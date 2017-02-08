CREATE OR REPLACE FUNCTION INSERTA_MUNICIPIO(
  IN V_ID_MUNICIPIO INTEGER,
  IN V_ID_ESTADO INTEGER,
  IN NOMBRE VARCHAR(120),
  IN CP INTEGER
)
  RETURNS INTEGER AS
$$
DECLARE
  ID COLONIA.ID_COLONIA%TYPE;
  V_ID_MUNICIPIO  ALIAS FOR $1;
  V_ID_ESTADO  ALIAS FOR $2;
  V_NOMBRE_COLONIA ALIAS FOR $3;
  V_CP  ALIAS FOR $4;
BEGIN
  INSERT INTO COLONIA(ID_MUNICIPIO, ID_ESTADO, NOMBRE, CP) VALUES (V_ID_MUNICIPIO, V_ID_ESTADO, V_NOMBRE_COLONIA, V_CP) RETURNING ID_COLONIA INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;
