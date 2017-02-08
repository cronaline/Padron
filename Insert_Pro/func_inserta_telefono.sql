CREATE OR REPLACE FUNCTION INSERTA_TELEFONO(
  IN ID_PERSONA INTEGER,
  IN NUMERO VARCHAR(14)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID TELEFONO.ID_TELEFONO%TYPE;
  V_ID_PERSONA ALIAS FOR $1;
  V_NUMERO  ALIAS FOR $2;
BEGIN
  INSERT INTO TELEFONO(ID_PERSONA, NUMERO)
  VALUES (V_ID_PERSONA, V_NUMERO)
  RETURNING ID_TELEFONO INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_TELEFONO(1, '58401517');
