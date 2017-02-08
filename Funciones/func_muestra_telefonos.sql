--
CREATE OR REPLACE FUNCTION func_telefonos(id integer, ref refcursor)
RETURNS refcursor AS $$
 BEGIN
   OPEN ref FOR SELECT numero FROM telefono where id_persona = id;
   RETURN ref;
 END;
 $$ LANGUAGE plpgsql;

--Ver resultados
BEGIN;
 SELECT FUNC_TELEFONOS(1, 'TELEFONOS');
 FETCH ALL IN "TELEFONOS";
COMMIT;
