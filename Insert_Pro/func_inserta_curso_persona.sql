CREATE OR REPLACE FUNCTION INSERTA_CURSO_PERSONA(
  IN V_ID_PERSONA INTEGER,
  IN V_ID_CURSO INTEGER,
  IN V_FECHA_INICIO DATE,
  IN V_FECHA_FIN DATE,
  IN V_PROBATORIO VARCHAR(60)
)
  RETURNS INTEGER AS
$$
DECLARE
  ID CURSOS_PERSONA.ID_CURSO_PERSONA%TYPE;
  V_ID_PERSONA  ALIAS FOR $1;
  V_ID_CURSO ALIAS FOR $2;
  V_FECHA_INICIO  ALIAS FOR $3;
  V_FECHA_FIN ALIAS FOR $4;
  V_PROBATORIO ALIAS FOR $5;
BEGIN
  INSERT INTO CURSOS_PERSONA(ID_PERSONA, ID_CURSO, FECHA_INICIO, FECHA_FIN, PROBATORIO)
  VALUES (V_ID_PERSONA, V_ID_CURSO, V_FECHA_INICIO, V_FECHA_FIN, V_PROBATORIO)
  RETURNING ID_CURSO_PERSONA INTO ID;
  RETURN ID;
END;
$$
LANGUAGE plpgsql;

--SELECT INSERTA_CURSO_PERSONA(1, 1, '2010-08-01', '2012-07-11', 'PROBATORIO');
