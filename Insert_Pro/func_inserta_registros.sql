SELECT INSERTA_GRADO('Licenciatura','Licenciatura es el título que se obtiene tras realizar ciertos estudios de educación superior entre 4 y 6 años de duración','LIC.');
SELECT INSERTA_GRADO('Doctorado','Es el título que se obtiene tras realizar ciertos estudios superiores a la Licenciatura con una duración entre 1 y 3 años','M.');

SELECT INSERTA_ORGANIZACION('Universidad Nacional Autónoma de México', 'UNAM');
SELECT INSERTA_ORGANIZACION('Instituto Politécnico Nacional', 'IPN');

SELECT INSERTA_STATUS_PERSONA('Activo', 'Actualmente trabajando');
SELECT INSERTA_STATUS_PERSONA('De vacaciones', 'Temporalmente ausente con paga');

SELECT INSERTA_TIPO_PUESTO('Director', 'Es la persona encargada de dirigir una actividad en general.');
SELECT INSERTA_TIPO_PUESTO('SubDirector', 'Es la persona encargada de dirigir una actividad.');

SELECT INSERTA_STATUS_PUESTO('Activo', 'Actualmente en uso');
SELECT INSERTA_STATUS_PUESTO('Inactivo', 'Deshabilitado');

SELECT INSERTA_PREGUNTA('¿Cuál es el nombre de tu primer mascota?');
SELECT INSERTA_PREGUNTA('¿Cuál es el nombre de tu mejor amigo de la primaria?');

SELECT INSERTA_ROL('Administrador', 'ADMIN', 'Todos los permisos');
SELECT INSERTA_ROL('Usuario', 'USER', 'Ningun permiso especial');

SELECT INSERTA_ESTADO('Ciudad de México', 'CDMX');
SELECT INSERTA_ESTADO('Jalisco', 'JAL');

SELECT INSERTA_MUNICIPIO(1, 'Coyoacán');
SELECT INSERTA_MUNICIPIO(2, 'Zapopan');

SELECT INSERTA_COLONIA(1, 1, 'Villa del Puente', 14330);
SELECT INSERTA_COLONIA(1, 1, 'Granjas Coapa', 14330);

SELECT INSERTA_CURSO(1, 'Diplomado Afinación de Bases de Datos', 'Facilitar los métodos, las técnicas y las herramientas para el buen diseño e implantación de base de datos.');
SELECT INSERTA_CURSO(2, 'Diplomado en Ciberseguridad', 'El participante revisará, analizará y entenderá los conceptos básicos de la ciberseguridad e identificará las características del ser humano que se interrelacionan con éstos.');

SELECT INSERTA_EDUCACION(2,1, 'Maestria en Ciencias de la computación', 'blablablabla');
SELECT INSERTA_EDUCACION(2,2, 'Maestria en Matemáticas', 'blablablabla');

SELECT INSERTA_DIRECCION(1, 'Hueso', '11', '21');
SELECT INSERTA_DIRECCION(2, 'Acoxpa', '11', '21');

