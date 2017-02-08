CREATE OR REPLACE FUNCTION INSERTA_CORREO(
  IN ID_PERSONA INTEGER,
  IN CORREO VARCHAR (90)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID CORREO.ID_CORREO%TYPE;
  V_ID_PERSONA ALIAS FOR $1;
  V_CORREO  ALIAS FOR $2;
BEGIN
  INSERT INTO CORREO(ID_PERSONA, CORREO) VALUES (V_ID_PERSONA, V_CORREO) RETURNING ID_CORREO INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_CORREO(1, 'cronaline@hush.com');
