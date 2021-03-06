CREATE OR REPLACE FUNCTION FUNC_CALCULA_HORAS(
  IN V_ID_PERSONA INTEGER,
  IN V_FECHA_INICIO DATE,
  IN V_FECHA_FIN DATE
)
  RETURNS INTERVAL AS
$$
DECLARE
    V_ID_PERSONA  ALIAS FOR $1;
    V_FECHA_INICIO ALIAS FOR $2;
    V_FECHA_FIN ALIAS FOR $3;
    V_TOTAL INTERVAL;
BEGIN
  SELECT SUM(TOTAL) INTO V_TOTAL
  FROM VIEW_ADMIN_ASISTENCIA
  WHERE ID_PERSONA = V_ID_PERSONA
  AND (DIA >= V_FECHA_INICIO OR DIA <= V_FECHA_FIN);
  RETURN (SELECT date_trunc('MINUTE', V_TOTAL));
END;
$$
LANGUAGE plpgsql;

--SELECT * FROM FUNC_CALCULA_HORAS(1, '2016-12-05', '2016-12-06');
