CREATE OR REPLACE FUNCTION INSERTA_CURSO_PERSONA(
  IN V_ID_PERSONA INTEGER,
  IN V_ID_CURSO INTEGER,
  IN V_FECHA_INICIO DATE,
  IN V_FECHA_FIN DATE
)
  RETURNS INTEGER AS
$$
DECLARE
  ID CURSO_PERSONA.ID_CURSO_PERSONA%TYPE;
  V_ID_PERSONA  ALIAS FOR $1;
  V_ID_CURSO ALIAS FOR $2;
  V_FECHA_INICIO  ALIAS FOR $3;
  V_FECHA_FIN ALIAS FOR $4;
BEGIN
  INSERT INTO CURSO_PERSONA(ID_PERSONA, ID_CURSO, FECHA_INICIO, FECHA_FIN)
  VALUES (V_ID_PERSONA, V_ID_CURSO, V_FECHA_INICIO, V_FECHA_FIN)
  RETURNING ID_CURSO INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_CURSO_PERSONA(1,4, '2016-08-01', '2016-10-01');