SELECT INSERTA_PERSONA(1,1,NULL,'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'S', 'FOTO');
SELECT INSERTA_EMPLEADO(1, 1, NULL, 'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO', '345A45F3A', 'ASDAF23245');
SELECT INSERTA_PRACTICAS(1, 1, NULL, 'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO');
SELECT INSERTA_SERVICIO(1, 1, NULL, 'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO');
SELECT INSERTA_EMPLEADO(1, 1, NULL, 'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO', '345A4ASD5', 'ESDAF23245');
SELECT INSERTA_EMPLEADO(1, 1, NULL, 'Ricardo Daniel', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO', '345A4MNDF', 'ISDAF23245');
SELECT INSERTA_EMPLEADO(1, 1, 1, 'Diego', 'García', 'Aguilar', '1994-01-20', 'CURP', 'FOTO', '345A412FA', 'ASDAF21345');

SELECT INSERTA_CORREO(1, 'cronaline@hush.com');
SELECT INSERTA_CORREO(1, 'cronaline@comunidad.unam.mx.com');
SELECT INSERTA_CORREO(2, 'baskaudsa@hush.com');
SELECT INSERTA_CORREO(3, 'new_order@hush.com');

SELECT INSERTA_TELEFONO(1, '58401517');
SELECT INSERTA_TELEFONO(1, '5558401517');
SELECT INSERTA_TELEFONO(1, '5840151743');
SELECT INSERTA_TELEFONO(2, '5840151744');
SELECT INSERTA_TELEFONO(3, '5840151745');
SELECT INSERTA_TELEFONO(4, '5840151746');

--3 VECES CON DIFERENTES VALORES
SELECT INSERTA_ASISTENCIA(1, '2016-12-08 14:49:09', '2016-12-05 18:05:54');
SELECT INSERTA_ASISTENCIA(2, '2016-12-08 14:48:09', '2016-12-05 18:05:54');
SELECT INSERTA_ASISTENCIA(3, '2016-12-08 14:54:09', '2016-12-05 18:05:54');

SELECT INSERTA_USUARIO(1,1,1,'RDGARCIA', 'PASSWORD', 'RESPUESTA');
SELECT INSERTA_USUARIO(2,1,1,'RDGARCIA2', 'PASSWORD', 'RESPUESTA');
SELECT INSERTA_USUARIO(3,1,1,'RDGARCIA3', 'PASSWORD', 'RESPUESTA');
SELECT INSERTA_USUARIO(4,1,1,'RDGARCIA4', 'PASSWORD', 'RESPUESTA');
SELECT INSERTA_USUARIO(5,1,1,'RDGARCIA5', 'PASSWORD', 'RESPUESTA');
SELECT INSERTA_USUARIO(6,1,1,'RDGARCIA6', 'PASSWORD', 'RESPUESTA');

SELECT INSERTA_DEPARTAMENTO('Dirección Instrumentación/Computo', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección de Investigación', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección de Análisis y Gestión de Riesgos', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección General', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección Administrativa', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección de Servicios Técnicos', 'DESCRIPCIÓN', 'ABRE');
SELECT INSERTA_DEPARTAMENTO('Dirección General', 'DESCRIPCION', 'ABRE');

SELECT INSERTA_SUBDEPARTAMENTO(1, 'Instrumentación Sísmica', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(1, 'Desarrollo e Innovación', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(2, 'Subdirección Riesgos Inundaciones', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(2, 'Subdirección Riesgos Volcanicos', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(3, 'Subdirección de FOPREDEN', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(3, 'Subdirecció Políticas Públicas', 'DESCRIPCION', 'ABRE');
SELECT INSERTA_SUBDEPARTAMENTO(7, 'Direccion', 'DESCRIPCION', 'ABRE');

SELECT INSERTA_PUESTO(1, 1, 1, 'Director de Desarrollo de Software', 'Jefe del  Departamento de Desarrollo de Software y Soporte Técnico', 'JDDSyT');
SELECT INSERTA_PUESTO(1, 1, 1, 'Director de Seguridad Web', 'Jefe del  Departamento de Seguridad Web', 'JDSW');
SELECT INSERTA_PUESTO(1, 1, 2, 'Director de Desarrollo de Mapas', 'Jefe del  Departamento de Desarrollo de Mapas', 'JDDM');
SELECT INSERTA_PUESTO(1, 1, 2, 'Director de Desarrollo de Protocolos', 'Jefe del  Departamento de Desarrollo de Protocolos', 'JDDP');
SELECT INSERTA_PUESTO(1, 1, 3, 'Director de Vigilacia de los Volcanes', 'Jefe del  Departamento de Vigilacia de los Volcanes', 'JDVV');
SELECT INSERTA_PUESTO(1, 1, 3, 'Director de Vigilancia de los Huracanes', 'Jefe del  Departamento de Vigilancia de los Huracanes', 'JDVH');
SELECT INSERTA_PUESTO(1, 1, 7, 'Director de General', 'DESCRICPCION', 'CLAVE');

SELECT INSERTA_PUESTO_PERSONA(1, 1, '2016-10-01');
SELECT INSERTA_PUESTO_PERSONA(2, 2, '2016-10-02');
SELECT INSERTA_PUESTO_PERSONA(3, 3, '2016-10-11');
SELECT INSERTA_PUESTO_PERSONA(4, 4, '2016-10-21');
SELECT INSERTA_PUESTO_PERSONA(5, 5, '2016-10-14');
SELECT INSERTA_PUESTO_PERSONA(6, 6, '2016-10-27');--Persona con id 7 no tiene puesto
SELECT INSERTA_PUESTO_PERSONA(8, 5, '2016-07-27');


SELECT INSERTA_EDUCACION_PERSONA(1, 1, '2012-12-04', '2016-09-09', 'ARCHIVO');
SELECT INSERTA_EDUCACION_PERSONA(2, 2, '2011-12-04', '2015-10-19', 'ARCHIVO');
SELECT INSERTA_EDUCACION_PERSONA(3, 1, '2010-12-04', '2016-11-23', 'ARCHIVO');
SELECT INSERTA_EDUCACION_PERSONA(4, 2, '2009-12-04', '2015-08-06', 'ARCHIVO');
SELECT INSERTA_EDUCACION_PERSONA(5, 1, '2012-12-04', '2016-10-12', 'ARCHIVO');
SELECT INSERTA_EDUCACION_PERSONA(6, 2, '2013-12-04', '2015-07-07', 'ARCHIVO');

SELECT INSERTA_CURSO_PERSONA(1, 1, '2010-08-01', '2012-07-11', 'PROBATORIO');
SELECT INSERTA_CURSO_PERSONA(2, 2, '2011-07-11', '2013-06-12', 'PROBATORIO');
SELECT INSERTA_CURSO_PERSONA(3, 1, '2012-06-21', '2014-10-17', 'PROBATORIO');
SELECT INSERTA_CURSO_PERSONA(4, 2, '2013-05-31', '2015-12-21', 'PROBATORIO');
SELECT INSERTA_CURSO_PERSONA(5, 1, '2014-04-07', '2016-11-29', 'PROBATORIO');
SELECT INSERTA_CURSO_PERSONA(6, 2, '2015-03-13', '2016-12-09', 'PROBATORIO');

--Registros agregados para probar las vistas, funciones
SELECT INSERTA_TELEFONO(2, '58401517-546');
SELECT INSERTA_TELEFONO(2, '58401517-101');

SELECT INSERTA_CORREO(2, 'barbs@hush.com');
SELECT INSERTA_CORREO(2, 'grandSe@hush.com');

SELECT INSERTA_TELEFONO(4, '58401517-103');
SELECT INSERTA_TELEFONO(5, '58401517-106');

SELECT INSERTA_CORREO(4, 'blanc@hush.com');
SELECT INSERTA_CORREO(5, 'moura@hush.com');
SELECT INSERTA_CORREO(4, 'cavani@hush.com');
SELECT INSERTA_CORREO(5, 'kurzawa@hush.com');

SELECT INSERTA_TELEFONO(3, '58401417-107');
SELECT INSERTA_TELEFONO(6, '58403217-108');

SELECT INSERTA_CORREO(3, 'dembele@hush.com');
SELECT INSERTA_CORREO(6, 'reus@hush.com');

SELECT INSERTA_CURSO_PERSONA(1, 2, '2010-08-01', '2012-07-11', 'PROBATORIO');
