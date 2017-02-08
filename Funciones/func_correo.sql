CREATE OR REPLACE FUNCTION func_correos(id integer, ref refcursor)
RETURNS refcursor AS $$
 BEGIN
   OPEN ref FOR SELECT correo FROM correo where id_persona = id;
   RETURN ref;
 END;
 $$ LANGUAGE plpgsql;

 BEGIN;
     SELECT FUNC_CORREOS(1, 'CORREOS');
     FETCH ALL IN "CORREOS";
 COMMIT;
