--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: asignacion_vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE asignacion_vehiculo (
    cod_asignacion_vehiculo integer NOT NULL,
    fecha_asignacion timestamp without time zone,
    no_solicitud integer,
    year_solicitud integer,
    cod_unidad_solicitante integer,
    cod_persona_pasajero integer,
    fecha_hora_uso_vehiculo timestamp without time zone,
    fecha_hora_retorno_vehiculo timestamp without time zone,
    dias_asignacion integer,
    num_personas_viaje integer,
    cod_sede_lugar_salida integer,
    destino character varying(512),
    diligencia text,
    causa_1 character varying(50),
    causa_2 character varying(50),
    causa_3 character varying(50),
    cod_dependencia_institucion_juzgado integer,
    utiliza_piloto boolean,
    utiliza_vehiculo boolean,
    carga_voluminosa boolean,
    observaciones text,
    cod_persona_solicitante integer,
    cod_puesto_solicitante integer,
    cod_persona_coordinador_jefe integer,
    cod_puesto_coordinador_jefe integer,
    cod_persona_asignador_vehiculo integer,
    cod_puesto_asignador_vehiculo integer
);


ALTER TABLE asignacion_vehiculo OWNER TO postgres;

--
-- Name: asignacion_vehiculo_cod_asignacion_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNER TO postgres;

--
-- Name: asignacion_vehiculo_cod_asignacion_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNED BY asignacion_vehiculo.cod_asignacion_vehiculo;


--
-- Name: asignacion_vehiculo_piloto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE asignacion_vehiculo_piloto (
    cod_asignacion_vehiculo_piloto integer NOT NULL,
    cod_asignacion_vehiculo integer,
    cod_vehiculo integer,
    cod_persona_piloto_asignado integer,
    fecha_hora_uso_vehiculo timestamp without time zone,
    fecha_hora_retorno_vehiculo timestamp without time zone,
    fecha_hora_asignacion timestamp without time zone,
    estatus_asignacion character varying(2)
);


ALTER TABLE asignacion_vehiculo_piloto OWNER TO postgres;

--
-- Name: asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNER TO postgres;

--
-- Name: asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNED BY asignacion_vehiculo_piloto.cod_asignacion_vehiculo_piloto;


--
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE color (
    cod_color integer NOT NULL,
    nombre_color character varying(100),
    orden integer,
    activo boolean
);


ALTER TABLE color OWNER TO postgres;

--
-- Name: color_cod_color_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE color_cod_color_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE color_cod_color_seq OWNER TO postgres;

--
-- Name: color_cod_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE color_cod_color_seq OWNED BY color.cod_color;


--
-- Name: combustible_comision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE combustible_comision (
    cod_combustible_comision integer NOT NULL,
    fecha_entrega timestamp without time zone,
    cod_persona_solicitante integer,
    cod_puesto_solicitante integer,
    cod_unidad integer,
    cod_sede integer,
    cod_vehiculo integer,
    placa character varying(15),
    kilometraje_actual bigint,
    comision_a text,
    observaciones text,
    importe_total_letras text,
    cantidad_estimada_carga numeric,
    cod_persona_receptor integer,
    cod_puesto_receptor integer,
    cod_persona_encargado_transporte integer
);


ALTER TABLE combustible_comision OWNER TO postgres;

--
-- Name: combustible_comision_cod_combustible_comision_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE combustible_comision_cod_combustible_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE combustible_comision_cod_combustible_comision_seq OWNER TO postgres;

--
-- Name: combustible_comision_cod_combustible_comision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE combustible_comision_cod_combustible_comision_seq OWNED BY combustible_comision.cod_combustible_comision;


--
-- Name: combustible_cupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE combustible_cupon (
    cod_combustible_cupon integer NOT NULL,
    cod_combustible_comision integer,
    cod_cupon_denominancion integer,
    cantidad_cupones integer,
    numero_cupon_inicial bigint,
    numero_cupon_final bigint,
    suma_total numeric
);


ALTER TABLE combustible_cupon OWNER TO postgres;

--
-- Name: combustible_cupon_cod_combustible_cupon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE combustible_cupon_cod_combustible_cupon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE combustible_cupon_cod_combustible_cupon_seq OWNER TO postgres;

--
-- Name: combustible_cupon_cod_combustible_cupon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE combustible_cupon_cod_combustible_cupon_seq OWNED BY combustible_cupon.cod_combustible_cupon;


--
-- Name: concurso_mantenimientos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE concurso_mantenimientos (
    cod_concurso_mantenimiento integer NOT NULL,
    no_concurso character varying(200),
    fecha_concurso date,
    placa_vehiculo character varying(15),
    realizado smallint,
    cod_empleado_autoriza bigint,
    cod_cargo_empleado_autoriza bigint,
    activo smallint
);


ALTER TABLE concurso_mantenimientos OWNER TO postgres;

--
-- Name: concurso_mantenimientos_cod_concurso_mantenimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE concurso_mantenimientos_cod_concurso_mantenimiento_seq OWNER TO postgres;

--
-- Name: concurso_mantenimientos_cod_concurso_mantenimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq OWNED BY concurso_mantenimientos.cod_concurso_mantenimiento;


--
-- Name: cupon_denominacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cupon_denominacion (
    cod_cupon_denominacion integer NOT NULL,
    descripcion character varying(100),
    denominacion numeric
);


ALTER TABLE cupon_denominacion OWNER TO postgres;

--
-- Name: cupon_denominacion_cod_cupon_denominacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cupon_denominacion_cod_cupon_denominacion_seq OWNER TO postgres;

--
-- Name: cupon_denominacion_cod_cupon_denominacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq OWNED BY cupon_denominacion.cod_cupon_denominacion;


--
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE departamento (
    cod_departamento integer NOT NULL,
    cod_region integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);


ALTER TABLE departamento OWNER TO postgres;

--
-- Name: departamento_cod_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE departamento_cod_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departamento_cod_departamento_seq OWNER TO postgres;

--
-- Name: departamento_cod_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE departamento_cod_departamento_seq OWNED BY departamento.cod_departamento;


--
-- Name: dependencia_institucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dependencia_institucion (
    cod_dependencia_institucion integer NOT NULL,
    cod_institucion integer,
    cod_estatus character varying(2),
    nombre character varying(100),
    direccion character varying(150),
    cod_municipio integer,
    cod_departamento integer,
    telefono_1 character varying(50),
    cod_tipo_organo integer,
    codigo_causa integer,
    cod_tipo_dependencia_institucion integer,
    fecha_sistema timestamp without time zone
);


ALTER TABLE dependencia_institucion OWNER TO postgres;

--
-- Name: dependencia_institucion_cod_dependencia_institucion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dependencia_institucion_cod_dependencia_institucion_seq OWNER TO postgres;

--
-- Name: dependencia_institucion_cod_dependencia_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq OWNED BY dependencia_institucion.cod_dependencia_institucion;


--
-- Name: detalle_mant_rep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE detalle_mant_rep (
    cod_mantenimiento_reparacion bigint NOT NULL,
    cod_detalle_mant_repara integer NOT NULL,
    cod_tipo_mant_rep bigint NOT NULL,
    costo_reparacion_detalle double precision,
    descripcion character varying(400),
    tiempo_garantia character varying(100)
);


ALTER TABLE detalle_mant_rep OWNER TO postgres;

--
-- Name: detalle_mant_rep_cod_detalle_mant_repara_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE detalle_mant_rep_cod_detalle_mant_repara_seq OWNER TO postgres;

--
-- Name: detalle_mant_rep_cod_detalle_mant_repara_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq OWNED BY detalle_mant_rep.cod_detalle_mant_repara;


--
-- Name: imagen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE imagen (
    cod_imagen integer NOT NULL,
    cod_vehiculo integer,
    cod_tipo_imagen integer,
    path_imagen text,
    imagenb bytea,
    nombre_imagen character varying(150),
    orden integer,
    activo boolean
);


ALTER TABLE imagen OWNER TO postgres;

--
-- Name: imagen_cod_imagen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE imagen_cod_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE imagen_cod_imagen_seq OWNER TO postgres;

--
-- Name: imagen_cod_imagen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE imagen_cod_imagen_seq OWNED BY imagen.cod_imagen;


--
-- Name: kilometraje_comision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE kilometraje_comision (
    cod_kilometraje_comision integer NOT NULL,
    cod_persona_piloto integer,
    cod_vehiculo integer,
    placa character varying(15),
    kilometraje_inicial bigint,
    fecha_hora_salida timestamp without time zone,
    kilometraje_final bigint,
    fecha_hora_entrada timestamp without time zone,
    comision_realizada text,
    causa1 character varying(50),
    causa2 character varying(50),
    causa3 character varying(50),
    cod_dependencia_institucion integer,
    diligencias_realizadas text
);


ALTER TABLE kilometraje_comision OWNER TO postgres;

--
-- Name: kilometraje_comision_cod_kilometraje_comision_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kilometraje_comision_cod_kilometraje_comision_seq OWNER TO postgres;

--
-- Name: kilometraje_comision_cod_kilometraje_comision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq OWNED BY kilometraje_comision.cod_kilometraje_comision;


--
-- Name: linea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE linea (
    cod_linea integer NOT NULL,
    cod_marca integer,
    nombre_linea character varying(150),
    orden integer,
    activo boolean
);


ALTER TABLE linea OWNER TO postgres;

--
-- Name: linea_cod_linea_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linea_cod_linea_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linea_cod_linea_seq OWNER TO postgres;

--
-- Name: linea_cod_linea_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linea_cod_linea_seq OWNED BY linea.cod_linea;


--
-- Name: mantenimiento_reparacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE mantenimiento_reparacion (
    cod_mantenimiento_reparacion integer NOT NULL,
    cod_control_mant_rep bigint,
    mant_rep bigint,
    cod_no_concurso bigint,
    cod_proveedor bigint,
    no_factura bigint,
    serie_factura character varying(5),
    fecha_emision_factura date,
    fecha_recepcion_factura date,
    fecha_recepcion_vehiculo date,
    fecha_retorno_vehiculo date,
    dias_mantenimiento bigint,
    cod_tipo_mantenimiento bigint,
    total_mantenimiento_repara_q double precision,
    cod_vehiculo bigint,
    placa character varying(15),
    utilizo_seguro smallint,
    registro_pago smallint,
    cod_sede bigint,
    cod_empleado_recepcion bigint,
    cod_cargo_empleado_recepcion bigint,
    cod_empleado_recepcion_fact bigint,
    cod_cargo_empleado_recepcion_fact bigint,
    cod_empleado_digita bigint,
    activo boolean,
    fecha_envio_vehiculo date
);


ALTER TABLE mantenimiento_reparacion OWNER TO postgres;

--
-- Name: mantenimiento_reparacion_cod_mantenimiento_reparacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq OWNER TO postgres;

--
-- Name: mantenimiento_reparacion_cod_mantenimiento_reparacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq OWNED BY mantenimiento_reparacion.cod_mantenimiento_reparacion;


--
-- Name: marca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE marca (
    cod_marca integer NOT NULL,
    nombre_marca character varying(150),
    orden integer,
    activo boolean
);


ALTER TABLE marca OWNER TO postgres;

--
-- Name: marca_cod_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE marca_cod_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE marca_cod_marca_seq OWNER TO postgres;

--
-- Name: marca_cod_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE marca_cod_marca_seq OWNED BY marca.cod_marca;


--
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE municipio (
    cod_municipio integer NOT NULL,
    cod_departamento integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);


ALTER TABLE municipio OWNER TO postgres;

--
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipio_cod_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE municipio_cod_municipio_seq OWNER TO postgres;

--
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_cod_municipio_seq OWNED BY municipio.cod_municipio;


--
-- Name: organigrama; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE organigrama (
    cod_organigrama integer NOT NULL,
    cod_unidad integer,
    cod_organigrama_padre integer,
    cod_status character(2)
);


ALTER TABLE organigrama OWNER TO postgres;

--
-- Name: organigrama_cod_organigrama_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE organigrama_cod_organigrama_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE organigrama_cod_organigrama_seq OWNER TO postgres;

--
-- Name: organigrama_cod_organigrama_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE organigrama_cod_organigrama_seq OWNED BY organigrama.cod_organigrama;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pais (
    cod_pais integer NOT NULL,
    nombre_pais character varying(60),
    gentilicio character varying(60),
    codigo_telefonico character varying(3),
    codigo_iso character varying(3),
    cod_estatus character varying(2)
);


ALTER TABLE pais OWNER TO postgres;

--
-- Name: pais_cod_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pais_cod_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pais_cod_pais_seq OWNER TO postgres;

--
-- Name: pais_cod_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pais_cod_pais_seq OWNED BY pais.cod_pais;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona (
    cod_persona integer NOT NULL,
    cod_tipo_persona integer,
    cod_pais integer,
    cod_municipio integer,
    nombre_1 character varying(50),
    nombre_2 character varying(50) DEFAULT ''::character varying,
    apellido_1 character varying(50) DEFAULT ''::character varying,
    apellido_2 character varying(50) DEFAULT ''::character varying,
    apellido_casada character varying(50) DEFAULT ''::character varying,
    cod_registro character varying(4),
    numero_cedula character varying(20),
    nit character varying(15),
    fecha_nacimiento date,
    sexo character varying(1),
    estado_civil character varying(50),
    cod_estatus character varying(2),
    cuenta_banco character varying(30),
    pasaporte character varying(100),
    cod_pais_pasaporte integer,
    domicilio character varying(150),
    cod_profesion integer,
    partida_nacimiento character varying(250),
    cod_reloj_persona integer,
    url_foto text,
    foto bytea,
    providad character varying(100),
    lugar_nacimiento character varying(100),
    fecha timestamp without time zone,
    clasificacion_geografica character varying(2),
    cod_puesto bigint
);


ALTER TABLE persona OWNER TO postgres;

--
-- Name: persona_cod_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persona_cod_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persona_cod_persona_seq OWNER TO postgres;

--
-- Name: persona_cod_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE persona_cod_persona_seq OWNED BY persona.cod_persona;


--
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proveedores (
    cod_proveedor integer NOT NULL,
    nit character varying(30),
    direccion character varying(50),
    telefono character varying(150),
    nombre_contacto character varying(350),
    activo boolean
);


ALTER TABLE proveedores OWNER TO postgres;

--
-- Name: proveedores_cod_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proveedores_cod_proveedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores_cod_proveedor_seq OWNER TO postgres;

--
-- Name: proveedores_cod_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proveedores_cod_proveedor_seq OWNED BY proveedores.cod_proveedor;


--
-- Name: puesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE puesto (
    cod_puesto integer NOT NULL,
    cod_tipo_puesto integer,
    cod_organigrama integer,
    cod_persona integer,
    descripcion character varying(100),
    cod_estatus character varying(2),
    cod_sede integer,
    no_doc_creacion character varying(200),
    no_doc_finalizacion character varying(200),
    descripcion_femenino character varying(100),
    cod_puesto_reemplazo integer,
    fecha_sistema timestamp without time zone
);


ALTER TABLE puesto OWNER TO postgres;

--
-- Name: puesto_cod_puesto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE puesto_cod_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puesto_cod_puesto_seq OWNER TO postgres;

--
-- Name: puesto_cod_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE puesto_cod_puesto_seq OWNED BY puesto.cod_puesto;


--
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE region (
    cod_region integer NOT NULL,
    descripcion character varying(60),
    cod_estatus character varying(2)
);


ALTER TABLE region OWNER TO postgres;

--
-- Name: region_cod_region_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE region_cod_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE region_cod_region_seq OWNER TO postgres;

--
-- Name: region_cod_region_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE region_cod_region_seq OWNED BY region.cod_region;


--
-- Name: rol_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rol_usuario (
    id integer NOT NULL,
    rol character varying(255),
    nombre character varying(255)
);


ALTER TABLE rol_usuario OWNER TO postgres;

--
-- Name: roles_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_usuario_id_seq OWNER TO postgres;

--
-- Name: roles_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_usuario_id_seq OWNED BY rol_usuario.id;


--
-- Name: sede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sede (
    cod_sede integer NOT NULL,
    cod_municipio integer,
    cod_tipo_sede integer,
    nombre_sede character varying(60),
    direccion character varying(250),
    telefono_1 character varying(50),
    telefono_2 character varying(50),
    cod_coordindor integer,
    cod_organigrama integer,
    cod_estatus character varying(2),
    cod_region_supervision integer,
    correo_electronico character varying(100),
    zona character varying(2)
);


ALTER TABLE sede OWNER TO postgres;

--
-- Name: sede_cod_sede_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sede_cod_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sede_cod_sede_seq OWNER TO postgres;

--
-- Name: sede_cod_sede_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sede_cod_sede_seq OWNED BY sede.cod_sede;


--
-- Name: tipo_dependencia_institucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_dependencia_institucion (
    cod_tipo_dependencia_institucion integer NOT NULL,
    descripcion character varying(50),
    cod_estatus character varying(2),
    abreviatura character varying(30)
);


ALTER TABLE tipo_dependencia_institucion OWNER TO postgres;

--
-- Name: tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNER TO postgres;

--
-- Name: tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNED BY tipo_dependencia_institucion.cod_tipo_dependencia_institucion;


--
-- Name: tipo_imagen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_imagen (
    cod_tipo_imagen integer NOT NULL,
    nombre_tipo_imagen character varying(50),
    orden integer,
    activo boolean
);


ALTER TABLE tipo_imagen OWNER TO postgres;

--
-- Name: tipo_imagen_cod_tipo_imagen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_imagen_cod_tipo_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_imagen_cod_tipo_imagen_seq OWNER TO postgres;

--
-- Name: tipo_imagen_cod_tipo_imagen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_imagen_cod_tipo_imagen_seq OWNED BY tipo_imagen.cod_tipo_imagen;


--
-- Name: tipo_mantenimiento_reparacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_mantenimiento_reparacion (
    cod_tipo_mant_rep integer NOT NULL,
    descripcion character varying(350),
    mant_repa smallint
);


ALTER TABLE tipo_mantenimiento_reparacion OWNER TO postgres;

--
-- Name: tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq OWNER TO postgres;

--
-- Name: tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq OWNED BY tipo_mantenimiento_reparacion.cod_tipo_mant_rep;


--
-- Name: tipo_tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_tipo (
    cod_tipo_tipo integer NOT NULL,
    nombre_tipo_tipo character varying(50),
    orden integer,
    activo boolean
);


ALTER TABLE tipo_tipo OWNER TO postgres;

--
-- Name: tipo_tipo_cod_tipo_tipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_tipo_cod_tipo_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_tipo_cod_tipo_tipo_seq OWNER TO postgres;

--
-- Name: tipo_tipo_cod_tipo_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_tipo_cod_tipo_tipo_seq OWNED BY tipo_tipo.cod_tipo_tipo;


--
-- Name: tipo_uso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_uso (
    cod_tipo_uso integer NOT NULL,
    nombre_tipo_uso character varying(50),
    orden integer,
    activo boolean
);


ALTER TABLE tipo_uso OWNER TO postgres;

--
-- Name: tipo_uso_cod_tipo_uso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_uso_cod_tipo_uso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_uso_cod_tipo_uso_seq OWNER TO postgres;

--
-- Name: tipo_uso_cod_tipo_uso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_uso_cod_tipo_uso_seq OWNED BY tipo_uso.cod_tipo_uso;


--
-- Name: unidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE unidad (
    cod_unidad integer NOT NULL,
    descripcion character varying(100),
    cod_estatus character varying(2),
    tiene_dependencia boolean,
    nomenclatura character varying(3)
);


ALTER TABLE unidad OWNER TO postgres;

--
-- Name: unidad_cod_unidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE unidad_cod_unidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE unidad_cod_unidad_seq OWNER TO postgres;

--
-- Name: unidad_cod_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE unidad_cod_unidad_seq OWNED BY unidad.cod_unidad;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id integer NOT NULL,
    nombre character varying(255),
    password character varying(64)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE vehiculo (
    cod_vehiculo integer NOT NULL,
    placa character varying(15),
    nit character varying(15),
    poliza bigint,
    direccion character varying(250),
    cod_municipio integer,
    cod_departamento integer,
    nombre character varying(250),
    modelo integer,
    cod_tipo_uso integer,
    chasis character varying(20),
    cod_tipo_tipo integer,
    cod_marca integer,
    cod_linea integer,
    vin character varying(20),
    centimetros_cubicos integer,
    cilindros integer,
    toneladas integer,
    titulo character varying(100),
    tarjeta_circulacion character varying(100),
    cod_color integer,
    no_asientos integer,
    no_inventario_registro character varying(250),
    cod_persona_asignacion integer,
    cod_pueston integer,
    no_motor character varying(100),
    orden integer,
    activo boolean
);


ALTER TABLE vehiculo OWNER TO postgres;

--
-- Name: vehiculo_cod_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vehiculo_cod_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vehiculo_cod_vehiculo_seq OWNER TO postgres;

--
-- Name: vehiculo_cod_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vehiculo_cod_vehiculo_seq OWNED BY vehiculo.cod_vehiculo;


--
-- Name: asignacion_vehiculo cod_asignacion_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo SET DEFAULT nextval('asignacion_vehiculo_cod_asignacion_vehiculo_seq'::regclass);


--
-- Name: asignacion_vehiculo_piloto cod_asignacion_vehiculo_piloto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto SET DEFAULT nextval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq'::regclass);


--
-- Name: color cod_color; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color ALTER COLUMN cod_color SET DEFAULT nextval('color_cod_color_seq'::regclass);


--
-- Name: combustible_comision cod_combustible_comision; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision ALTER COLUMN cod_combustible_comision SET DEFAULT nextval('combustible_comision_cod_combustible_comision_seq'::regclass);


--
-- Name: combustible_cupon cod_combustible_cupon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon ALTER COLUMN cod_combustible_cupon SET DEFAULT nextval('combustible_cupon_cod_combustible_cupon_seq'::regclass);


--
-- Name: concurso_mantenimientos cod_concurso_mantenimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento SET DEFAULT nextval('concurso_mantenimientos_cod_concurso_mantenimiento_seq'::regclass);


--
-- Name: cupon_denominacion cod_cupon_denominacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cupon_denominacion ALTER COLUMN cod_cupon_denominacion SET DEFAULT nextval('cupon_denominacion_cod_cupon_denominacion_seq'::regclass);


--
-- Name: departamento cod_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN cod_departamento SET DEFAULT nextval('departamento_cod_departamento_seq'::regclass);


--
-- Name: dependencia_institucion cod_dependencia_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion ALTER COLUMN cod_dependencia_institucion SET DEFAULT nextval('dependencia_institucion_cod_dependencia_institucion_seq'::regclass);


--
-- Name: detalle_mant_rep cod_detalle_mant_repara; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara SET DEFAULT nextval('detalle_mant_rep_cod_detalle_mant_repara_seq'::regclass);


--
-- Name: imagen cod_imagen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen ALTER COLUMN cod_imagen SET DEFAULT nextval('imagen_cod_imagen_seq'::regclass);


--
-- Name: kilometraje_comision cod_kilometraje_comision; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision ALTER COLUMN cod_kilometraje_comision SET DEFAULT nextval('kilometraje_comision_cod_kilometraje_comision_seq'::regclass);


--
-- Name: linea cod_linea; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea ALTER COLUMN cod_linea SET DEFAULT nextval('linea_cod_linea_seq'::regclass);


--
-- Name: mantenimiento_reparacion cod_mantenimiento_reparacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion SET DEFAULT nextval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq'::regclass);


--
-- Name: marca cod_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY marca ALTER COLUMN cod_marca SET DEFAULT nextval('marca_cod_marca_seq'::regclass);


--
-- Name: municipio cod_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('municipio_cod_municipio_seq'::regclass);


--
-- Name: organigrama cod_organigrama; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama ALTER COLUMN cod_organigrama SET DEFAULT nextval('organigrama_cod_organigrama_seq'::regclass);


--
-- Name: pais cod_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais ALTER COLUMN cod_pais SET DEFAULT nextval('pais_cod_pais_seq'::regclass);


--
-- Name: persona cod_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona ALTER COLUMN cod_persona SET DEFAULT nextval('persona_cod_persona_seq'::regclass);


--
-- Name: proveedores cod_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores ALTER COLUMN cod_proveedor SET DEFAULT nextval('proveedores_cod_proveedor_seq'::regclass);


--
-- Name: puesto cod_puesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto ALTER COLUMN cod_puesto SET DEFAULT nextval('puesto_cod_puesto_seq'::regclass);


--
-- Name: region cod_region; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY region ALTER COLUMN cod_region SET DEFAULT nextval('region_cod_region_seq'::regclass);


--
-- Name: rol_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol_usuario ALTER COLUMN id SET DEFAULT nextval('roles_usuario_id_seq'::regclass);


--
-- Name: sede cod_sede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede ALTER COLUMN cod_sede SET DEFAULT nextval('sede_cod_sede_seq'::regclass);


--
-- Name: tipo_dependencia_institucion cod_tipo_dependencia_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion SET DEFAULT nextval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq'::regclass);


--
-- Name: tipo_imagen cod_tipo_imagen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_imagen ALTER COLUMN cod_tipo_imagen SET DEFAULT nextval('tipo_imagen_cod_tipo_imagen_seq'::regclass);


--
-- Name: tipo_mantenimiento_reparacion cod_tipo_mant_rep; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep SET DEFAULT nextval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq'::regclass);


--
-- Name: tipo_tipo cod_tipo_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_tipo ALTER COLUMN cod_tipo_tipo SET DEFAULT nextval('tipo_tipo_cod_tipo_tipo_seq'::regclass);


--
-- Name: tipo_uso cod_tipo_uso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_uso ALTER COLUMN cod_tipo_uso SET DEFAULT nextval('tipo_uso_cod_tipo_uso_seq'::regclass);


--
-- Name: unidad cod_unidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad ALTER COLUMN cod_unidad SET DEFAULT nextval('unidad_cod_unidad_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- Name: vehiculo cod_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo ALTER COLUMN cod_vehiculo SET DEFAULT nextval('vehiculo_cod_vehiculo_seq'::regclass);


--
-- Data for Name: asignacion_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignacion_vehiculo (cod_asignacion_vehiculo, fecha_asignacion, no_solicitud, year_solicitud, cod_unidad_solicitante, cod_persona_pasajero, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, dias_asignacion, num_personas_viaje, cod_sede_lugar_salida, destino, diligencia, causa_1, causa_2, causa_3, cod_dependencia_institucion_juzgado, utiliza_piloto, utiliza_vehiculo, carga_voluminosa, observaciones, cod_persona_solicitante, cod_puesto_solicitante, cod_persona_coordinador_jefe, cod_puesto_coordinador_jefe, cod_persona_asignador_vehiculo, cod_puesto_asignador_vehiculo) FROM stdin;
2	2018-01-19 00:00:00	\N	\N	176	535	2018-01-19 00:00:00	2018-01-31 00:00:00	12	\N	1	\N		\N	\N	\N	\N	f	f	t		\N	\N	6092	4813	2067	417
4	2018-01-19 00:00:00	\N	\N	166	1743	2018-01-20 00:00:00	2018-01-27 00:00:00	7	12	1	\N		\N	\N	\N	\N	f	f	f		\N	\N	7012	5773	2067	417
5	2018-01-25 00:00:00	\N	\N	169	529	2018-01-23 00:00:00	2018-01-25 00:00:00	2	3	35	\N		\N	\N	\N	\N	t	t	t		\N	\N	278	362	2355	475
3	2018-01-19 00:00:00	\N	\N	176	535	2018-01-19 00:00:00	2018-01-31 00:00:00	9	\N	1	\N		\N	\N	\N	\N	f	f	t		\N	\N	6092	362	2067	4916
\.


--
-- Name: asignacion_vehiculo_cod_asignacion_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asignacion_vehiculo_cod_asignacion_vehiculo_seq', 5, true);


--
-- Data for Name: asignacion_vehiculo_piloto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignacion_vehiculo_piloto (cod_asignacion_vehiculo_piloto, cod_asignacion_vehiculo, cod_vehiculo, cod_persona_piloto_asignado, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, fecha_hora_asignacion, estatus_asignacion) FROM stdin;
2	2	\N	2355	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	R
5	4	61	2354	2018-01-20 00:00:00	2018-01-27 00:00:00	2018-01-19 00:00:00	R
6	4	61	2354	2018-01-20 00:00:00	2018-01-27 00:00:00	2018-01-19 00:00:00	A
3	2	60	2355	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	R
8	2	\N	2355	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	R
4	3	\N	2354	2018-01-10 00:00:00	2018-01-19 00:00:00	2018-01-10 00:00:00	R
7	5	\N	\N	2018-01-23 00:00:00	2018-01-25 00:00:00	2018-01-25 00:00:00	R
11	5	60	\N	2018-01-23 00:00:00	2018-01-25 00:00:00	2018-01-25 00:00:00	A
10	3	\N	\N	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	R
12	3	\N	\N	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	A
9	2	60	2355	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	R
13	2	60	2355	2018-01-19 00:00:00	2018-01-31 00:00:00	2018-01-19 00:00:00	A
\.


--
-- Name: asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq', 13, true);


--
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY color (cod_color, nombre_color, orden, activo) FROM stdin;
14	col1	\N	t
15	col2	\N	t
\.


--
-- Name: color_cod_color_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('color_cod_color_seq', 16, true);


--
-- Data for Name: combustible_comision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY combustible_comision (cod_combustible_comision, fecha_entrega, cod_persona_solicitante, cod_puesto_solicitante, cod_unidad, cod_sede, cod_vehiculo, placa, kilometraje_actual, comision_a, observaciones, importe_total_letras, cantidad_estimada_carga, cod_persona_receptor, cod_puesto_receptor, cod_persona_encargado_transporte) FROM stdin;
3	2017-09-20 00:00:00	648	\N	\N	\N	65	\N	10			\N	\N	\N	1	\N
4	2018-01-13 00:00:00	529	5003	125	6	61	\N	100			\N	1	2286	5455	2009
\.


--
-- Name: combustible_comision_cod_combustible_comision_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('combustible_comision_cod_combustible_comision_seq', 4, true);


--
-- Data for Name: combustible_cupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY combustible_cupon (cod_combustible_cupon, cod_combustible_comision, cod_cupon_denominancion, cantidad_cupones, numero_cupon_inicial, numero_cupon_final, suma_total) FROM stdin;
2	3	2	1	1	1	100
3	4	2	3	3	5	300
\.


--
-- Name: combustible_cupon_cod_combustible_cupon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('combustible_cupon_cod_combustible_cupon_seq', 3, true);


--
-- Data for Name: concurso_mantenimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY concurso_mantenimientos (cod_concurso_mantenimiento, no_concurso, fecha_concurso, placa_vehiculo, realizado, cod_empleado_autoriza, cod_cargo_empleado_autoriza, activo) FROM stdin;
\.


--
-- Name: concurso_mantenimientos_cod_concurso_mantenimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('concurso_mantenimientos_cod_concurso_mantenimiento_seq', 1, true);


--
-- Data for Name: cupon_denominacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cupon_denominacion (cod_cupon_denominacion, descripcion, denominacion) FROM stdin;
2	Cúpon de Q.100.00	100
1	Cúpon de Q.50.00	50
\.


--
-- Name: cupon_denominacion_cod_cupon_denominacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cupon_denominacion_cod_cupon_denominacion_seq', 2, true);


--
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departamento (cod_departamento, cod_region, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
1	5	Sacatepequez	AC	3	3
2	1	Guatemala	AC	1	1
3	6	Solola	AC	7	7
4	6	Totonicapan	AC	8	8
5	6	Quetzaltenango	AC	9	9
6	6	San Marcos	AC	12	12
7	6	Retalhuleu	AC	11	11
8	6	Suchitepequez	AC	10	10
9	5	Escuintla	AC	5	5
10	4	Santa Rosa	AC	6	6
11	4	Jutiapa	AC	22	22
12	4	Jalapa	AC	21	21
13	3	Chiquimula	AC	20	20
14	\N	Zacapa	AC	19	19
15	3	El Progreso	AC	2	2
16	2	Baja Verapaz	AC	15	15
17	7	El Quiche	AC	14	14
18	7	Huehuetenango	AC	13	13
19	2	Alta Verapaz	AC	16	16
20	3	Izabal	AC	18	18
21	8	Peten	AC	17	17
22	5	Chimaltenango	AC	4	4
23	1	Desconocido	AC	\N	\N
\.


--
-- Name: departamento_cod_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departamento_cod_departamento_seq', 1, false);


--
-- Data for Name: dependencia_institucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dependencia_institucion (cod_dependencia_institucion, cod_institucion, cod_estatus, nombre, direccion, cod_municipio, cod_departamento, telefono_1, cod_tipo_organo, codigo_causa, cod_tipo_dependencia_institucion, fecha_sistema) FROM stdin;
\.


--
-- Name: dependencia_institucion_cod_dependencia_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dependencia_institucion_cod_dependencia_institucion_seq', 1, false);


--
-- Data for Name: detalle_mant_rep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY detalle_mant_rep (cod_mantenimiento_reparacion, cod_detalle_mant_repara, cod_tipo_mant_rep, costo_reparacion_detalle, descripcion, tiempo_garantia) FROM stdin;
7	5	1	150	pruea	52
\.


--
-- Name: detalle_mant_rep_cod_detalle_mant_repara_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detalle_mant_rep_cod_detalle_mant_repara_seq', 6, true);


--
-- Data for Name: imagen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY imagen (cod_imagen, cod_vehiculo, cod_tipo_imagen, path_imagen, imagenb, nombre_imagen, orden, activo) FROM stdin;
\.


--
-- Name: imagen_cod_imagen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('imagen_cod_imagen_seq', 55, true);


--
-- Data for Name: kilometraje_comision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY kilometraje_comision (cod_kilometraje_comision, cod_persona_piloto, cod_vehiculo, placa, kilometraje_inicial, fecha_hora_salida, kilometraje_final, fecha_hora_entrada, comision_realizada, causa1, causa2, causa3, cod_dependencia_institucion, diligencias_realizadas) FROM stdin;
1	2067	60	\N	2	2018-01-31 00:00:00	3	2018-02-01 00:00:00		\N	\N	\N	\N	\N
\.


--
-- Name: kilometraje_comision_cod_kilometraje_comision_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('kilometraje_comision_cod_kilometraje_comision_seq', 2, true);


--
-- Data for Name: linea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linea (cod_linea, cod_marca, nombre_linea, orden, activo) FROM stdin;
9	7	lin	\N	t
10	7	lin2	\N	t
12	9	linea3	\N	t
\.


--
-- Name: linea_cod_linea_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linea_cod_linea_seq', 12, true);


--
-- Data for Name: mantenimiento_reparacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mantenimiento_reparacion (cod_mantenimiento_reparacion, cod_control_mant_rep, mant_rep, cod_no_concurso, cod_proveedor, no_factura, serie_factura, fecha_emision_factura, fecha_recepcion_factura, fecha_recepcion_vehiculo, fecha_retorno_vehiculo, dias_mantenimiento, cod_tipo_mantenimiento, total_mantenimiento_repara_q, cod_vehiculo, placa, utilizo_seguro, registro_pago, cod_sede, cod_empleado_recepcion, cod_cargo_empleado_recepcion, cod_empleado_recepcion_fact, cod_cargo_empleado_recepcion_fact, cod_empleado_digita, activo, fecha_envio_vehiculo) FROM stdin;
4	\N	1	\N	\N	\N		\N	\N	\N	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	\N	1	\N	\N	\N		\N	\N	\N	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	\N	1	\N	1	8888	A	\N	\N	\N	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: mantenimiento_reparacion_cod_mantenimiento_reparacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq', 7, true);


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY marca (cod_marca, nombre_marca, orden, activo) FROM stdin;
7	toyota	\N	f
9	Nissan	\N	t
\.


--
-- Name: marca_cod_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('marca_cod_marca_seq', 9, true);


--
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY municipio (cod_municipio, cod_departamento, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
1	1	Antigua Guatemala	AC	1	1
2	1	Jocotenango	AC	2	2
3	1	Pastores	AC	3	3
4	1	Santo Domingo Xenacoj	AC	5	5
5	1	Sumpango	AC	4	4
6	1	Santiago Sacatepequez	AC	6	6
7	1	San Bartolome Milpas Altas	AC	7	7
8	1	San Lucas Sacatepequez	AC	8	8
9	1	Santa Lucia Milpas Altas	AC	9	9
10	1	Magdalena Milpas Altas	AC	10	10
11	1	Santa Maria de Jesus	AC	11	11
12	1	Ciudad Vieja	AC	12	12
13	1	San Miguel Duenas 	AC	13	13
14	1	San Juan Alotenango	AC	14	14
15	1	San Antonio Aguas Calientes	AC	15	15
16	1	Santa Catarina Barahona	AC	16	16
17	2	Guatemala	AC	1	1
18	2	Santa Catarina Pinula	AC	2	2
19	2	San Jose Pinula	AC	3	3
20	2	San Jose del Golfo	AC	4	4
21	2	Palencia	AC	5	5
22	2	Chinautla	AC	6	6
23	2	San Pedro Ayampuc	AC	7	7
24	2	Mixco	AC	8	8
25	2	San Pedro Sacatepequez	AC	9	9
26	2	San Juan Sacatepequez	AC	10	10
27	2	San Raimundo	AC	11	11
28	2	Chuarrancho	AC	12	12
29	2	Fraijanes	AC	13	13
30	2	Amatitlan	AC	14	14
31	2	Villa Nueva	AC	15	15
32	2	Villa Canales	AC	16	16
33	2	San Miguel Petapa	AC	17	17
34	22	Chimaltenango	AC	1	1
35	22	San Jose Poaquil	AC	2	2
36	22	San Juan Comalapa	AC	4	4
37	22	Santa Apolonia	AC	5	5
38	22	Tecpan Guatemala	AC	6	6
39	22	Patzun	AC	7	7
40	22	San Miguel Pochuta	AC	8	8
41	22	Patzicia	AC	9	9
42	22	Santa Cruz Balanya	AC	10	10
43	22	Acatenango	AC	11	11
44	22	Yepocapa	AC	12	12
45	22	San Andres Itzapa	AC	13	13
46	22	Parramos	AC	14	14
47	22	Zaragoza	AC	15	15
48	22	El Tejar	AC	16	16
49	3	Solola	AC	1	1
50	3	San Jose Chacaya	AC	2	2
51	3	Santa Maria Visitacion	AC	3	3
52	3	Santa Lucia Utatlan	AC	4	4
53	3	Nahuala	AC	5	5
54	3	Santa Catarina Ixtahuacan	AC	6	6
55	3	Santa Clara la Laguna	AC	7	7
56	3	Concepcion	AC	8	8
57	3	San Andres Semetabaj	Ac	9	9
58	3	Panajachel	AC	10	10
59	3	Santa Catarina Palopo	AC	11	11
60	3	San Antonio Palopo	AC	12	12
61	3	San Lucas Toliman	AC	13	13
62	3	Santa Cruz la Laguna	AC	14	14
63	3	San Pablo La Laguna	AC	15	15
64	3	San Marcos la Laguna	AC	16	16
65	3	San Juan La Laguna	AC	17	17
66	3	San Pedro La Laguna	AC	18	18
67	3	Santiago Atitlan	AC	19	19
68	4	Totonicapan	AC	1	1
69	4	San Cristobal Totonicapan	AC	2	2
70	4	San Francisco el Alto	AC	3	3
71	4	San Andres Xecul	AC	4	4
72	4	Momostenango	AC	5	5
73	4	Santa Maria Chiquimula	AC	6	6
74	4	Santa Lucia La Reforma	AC	7	7
75	4	San Bartolo Aguas Calientes	AC	8	8
76	5	Quetzaltenango	AC	1	1
77	5	Salcaja	AC	2	2
78	5	Olintepeque	AC	3	3
79	5	San Carlos Sija	AC	4	4
80	5	Sibilia	AC	5	5
81	5	Cabrican	AC	6	6
82	5	Cajola	AC	7	7
83	5	San Miguel Siguila	AC	8	8
84	5	Ostuncalco	AC	9	9
85	5	San Mateo	AC	10	10
86	5	Concepcion Chiquirichapa	AC	11	11
87	5	San Martin Sacatepequez	AC	12	12
88	5	Almolonga	AC	13	13
89	5	Cantel	AC	14	14
90	5	Huitan	AC	15	15
91	5	Zunil	AC	16	16
92	5	Colomba	AC	17	17
93	5	San Francisco La Union	AC	18	18
94	5	El Palmar	AC	19	19
95	5	Coatepeque	AC	20	20
96	5	Genova	AC	21	21
97	5	Flores Costa Cuca	AC	22	22
98	5	La Esperanza	AC	23	23
99	5	Palestina de los Altos	AC	24	24
100	6	San Marcos	AC	1	1
101	6	San Pedro Sacatepequez	AC	2	2
102	6	San Antonio Sacatepequez	AC	3	3
103	6	Comitancillo	AC	4	4
104	6	San Miguel Ixtahuacan	AC	5	5
105	6	Concepcion Tutuapa	AC	6	6
106	6	Tacana	AC	7	7
107	6	Sibinal	AC	8	8
108	6	Tajumulco	AC	9	9
109	6	Tejutla	AC	10	10
110	6	San Rafael Pie de la Cuesta	AC	11	11
111	6	Nuevo Progreso	AC	12	12
112	6	El Tumbador	AC	13	13
113	6	El Rodeo	AC	14	14
114	6	Malacatan	AC	15	15
115	6	Catarina	AC	16	16
116	6	Ayutla	AC	17	17
117	6	Ocos	AC	18	18
118	6	San Pablo	AC	19	19
119	6	El Quetzal	AC	20	20
120	6	La Reforma	AC	21	21
121	6	Pajapita	AC	22	22
122	6	Ixchiguan	AC	23	23
123	6	San Jose Ojetenam	AC	24	24
124	6	San Cristobal Cucho	AC	25	25
125	6	Sipacapa	AC	26	26
126	6	Esquipulas Palo Gordo	AC	27	27
127	6	Rio Blanco	AC	28	28
128	6	San Lorenzo	AC	29	29
129	7	Retalhuleu	AC	1	1
130	7	San Sebastian	AC	2	2
131	7	Santa Cruz Mulua	AC	3	3
132	7	San Martin Zapotitlan	AC	4	4
133	7	San Felipe	AC	5	5
134	7	San Andres Villa Seca	AC	6	6
135	7	Champerico	AC	7	7
136	7	Nuevo San Carlos	AC	8	8
137	7	El Asintal	AC	9	9
138	8	Mazatenango	AC	1	1
139	8	Cuyotenango	AC	2	2
140	8	San Francisco Zapotitlan	AC	3	3
141	8	San Bernardino	AC	4	4
142	8	San Jose El idolo	AC	5	5
143	8	Santo Domingo Suchitepequez	AC	6	6
144	8	San Lorenzo	AC	7	7
145	8	Samayac	AC	8	8
146	8	San Pablo Jocopilas	AC	9	9
147	8	San Antonio Suchitepequez	AC	10	10
148	8	San Miguel Panan	AC	11	11
149	8	San Gabriel	AC	12	12
150	8	Chicacao	AC	13	13
151	8	Patulul	AC	14	14
152	8	Santa Barbara	AC	15	15
153	8	San Juan Bautista	AC	16	16
154	8	Santo Tomas La Union	AC	17	17
155	8	Zunilito	AC	18	18
156	8	Pueblo Nuevo	AC	19	19
157	8	Rio Bravo	AC	20	20
158	9	Escuintla	AC	1	1
159	9	Santa Lucia Cotzumalguapa	AC	2	2
160	9	La Democracia	AC	3	3
161	9	Siquinala	AC	4	4
162	9	Masagua	AC	5	5
163	9	Pueblo Nuevo Tiquisate	AC	6	6
164	9	La Gomera	AC	7	7
165	9	Guanagazapa	AC	8	8
166	9	San Jose	AC	9	9
167	9	Iztapa	AC	10	10
168	9	Palin	AC	11	11
169	9	San Vicente Pacaya	AC	12	12
170	9	Nueva Concepcion	AC	13	13
171	10	Cuilapa	AC	1	1
172	10	Barberena	AC	2	2
173	10	Santa Rosa de Lima	AC	3	3
174	10	Casillas	AC	4	4
175	10	San Rafael Las Flores	AC	5	5
176	10	Oratorio	AC	6	6
177	10	San Juan Tecuaco	AC	7	7
178	10	Chiquimulilla	AC	8	8
179	10	Taxisco	AC	9	9
180	10	Santa Maria Ixhuatan	AC	10	10
181	10	Guazacapan	AC	11	11
182	10	Santa Cruz Naranjo	AC	12	12
183	10	Pueblo Nuevo Vinas	AC	13	13
184	10	Nueva Santa Rosa	AC	14	14
185	11	Jutiapa	AC	1	1
186	11	El Progreso	AC	2	2
187	11	Santa Catarina Mita	AC	3	3
188	11	Agua Blanca	AC	4	4
189	11	Asuncion Mita	AC	5	5
190	11	Yupiltepeque	AC	6	6
191	11	Atescatempa	AC	7	7
192	11	Jerez	AC	8	8
193	11	El Adelanto	AC	9	9
194	11	Zapotitlan	AC	10	10
195	11	Comapa	AC	11	11
196	11	Jalpatagua	AC	12	12
197	11	Conguaco	AC	13	13
198	11	Moyuta	AC	14	14
199	11	Pasaco	AC	15	15
200	11	San Jose Acatempa	AC	16	16
201	11	Quezada	AC	17	17
202	12	Jalapa	AC	1	1
203	12	San Pedro Pinula	AC	2	2
204	12	San Luis Jilotepeque	AC	3	3
205	12	San Manuel Chaparron	AC	4	4
206	12	San Carlos Alzatate	AC	5	5
207	12	Monjas	AC	6	6
208	12	Mataquescuintla	AC	7	7
209	13	Chiquimula	AC	1	1
210	13	San Jose La Arada	AC	2	2
211	13	San Juan Ermita	AC	3	3
212	13	Jocotan	AC	4	4
213	13	Camotan	AC	5	5
214	13	Olopa	AC	6	6
215	13	Esquipulas	AC	7	7
216	13	Concepcion Las Minas	AC	8	8
217	13	Quezaltepeque	AC	9	9
218	13	San Jacinto	AC	10	10
219	13	Ipala	AC	11	11
220	14	Zacapa	AC	1	1
221	14	Cabanas	AC	7	7
222	14	Estanzuela	AC	2	2
223	14	Gualan	AC	4	4
224	14	Huite	AC	10	10
225	14	La Union	AC	9	9
226	14	Rio Hondo	AC	3	3
227	14	San Diego	AC	8	8
228	14	Teculutan	AC	5	5
229	14	Usumatlan	AC	6	6
230	15	Guastatoya	AC	1	1
231	15	Morazan	AC	2	2
232	15	San Agustin Acasaguastlan	AC	3	3
233	15	San Cristobal Acasaguastlan	AC	4	4
234	15	El Jicaro	AC	5	5
235	15	Sanarate	AC	7	7
236	15	Sansare	AC	6	6
237	15	San Antonio la Paz	AC	8	8
238	16	Salama	AC	1	1
239	16	San Miguel Chicaj	AC	2	2
240	16	Rabinal	AC	3	3
241	16	Cubulco	AC	4	4
242	16	Granados	AC	5	5
243	16	Santa Cruz El Chol	AC	6	6
244	16	San Jeronimo	AC	7	7
245	16	Purulha	AC	8	8
246	17	Santa Cruz del Quiche	AC	1	1
247	17	Chiche	AC	2	2
248	17	Chinique	AC	3	3
249	17	Zacualpa	AC	4	4
250	17	Chajul	AC	5	5
251	17	Chichicastenango	AC	6	6
252	17	Patzite	AC	7	7
253	17	San Antonio Ilotenango	AC	8	8
254	17	San Pedro Jocopilas	AC	9	9
255	17	Cunen	AC	10	10
256	17	San Juan Cotzal	AC	11	11
257	17	Joyabaj	AC	12	12
258	17	Nebaj	AC	13	13
259	17	San Andres Sajcabaja	AC	14	14
260	17	Uspantan	AC	15	15
261	17	Sacapulas	AC	16	16
262	17	San Bartolome Jocotenango	AC	17	17
263	17	Canilla	AC	18	18
264	17	Chicaman	AC	19	19
265	17	Ixcan	AC	20	20
266	17	Pachalum	AC	21	21
267	18	Huehuetenango	AC	1	1
268	18	Chiantla	AC	2	2
269	18	Malacatancito	AC	3	3
270	18	Cuilco	AC	4	4
271	18	Nenton	AC	5	5
272	18	San Pedro Necta	AC	6	6
273	18	Jacaltenango	AC	7	7
274	18	Soloma	AC	8	8
275	18	San Ildelfonso Ixtahuacan	AC	9	9
276	18	Santa Barbara	AC	10	10
277	18	La Libertad	AC	11	11
278	18	La Democracia	AC	12	12
279	18	San Miguel Acatan	AC	13	13
280	18	San Rafael la Independencia	AC	14	14
281	18	Todos Santos Cuchumatan	AC	15	15
282	18	San Juan Atitan	AC	16	16
283	18	Santa Eulalia	AC	17	17
284	18	San Mateo Ixtatan	AC	18	18
285	18	Colotenango	AC	19	19
286	18	San Sebastian Huehuetenango	AC	20	20
287	18	Tectitan	AC	21	21
288	18	Concepcion Huista	AC	22	22
289	18	San Juan Ixcoy	AC	23	23
290	18	San Antonio Huista	AC	24	24
291	18	San Sebastian Coatan	AC	25	25
292	18	Santa Cruz Barillas	AC	26	26
293	18	Aguacatan	AC	27	27
294	18	San Rafael Petzal	AC	28	28
295	18	San Gaspar Ixchil	AC	29	29
296	18	Santiago Chimaltenango	AC	30	30
297	18	Santa Ana Huista	AC	31	31
298	19	Coban	AC	1	1
299	19	Santa Cruz Verapaz	AC	2	2
300	19	San Cristobal Verapaz	AC	3	3
301	19	Tactic	AC	4	4
302	19	Tamahu	AC	5	5
303	19	Tucuru	AC	6	6
304	19	Panzos	AC	7	7
305	19	Senahu	AC	8	8
306	19	San Pedro Carcha	AC	9	9
307	19	San Juan Chamelco	AC	10	10
308	19	Lanquin	AC	11	11
309	19	Cahabon	AC	12	12
310	19	Chisec	AC	13	13
311	19	Chahal	AC	14	14
312	19	Fray Bartolome de las Casas	AC	15	15
313	20	Puerto Barrios	AC	1	1
314	20	Livingston	AC	2	2
315	20	El Estor	AC	3	3
316	20	Morales	AC	4	4
317	20	Los Amates	AC	5	5
318	21	Flores	AC	1	1
319	21	San Jose	AC	2	2
320	21	San Benito	AC	3	3
321	21	San Andres	AC	4	4
322	21	La Libertad	AC	5	5
323	21	San Francisco	AC	6	6
324	21	Santa Ana	AC	7	7
325	21	Dolores	AC	8	8
326	21	San Luis	AC	9	9
327	21	Sayaxche	AC	10	10
328	21	Melchor de Mencos	AC	11	11
329	21	Poptun	AC	12	12
330	23	Desconocido	AC	\N	\N
331	19	Santa Catarina La Tinta	AC	16	16
332	19	Raxruha	AC	17	17
333	22	San Martin Jilotepeque	AC	3	3
334	18	Union Cantinil	AC	32	32
337	21	Las Cruces	AC	13	\N
338	6	La Blanca	AC	26	\N
339	14	San Jorge	AC	11	\N
340	8	San Jose La Maquina	AC	21	\N
341	21	El Chal	AC	14	\N
342	9	Sipacate	AC	14	14
\.


--
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_cod_municipio_seq', 1, false);


--
-- Data for Name: organigrama; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY organigrama (cod_organigrama, cod_unidad, cod_organigrama_padre, cod_status) FROM stdin;
1	1	\N	AC
2	173	1	AC
3	50	1	AC
4	4	1	AC
5	168	89	AC
6	112	8	AC
7	54	1	AC
8	8	1	AC
9	177	1	AC
10	10	1	AC
11	95	9	AC
12	12	8	AC
13	13	8	AC
14	14	12	AC
15	170	12	AC
16	110	8	AC
17	33	12	AC
18	34	13	AC
19	35	13	AC
20	172	13	AC
21	94	19	HI
22	122	9	AC
23	102	9	AC
24	175	9	AC
25	104	9	AC
26	38	9	AC
27	39	9	AC
28	40	9	AC
29	41	9	AC
30	105	9	AC
31	99	10	AC
32	45	10	AC
33	100	31	AC
34	101	31	AC
35	77	32	AC
36	78	32	AC
37	79	32	AC
38	80	1	BJ
81	167	1	AC
82	82	12	AC
83	83	17	AC
84	84	17	AC
85	85	17	AC
86	86	1	AC
87	87	9	AC
88	88	10	AC
89	90	1	AC
90	93	89	AC
91	106	89	AC
92	107	6	AC
93	108	6	AC
94	109	6	AC
95	113	89	AC
96	114	95	AC
97	117	95	AC
98	118	12	AC
99	119	19	BJ
100	120	9	AC
101	121	9	AC
102	174	81	AC
103	123	90	AC
104	124	12	AC
105	125	25	AC
106	171	25	AC
107	127	12	AC
108	128	25	AC
109	129	25	AC
110	130	25	AC
111	131	9	AC
112	132	87	AC
113	133	87	AC
114	134	87	AC
115	135	9	AC
116	136	81	AC
117	137	81	AC
118	138	81	AC
119	139	81	AC
120	140	81	AC
121	141	81	AC
122	142	81	AC
123	143	81	AC
124	144	10	AC
125	145	31	AC
126	146	89	AC
127	147	5	AC
128	148	5	AC
129	149	5	AC
130	150	5	AC
131	151	142	AC
132	152	142	AC
133	153	89	AC
134	154	89	AC
135	155	141	AC
136	156	89	AC
137	157	19	AC
138	161	81	AC
139	162	9	AC
140	163	9	AC
141	164	1	AC
142	165	89	AC
143	178	12	AC
\.


--
-- Name: organigrama_cod_organigrama_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('organigrama_cod_organigrama_seq', 2, true);


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pais (cod_pais, nombre_pais, gentilicio, codigo_telefonico, codigo_iso, cod_estatus) FROM stdin;
1	Guatemala	Guatemalteco	502	GT	AC
\.


--
-- Name: pais_cod_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pais_cod_pais_seq', 1, true);


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona (cod_persona, cod_tipo_persona, cod_pais, cod_municipio, nombre_1, nombre_2, apellido_1, apellido_2, apellido_casada, cod_registro, numero_cedula, nit, fecha_nacimiento, sexo, estado_civil, cod_estatus, cuenta_banco, pasaporte, cod_pais_pasaporte, domicilio, cod_profesion, partida_nacimiento, cod_reloj_persona, url_foto, foto, providad, lugar_nacimiento, fecha, clasificacion_geografica, cod_puesto) FROM stdin;
648	\N	\N	\N	Maria	Evelia	Avalos	Torres	Orozco	\N	\N	19956207	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	359
1197	\N	\N	\N	Maria	Del Carmen	Baldizon	\N	\N	\N	\N	1285181	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	516
313	\N	\N	\N	Olivia	Ana Lucia	Baldizon	Reyes	Amado	\N	\N	31444695	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	341	\N	\N	\N	\N	\N	\N	495
1628	\N	\N	\N	Morel	Roel	De Leon	Diaz	\N	\N	\N	572502k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	402
2305	\N	\N	\N	Erick	Leonel	Flores	Palacios	\N	\N	\N	4745582	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	136
625	\N	\N	\N	Dora	Petronila	Garcia	Ajucum	Casia	\N	\N	8520410	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	398
2306	\N	\N	\N	Berta	Angélica	García	Chavez	Morales	\N	\N	17575923	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	348
2308	\N	\N	\N	Nery	Antonio	Garcia	Lopez	\N	\N	\N	1620053	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	145
793	\N	\N	\N	Astrid	Kenelma	Garcia	Y Vidaurre	Mendizabal	\N	\N	17649218	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	142
2315	\N	\N	\N	Nelson	Orlando	Lopez	Garcia	\N	\N	\N	14814269	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	385
1006	\N	\N	\N	Brenda	Margarita	Martinez	Cerna	Coc	\N	\N	4507274	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	349
1327	\N	\N	\N	Ricardo	Efrain	Mogollon	Mendoza	\N	\N	\N	7512716	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	360
1986	\N	\N	\N	Julio	Pablo	Morales	Giron	\N	\N	\N	7660200	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	137
1067	\N	\N	\N	Sergio	Eduardo	Paniagua	Meza	\N	\N	\N	2013177	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	397
76	\N	\N	\N	Otto	Haroldo	Ramirez	Vasquez	\N	\N	\N	15589846	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	392
645	\N	\N	\N	Federico	Augusto	Ruata	Cardona	\N	\N	\N	17638089	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	386
1007	\N	\N	\N	Mario	Humberto	Smith	Angel	\N	\N	\N	55867	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	395
2340	\N	\N	\N	Alvaro	Enrique	Sontay	Ical	\N	\N	\N	20084447	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	350
1308	\N	\N	\N	Rosa	Maria	Taracena	Pimentel	Calderon	\N	\N	17867541	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	355
100	\N	\N	\N	Sylvia	Gisselle	Torres	Monroy	\N	\N	\N	2433233k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	483
1184	\N	\N	\N	Beatris	Laneli	Tuna	Gonzalez	\N	\N	\N	18230555	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	515
1529	\N	\N	\N	Jeannette	\N	Valverth	Casasola	Rivera	\N	\N	8383642	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4025	\N	\N	\N	\N	\N	\N	150
2354	\N	\N	\N	Luis	Aroldo	Gonzalez	\N	\N	\N	\N	7801548	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	47	\N	\N	\N	\N	\N	\N	474
2355	\N	\N	\N	Javier	Alejandro	Gramajo	Molina	\N	\N	\N	6282032	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	422	\N	\N	\N	\N	\N	\N	475
1560	\N	\N	\N	Ana	Estela	Reyes	Gomez	Alay	\N	\N	28121775	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	402	\N	\N	\N	\N	\N	\N	466
578	\N	\N	\N	Maria	Cristina	Maaz	Buechsel	de Winter	\N	\N	20363095	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	845
2088	\N	\N	\N	Humberto	Rafael	Hidalgo	Caballeros	\N	\N	\N	12395609	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	846
1912	\N	\N	\N	Miguel	Angel	Perez	\N	\N	\N	\N	3405036	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	421	\N	\N	\N	\N	\N	\N	850
2320	\N	\N	\N	Carlos	Vinicio	Mejia	Prado	\N	\N	\N	P              	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	480
2057	\N	\N	\N	Ruddy	Orlando	Arreola	Higueros	\N	\N	\N	20197160	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	406
659	\N	\N	\N	Miguel	Enrique	Felipe	\N	\N	\N	\N	39482081	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	370	\N	\N	\N	\N	\N	\N	1543
1757	\N	\N	\N	Ersa	Ludmilla	Lopez	Pineda	Garcia	\N	\N	5737389	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1579
1825	\N	\N	\N	Luis	Enrique	Quiñonez	Zeta	\N	\N	\N	16972287	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	484
2238	\N	\N	\N	Reyna	Magaly	Guerra	Najera	Castro	\N	\N	16283805	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1590
2167	\N	\N	\N	Maximiliano	\N	Antonio	Francisco	\N	\N	\N	26525356	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	405
823	\N	\N	\N	Alberto	Benito	Uz	Pu	\N	\N	\N	20100779	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4020	\N	\N	\N	\N	\N	\N	1600
2017	\N	\N	\N	Astrid	Janet	Riley	Ramirez	Pereira	\N	\N	20191529	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1694
384	\N	\N	\N	Maria	Magdalena	Cadenas	Fuentes	Loarca	\N	\N	5764831	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	403
581	\N	\N	\N	Gustavo	Adolfo	Morales	Sandoval	\N	\N	\N	1661213	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	399
2328	\N	\N	\N	Néstor	Oswaldo	Recinos	Oliva	\N	\N	\N	32189559	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	1797
3248	\N	\N	\N	Ruth	Angelica	Soto	Muñoz	Lam	\N	\N	7308469	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	508
1627	\N	\N	\N	Dina	Siomara	Donis	Aguirre	\N	\N	\N	27494055	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016
2478	\N	\N	\N	Fevy	Magdely	Gramajo	Morales	\N	\N	\N	24866350	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017
2397	\N	\N	\N	Monica	Sabrina	Reyes	Morales	\N	\N	\N	51924153	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020
2370	\N	\N	\N	Juan	Fernando	Schaad	Perez	\N	\N	\N	1423307K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	2185
652	\N	\N	\N	Miguel	Angel	Guzman	Barrios	\N	\N	\N	5959012	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	885
275	\N	\N	\N	Ines	Yasmira	Lopez	Rodriguez	\N	\N	\N	31045855	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2636
1284	\N	\N	\N	Maria	Angela	Chocoj	Camey	Camey	\N	\N	40148491	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2640
328	\N	\N	\N	Miguel	\N	Sulugui	De Leon	\N	\N	\N	8340382	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2641
665	\N	\N	\N	Ligia	Ernestina	Urquizu	Castellanos	Gomez	\N	\N	16961889	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	352	\N	\N	\N	\N	\N	\N	502
21	\N	\N	\N	Miriam	Lorena	Cacacho	Diaz	Asencio	\N	\N	17266750	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	339	\N	\N	\N	\N	\N	\N	896
1130	\N	\N	\N	Claudia	Amaid	Guzmán	Campos	Hurtarte	\N	\N	54917204	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	404	\N	\N	\N	\N	\N	\N	3190
5428	\N	\N	\N	Jennifer	Paola	Garcia	Barillas	\N	\N	\N	80221882	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	387	\N	\N	\N	\N	\N	\N	3225
278	\N	\N	\N	Agusto	Reyes	Vicente	Vicente	\N	\N	\N	16061462	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	362
881	\N	\N	\N	Seydy	Johanna	Recinos	Florian	Peñate	\N	\N	30007623	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1052
1784	\N	\N	\N	Jose	Miguel	Cifuentes	Cifuentes	\N	\N	\N	42144469	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	400
850	\N	\N	\N	Jorge	Luis	Valladares	Monterroso	\N	\N	\N	6017320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	388
131	\N	\N	\N	Edwin	Arnoldo	Aguilar	Monterroso	\N	\N	\N	31867278	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	359	\N	\N	\N	\N	\N	\N	3494
1953	\N	\N	\N	Santiago	\N	Amador	Carranza	\N	\N	\N	22447261	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	1040	\N	\N	\N	\N	\N	\N	3519
963	\N	\N	\N	Mayra	Yulisa	Arias	Sandoval	\N	\N	\N	38883082	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5160	\N	\N	\N	\N	\N	\N	3557
556	\N	\N	\N	Carlos	Eberto	Avalos	Lopez	\N	\N	\N	8220824	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3584
1012	\N	\N	\N	Alejandra	Judith	Barrientos	Rodriguez	\N	\N	\N	20154712	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	377	\N	\N	\N	\N	\N	\N	3479
162	\N	\N	\N	Khrisstian	Lucia	Cabrera	Aldana	\N	\N	\N	38872161	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5124	\N	\N	\N	\N	\N	\N	3558
423	\N	\N	\N	Doris	Lizzeth	Camas	Lopez	\N	\N	\N	45905568	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3590
544	\N	\N	\N	José	Ignacio Eduardo	Camey	Barrios	\N	\N	\N	1818314k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4002	\N	\N	\N	\N	\N	\N	3600
1337	\N	\N	\N	Victor	René	Castro	Fuentes	\N	\N	\N	20182090	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3605
626	\N	\N	\N	Debora	Raquel	Contreras	Mendez	Diaz	\N	\N	18284205	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3531
323	\N	\N	\N	Rosa	Emelida	Cruz	\N	\N	\N	\N	27050602	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5144	\N	\N	\N	\N	\N	\N	3541
725	\N	\N	\N	Walter	Enrique	Cuc	Tipol	\N	\N	\N	26911396	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3512
841	\N	\N	\N	Pedro	Jacinto	De Paz	Perez	\N	\N	\N	8539804	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3604
1144	\N	\N	\N	Marvin	Rene	Donis	Orellana	\N	\N	\N	18238696	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5181	\N	\N	\N	\N	\N	\N	3562
120	\N	\N	\N	Elmer	Javier	España	Juarez	\N	\N	\N	7096070	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	401	\N	\N	\N	\N	\N	\N	3442
465	\N	\N	\N	Julio	Alejandro	Marquez	Aguilar	\N	\N	\N	38767600	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5175	\N	\N	\N	\N	\N	\N	3556
191	\N	\N	\N	Gonzalo	Aroldo	Franco	Ramirez	\N	\N	\N	1730668k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4000	\N	\N	\N	\N	\N	\N	3601
2050	\N	\N	\N	Rudy	Fernando	Garcia	Hernandez	\N	\N	\N	17898331	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	86	\N	\N	\N	\N	\N	\N	3486
213	\N	\N	\N	Elida	Maria	Giron	Lucero	\N	\N	\N	18054862	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5154	\N	\N	\N	\N	\N	\N	3563
1834	\N	\N	\N	Jovia	Bernardina	Gonzalez	Tul	Pop	\N	\N	12660329	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3513
929	\N	\N	\N	Fritza	Amalia	Grajeda	Javalois	\N	\N	\N	28038428	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4006	\N	\N	\N	\N	\N	\N	3602
774	\N	\N	\N	Jose	Humberto	Gutierrez	Perez	\N	\N	\N	5925185	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	375	\N	\N	\N	\N	\N	\N	3506
622	\N	\N	\N	Mynor	Enrique	Jordan	Villeda	\N	\N	\N	26411733	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	51	\N	\N	\N	\N	\N	\N	3536
2140	\N	\N	\N	Telma	Yolanda	Juárez	Carrillo	\N	\N	\N	12739170	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3487
84	\N	\N	\N	Dulce	Maria Del Carmen	Lechuga	Salazar	\N	\N	\N	34084622	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3594
1121	\N	\N	\N	Victor	Vicente	Lem	Masc	\N	\N	\N	29428521	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3612
5163	\N	\N	\N	Rosa	Citlali	Ligorria	Sierra	\N	\N	\N	579952k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3582
2126	\N	\N	\N	Luis	Fernando	Linares	Hernandez	\N	\N	\N	31805507	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	204	\N	\N	\N	\N	\N	\N	3520
2357	\N	\N	\N	Rubia	Marilu	Lino	Orozco	\N	\N	\N	27033260	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5185	\N	\N	\N	\N	\N	\N	3543
783	\N	\N	\N	Ronal	Joel	Lopez	Rodriguez	\N	\N	\N	8208379	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5130	\N	\N	\N	\N	\N	\N	3564
2359	\N	\N	\N	Byron	Roberto	Lopez	Siliezar	\N	\N	\N	17051304	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5150	\N	\N	\N	\N	\N	\N	3565
409	\N	\N	\N	Julio	Alberto	Lucas	Lopez	\N	\N	\N	7438877	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3592
2155	\N	\N	\N	Nery	Estuardo	Monroy	Rodriguez	\N	\N	\N	7065337	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3585
1894	\N	\N	\N	Edgar	Orlando	Morales	\N	\N	\N	\N	684412K        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3586
1318	\N	\N	\N	Gustavo	Adolfo	Morales	Franco	\N	\N	\N	21169217	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3607
507	\N	\N	\N	Lery	Dinora	Morales	Herrera	\N	\N	\N	19919573	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5119	\N	\N	\N	\N	\N	\N	3574
2360	\N	\N	\N	Byron	Estuardo	Morales	Lopez	\N	\N	\N	24549118	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	372	\N	\N	\N	\N	\N	\N	3464
1091	\N	\N	\N	Anibal	Josue	Moreno	Oliveros	\N	\N	\N	8500894	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3529
1967	\N	\N	\N	Cornelio	\N	Muj	Chonay	\N	\N	\N	21069174	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3518
1377	\N	\N	\N	Lázaro	Daniel	Par	Cuá	\N	\N	\N	24477532	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3616
853	\N	\N	\N	Esdras	Manuel	Perez	\N	\N	\N	\N	22444513	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	338	\N	\N	\N	\N	\N	\N	3507
987	\N	\N	\N	Mario	Gerson	Perez	Hernandez	\N	\N	\N	14228521	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5149	\N	\N	\N	\N	\N	\N	3546
2100	\N	\N	\N	Nora	Elizabeth	Perez	Morales	Rosales	\N	\N	17533090	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3526
212	\N	\N	\N	Hector	Mynor	Pineda	Ochaeta	\N	\N	\N	25707361	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3517
1	\N	\N	\N	Rudy	Rene	Quan	Lopez	\N	\N	\N	19923732	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3532
2364	\N	\N	\N	Vilma	Haydee	Ramirez	Diaz	\N	\N	\N	25571036	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5187	\N	\N	\N	\N	\N	\N	3547
1173	\N	\N	\N	Nicolas	\N	Reanda	Lacan	\N	\N	\N	28206274	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3613
2331	\N	\N	\N	Aida	Liliana	Rivas	\N	\N	\N	\N	22381708	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	59	\N	\N	\N	\N	\N	\N	3595
455	\N	\N	\N	Carlos	Roberto	Rodenas	Navarro	\N	\N	\N	11875119	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4003	\N	\N	\N	\N	\N	\N	3603
833	\N	\N	\N	Leslie	Marisol	Rojas	\N	\N	\N	\N	41567080	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7005	\N	\N	\N	\N	\N	\N	3589
4876	\N	\N	\N	Lesbia	Carolina	Salazar	Estrada	\N	\N	\N	826404k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3530
2072	\N	\N	\N	Andrea	\N	Samuc	Ixbalan	Leon	\N	\N	29676940	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3611
2387	\N	\N	\N	Juan	Luis	Sanchez	Muñoz	\N	\N	\N	8262314	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	187	\N	\N	\N	\N	\N	\N	3587
608	\N	\N	\N	Marcela	\N	Schaeffer	Villagran	\N	\N	\N	17213223	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5165	\N	\N	\N	\N	\N	\N	3569
325	\N	\N	\N	Luis	Alfredo Boanerges	Solis	Rodriguez	\N	\N	\N	44894619	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	145	\N	\N	\N	\N	\N	\N	3460
1509	\N	\N	\N	Brenda	Janeth	Stalling	Sierra	Pinelo	\N	\N	38589141	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3515
713	\N	\N	\N	Ruth	Ludivina	Valenzuela	Cano	Castillo	\N	\N	39958515	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3527
1027	\N	\N	\N	Ramiro	Antonio	Vanegas	Chacon	\N	\N	\N	7796196	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3522
2170	\N	\N	\N	Jose	Rene	Veliz	Latz	\N	\N	\N	14171651	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5132	\N	\N	\N	\N	\N	\N	3570
220	\N	\N	\N	Leonel	Alexander	Sosa	Barillas	\N	\N	\N	1257077k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3614
115	\N	\N	\N	Manuel	Haroldo	Barahona	Guzman	\N	\N	\N	6015492	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	355	\N	\N	\N	\N	\N	\N	3508
151	\N	\N	\N	Ana	Lucrecia Del Rosario	Gamboa	Nowell	Castillo	\N	\N	15763129	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4013	\N	\N	\N	\N	\N	\N	3627
587	\N	\N	\N	Alma	Leticia	Garcia	Estrada	\N	\N	\N	2439985k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3630
1545	\N	\N	\N	Vivian	Elizabeth	Mejia	Sevilla	\N	\N	\N	15975118	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3631
2332	\N	\N	\N	Karla	Georgina	Riveiro	Fernandez	\N	\N	\N	7029683	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3645
809	\N	\N	\N	Jorge	Alberto	Guzman	Maldonado	\N	\N	\N	7277881	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3646
1045	\N	\N	\N	Hernán	Filemón	Villatoro	Monzón	\N	\N	\N	5179378	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3649
1345	\N	\N	\N	Edgar	Ricardo	León	Ruano	\N	\N	\N	16724623	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3648
871	\N	\N	\N	Evelyn	Yesenia	Estrada	Vasquez	\N	\N	\N	17549213	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5158	\N	\N	\N	\N	\N	\N	3652
1897	\N	\N	\N	Edvin	Geovany	Samayoa	\N	\N	\N	\N	14193612	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	390
2298	\N	\N	\N	Hector	Oswaldo	Choc	Xol	\N	\N	\N	16327101	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	143
3286	\N	\N	\N	Jose	Rigoberto	Galindo	Alvarado	\N	\N	\N	1488982k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3670
1748	\N	\N	\N	Kareen	Daniza	Azurdia	Velasquez	\N	\N	\N	30531047	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3671
3397	\N	\N	\N	Dalia	Lucila	Lopez	Gomez	\N	\N	\N	8190607	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3672
5102	\N	\N	\N	David	Leonel	Giron	Marroquin	\N	\N	\N	74318500	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3856
982	\N	\N	\N	Helbert	Augusto	Blanco	Garcia	\N	\N	\N	14200686	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3858
1755	\N	\N	\N	Jorge	Antonio	Salguero	\N	\N	\N	\N	959766	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	138
3425	\N	\N	\N	Maria	Elizabeth	Ovalle	Franco	\N	\N	\N	59315776	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	326	\N	\N	\N	\N	\N	\N	3215
2363	\N	\N	\N	Frida	Eneida	Pineda	Monroy	Muralles	\N	\N	8277974	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	158	\N	\N	\N	\N	\N	\N	3651
2261	\N	\N	\N	Juan	Diego	Gonzalez	Padilla	\N	\N	\N	6999298	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3877
2222	\N	\N	\N	Alida	Surama	Barrios	Pinto	\N	\N	\N	22136509	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1749
2462	\N	\N	\N	Monica	Del Carmen	Alegria	Meza	\N	\N	\N	52856658	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5184	\N	\N	\N	\N	\N	\N	3878
766	\N	\N	\N	Gloria	Judith	Alvarez	Sarmiento	Perez	\N	\N	38394359	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5156	\N	\N	\N	\N	\N	\N	3560
756	\N	\N	\N	Evelyn	Marleny	Paz	Rosales	Dubon	\N	\N	19056478	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3879
2440	\N	\N	\N	Jorge	Luis	Perez	Zamora	\N	\N	\N	7652240	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5146	\N	\N	\N	\N	\N	\N	3548
368	\N	\N	\N	Heidy	Sujey	Barrios	Zamora	Coronado	\N	\N	34929193	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3902
5638	\N	\N	\N	Vilma	Janeth	Ruiz	Gomez	de Aragon	\N	\N	1829173	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	324	\N	\N	\N	\N	\N	\N	3918
3322	\N	\N	\N	Ingrid	Patricia	Alvarado	Mazariegos	\N	\N	\N	30853664	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	401
1036	\N	\N	\N	Elena	Sarahi	Fuentes	Fuentes	Bolaños	\N	\N	52049078	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3599
2055	\N	\N	\N	Anibal	Orlando	Hernandez	Morales	\N	\N	\N	1652313K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4106
4927	\N	\N	\N	Maria	Lucrecia	Flores	Velasquez	\N	\N	\N	11573473	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4109
5538	\N	\N	\N	Mario	Vinicio	Grijalva	Quiñonez	\N	\N	\N	20102585	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4107
733	\N	\N	\N	Edilzar	Ottoniel	Morales	Mendez	\N	\N	\N	6593194	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3505
981	\N	\N	\N	Leonel	\N	Leal	Chavez	\N	\N	\N	19922086	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	152
825	\N	\N	\N	Carmen	Victoria	Estero	Lopez	Morales	\N	\N	30844169	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	380	\N	\N	\N	\N	\N	\N	4126
1400	\N	\N	\N	Jorge	Estuardo	Adqui	Ruiz	\N	\N	\N	61657018	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5180	\N	\N	\N	\N	\N	\N	4144
3479	\N	\N	\N	Rosalyn	Berta Alicia	Martinez	Torres	\N	\N	\N	24572632	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	389
1286	\N	\N	\N	Blanca	Aracely	Hernandez	Quel	\N	\N	\N	5693152	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	394
1514	\N	\N	\N	Eduardo	Vicente	Barrera	Calderon	\N	\N	\N	2307871	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4157
4910	\N	\N	\N	Sindy	Jeannette	Almengor	Lopez	\N	\N	\N	39802582	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4177
1366	\N	\N	\N	Carlos	Enrique	Garcia	Tubac	\N	\N	\N	24273430	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5111	\N	\N	\N	\N	\N	\N	4163
862	\N	\N	\N	Pedro	Lizardo	Morales	\N	\N	\N	\N	7639643	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5155	\N	\N	\N	\N	\N	\N	4247
492	\N	\N	\N	Jorge	Leonel	Juarez	Palacios	\N	\N	\N	14810964	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4253
1347	\N	\N	\N	Migdalia	Olibet	Gonzalez	Gonzalez	\N	\N	\N	28530659	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5183	\N	\N	\N	\N	\N	\N	4264
1743	\N	\N	\N	Abdiel	David	Muralles	Alvarado	\N	\N	\N	44356595	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	100	\N	\N	\N	\N	\N	\N	3485
144	\N	\N	\N	Yeymi	Karol	Palencia	Carrera	\N	\N	\N	1215492k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	325	\N	\N	\N	\N	\N	\N	497
1800	\N	\N	\N	Haydee	Isabel	Castillo	Cardona	Franco	\N	\N	34790276	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	340	\N	\N	\N	\N	\N	\N	3477
1189	\N	\N	\N	Victor	Antonio	Rustrian	Sandoval	\N	\N	\N	15582795	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5178	\N	\N	\N	\N	\N	\N	4272
1692	\N	\N	\N	Rigoberto	\N	Vargas	Morales	\N	\N	\N	2369435	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4282
3355	\N	\N	\N	Jonathan	Estuardo	Monzon	Acajabon	\N	\N	\N	49484982	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	406	\N	\N	\N	\N	\N	\N	4299
2369	\N	\N	\N	Juan	Carlos	Escobar	\N	\N	\N	\N	16114256	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4023	\N	\N	\N	\N	\N	\N	387
1591	\N	\N	\N	Julia	Veronica	Perez	Mejicanos	\N	\N	\N	22390294	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5075	\N	\N	\N	\N	\N	\N	4301
1150	\N	\N	\N	Carmen	Adaly	De Los Santos	Ramirez	Pineda	\N	\N	19034245	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3516
2062	\N	\N	\N	Nydia	Lissette	Arevalo	Flores	Corzantes	\N	\N	5176980	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	436
2294	\N	\N	\N	Hugo	\N	Cardona	Rojas	\N	\N	\N	3156990	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3476
2058	\N	\N	\N	Reyes	Ovidio	Giron	Vasquez	\N	\N	\N	1265814	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4274
2321	\N	\N	\N	Maria	Dilma	Micheo	Alay	\N	\N	\N	14907747	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4335
1375	\N	\N	\N	Edgardo	Enrique	Enriquez	Cabrera	\N	\N	\N	4081315	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4280
909	\N	\N	\N	Edgar	Rolando	Melendez	Soto	\N	\N	\N	25082159	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3581
322	\N	\N	\N	Idalia	Estela	Gamboa	Moino	\N	\N	\N	24428272	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	378	\N	\N	\N	\N	\N	\N	4364
667	\N	\N	\N	Maria	Del  Carmen	Estrada	Rivera	\N	\N	\N	1558803	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4260
363	\N	\N	\N	Mayda	Judith	Ramirez	Ramirez	Bravo	\N	\N	12472948	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	232	\N	\N	\N	\N	\N	\N	4461
222	\N	\N	\N	Jose	Rocael	Esteban	Castillo	\N	\N	\N	7012330	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	485
563	\N	\N	\N	Pedro	Pablo	Garcia	Y Vidaurre	\N	\N	\N	11906073	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	514
1423	\N	\N	\N	Carlos	Alberto	Cámbara	Santos	\N	\N	\N	54054	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	393
2171	\N	\N	\N	Victor	Manuel	Chavez	Arevalo	\N	\N	\N	6431410	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4484
6759	\N	\N	\N	Esteban	\N	Mollinedo	Diaz	\N	\N	\N	12130192	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4486
1191	\N	\N	\N	Raul	Rene	Robles	De Leon	\N	\N	\N	10725776	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	441
1225	\N	\N	\N	Corina	Floridalma	Sanchez	Gonzalez	Suria	\N	\N	6875165	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4548
6479	\N	\N	\N	Dina	Amarilys	Bolaños	Umaña	\N	\N	\N	10596933	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4549
2239	\N	\N	\N	Mario	\N	Sanler	Castillo	\N	\N	\N	19960492	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4556
2445	\N	\N	\N	Marleny	Zoraida	Rodriguez	Rodriguez	\N	\N	\N	2670255K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4560
2475	\N	\N	\N	Nancy	Arely	Lopez	Loarca	\N	\N	\N	54393531	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4563
3383	\N	\N	\N	Nora	Mayrena	Linares	Rivera	\N	\N	\N	38007762	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4564
2444	\N	\N	\N	Yaneth	\N	Garcia	Rafael	\N	\N	\N	8050333	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4567
2345	\N	\N	\N	Fidencia	\N	Orozco	Garcia	 Licardi	\N	\N	16291786	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4572
1759	\N	\N	\N	Claudia	Marisol	Pocasangre	Umaña	\N	\N	\N	19557787	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5134	\N	\N	\N	\N	\N	\N	4574
939	\N	\N	\N	Karen	Cashely	Cardenas	Reyes	Montiel	\N	\N	30033136	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4569
5340	\N	\N	\N	Manuel 	Antonio 	Ochaeta	De La Cruz	\N	\N	\N	7753039	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3489
2295	\N	\N	\N	Luis	Eduardo	Carranza	Lorenzana	\N	\N	\N	9793372	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4591
2373	\N	\N	\N	Ana	De Los Angeles	Garcia	Martinez	Acevedo	\N	\N	6617778	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	878
5283	\N	\N	\N	William	Ottoniel 	Lima	Garcia	\N	\N	\N	1242286k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4273
3507	\N	\N	\N	Lesbia	Marleny	Sis	Chen	\N	\N	\N	19065744	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4681
1923	\N	\N	\N	Vladimiro	Israel	Lopez	Arellano	\N	\N	\N	7646488	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	396
3395	\N	\N	\N	Ricardo	Anibal	Masaya	Gamboa	\N	\N	\N	5764289	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5278
6708	\N	\N	\N	Erik	de Jesus	Catalan	Ortiz	\N	\N	\N	27860000	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3004
6833	\N	\N	\N	Jorge	Emilio	Quim	Leal	\N	\N	\N	40868044	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	419	\N	\N	\N	\N	\N	\N	4531
6816	\N	\N	\N	Adriana 	Yanira	Mendez	Moreira	\N	\N	\N	33630720	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	417	\N	\N	\N	\N	\N	\N	4499
6859	\N	\N	\N	Maya	Elisa	Rojas	Arreaga	\N	\N	\N	57414734	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	425	\N	\N	\N	\N	\N	\N	4590
6673	\N	\N	\N	Eriberto	Mahoni	Perez	Santizo	\N	\N	\N	61477125	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	388	\N	\N	\N	\N	\N	\N	4900
6482	\N	\N	\N	Carlos	Danilo	Boj	Doradea	\N	\N	\N	80408958	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	312	\N	\N	\N	\N	\N	\N	4903
6490	\N	\N	\N	Sergio	Estuardo	Rosal	Tobar	\N	\N	\N	86414305	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	310	\N	\N	\N	\N	\N	\N	4902
6907	\N	\N	\N	Gustavo	Anibal	Archila	Paz	\N	\N	\N	9524630	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	428	\N	\N	\N	\N	\N	\N	4926
6786	\N	\N	\N	Siria	Maria	Ojeda	Romero	\N	\N	\N	16599187	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	331	\N	\N	\N	\N	\N	\N	4907
5899	\N	\N	\N	Marialuz	Isabel	Orellana	Paz	\N	\N	\N	73920789	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	332	\N	\N	\N	\N	\N	\N	4898
6137	\N	\N	\N	Juan	Francisco	Calderon	Chavez	\N	\N	\N	17919134	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	358	\N	\N	\N	\N	\N	\N	4921
3219	\N	\N	\N	Romeo	Adolfo	Gudiel	Garcia	\N	\N	\N	6882331	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	413	\N	\N	\N	\N	\N	\N	4920
5844	\N	\N	\N	Francisco	de Jesus	Pedroza	Gatica	\N	\N	\N	7794789	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	308	\N	\N	\N	\N	\N	\N	4918
6841	\N	\N	\N	Lourdes 	Elisa	Salan	Barrera	\N	\N	\N	9491937	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	424	\N	\N	\N	\N	\N	\N	4598
5091	\N	\N	\N	Jose	Alejandro	Lopez	Lopez	\N	\N	\N	9571973	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	398	\N	\N	\N	\N	\N	\N	4927
4894	\N	\N	\N	Carlos	Fernando	Paniagua	Martinez	\N	\N	\N	73688665	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	381	\N	\N	\N	\N	\N	\N	4924
6876	\N	\N	\N	Annel	Aurora	Caballeros	Lemus	\N	\N	\N	6250319	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	426	\N	\N	\N	\N	\N	\N	4607
6162	\N	\N	\N	Ligia	Maritza	Chavez	Coronado	Muñoz	\N	\N	18102964	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3181
5245	\N	\N	\N	Kleyber	Ivan	Jolon	Oliva	\N	\N	\N	9617299	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	158	\N	\N	\N	\N	\N	\N	4928
5424	\N	\N	\N	Zucely	Marily	Castellanos	Hernandez	\N	\N	\N	78125022	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	363	\N	\N	\N	\N	\N	\N	4899
6583	\N	\N	\N	Estuardo	\N	Cetina	Moreno	\N	\N	\N	87635208	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	321	\N	\N	\N	\N	\N	\N	4997
6878	\N	\N	\N	Darwin	Haniel	Coc	Max	\N	\N	\N	69534179	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4979
3393	\N	\N	\N	José	Roberto	Ismalej	Guzmán	\N	\N	\N	38093936	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	320	\N	\N	\N	\N	\N	\N	4996
3387	\N	\N	\N	César	Augusto	Julajuj	Chiroy	\N	\N	\N	69034559	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	319	\N	\N	\N	\N	\N	\N	4995
6364	\N	\N	\N	Angel	Eliseo	Olmedo	Guerra	\N	\N	\N	80803210	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4993
904	\N	\N	\N	Carlos	Francisco	Sac	Mus	\N	\N	\N	17040701	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4001	\N	\N	\N	\N	\N	\N	4991
1972	\N	\N	\N	Moisés	Edyn	Tzunun	Menchú	\N	\N	\N	62125982	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4992
2273	\N	\N	\N	Esteban	Moises	Ismale	Torres	\N	\N	\N	65190483	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	374	\N	\N	\N	\N	\N	\N	5000
6539	\N	\N	\N	Gustavo	Adolfo	Rabanales-Pinot	Lemus	\N	\N	\N	76949680	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	379	\N	\N	\N	\N	\N	\N	4498
6176	\N	\N	\N	Herbert	Estuardo	Avila	Quiñonez	\N	\N	\N	10274952	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4938
565	\N	\N	\N	Luis	Alberto	Bran	Bac	\N	\N	\N	48005444	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4937
1999	\N	\N	\N	Sergio	Williams	Franco	Diaz	\N	\N	\N	12386642	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4935
5577	\N	\N	\N	Jorge	Antonio	Gramajo	Rivera	\N	\N	\N	72712422	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4934
6895	\N	\N	\N	Angel	Alfonso	Medina	Corado	\N	\N	\N	73590487	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4955
5188	\N	\N	\N	Ubaldo	Hugo	Ponce	Nuñez	\N	\N	\N	69752206	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4932
3149	\N	\N	\N	Carlos	Enrique	Santos	\N	\N	\N	\N	48277673	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4954
3418	\N	\N	\N	Shirley	Alejandra	Zaldaña	Padilla	\N	\N	\N	58221727	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5126	\N	\N	\N	\N	\N	\N	4112
4843	\N	\N	\N	Rodolfo	\N	Calvillo	Valdez	\N	\N	\N	551679K        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5192
6861	\N	\N	\N	Juan 	Francisco	Chajchalac	Hernandez	\N	\N	\N	82910243	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5198
6889	\N	\N	\N	Claudia	Maribel 	Crispin	Flores	\N	\N	\N	62859609	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5197
2436	\N	\N	\N	Jorge	Mario	Fonseca	Ruiz	\N	\N	\N	1428632	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5191
5653	\N	\N	\N	Sergio	Ramiro	Garcia	Portillo	\N	\N	\N	4037383	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5190
4598	\N	\N	\N	Salvador	\N	Herrera	Marroquin	\N	\N	\N	1253026	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5195
6891	\N	\N	\N	Oscar	Moises	Lopez	Fuentes	\N	\N	\N	22056475	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5194
4378	\N	\N	\N	Jose 	Alfonso	Lucas	Chitay	\N	\N	\N	23038241	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5189
6865	\N	\N	\N	Alex	Aron	Morales	Valdez	\N	\N	\N	25884476	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5188
6863	\N	\N	\N	Alba	Beatriz	Perez	Vasquez	\N	\N	\N	49205757	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5235
6750	\N	\N	\N	Vivian	Margarita	Garcia	Osorio	\N	\N	\N	64292363	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5031
6808	\N	\N	\N	Etelbina	Maria	Martinez	Ramirez	\N	\N	\N	76714659	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5033
6828	\N	\N	\N	Diana 	Marie	Romero	Solis	\N	\N	\N	16264924	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5258
4914	\N	\N	\N	Madeline 	Yvette	Soto 	Granillo	\N	\N	\N	31808387	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5013	\N	\N	\N	\N	\N	\N	5257
5269	\N	\N	\N	Sonia	\N	Navarijo	Estrada	\N	\N	\N	6124526	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5040
1406	\N	\N	\N	Jose	Alberto	Santizo	Davila	\N	\N	\N	29668565	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5188	\N	\N	\N	\N	\N	\N	4975
5369	\N	\N	\N	Jesus	Ena	Gonzalez	Rosales	\N	\N	\N	80782396	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5017
6711	\N	\N	\N	Jorge	Manuel 	Morales	Ortiz	\N	\N	\N	24958409	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5016
1831	\N	\N	\N	Guillermo	Alfredo	Franco	Zepeda	\N	\N	\N	35344857	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5006
6790	\N	\N	\N	Jose	Israel	Yax	Junay	\N	\N	\N	52762068	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5282
6905	\N	\N	\N	Griselda	Magaly	Muñoz	Galicia	\N	\N	\N	39338967	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5198	\N	\N	\N	\N	\N	\N	4679
6110	\N	\N	\N	Katherine	Rosslyn	Garcia	Vasquez	de Mazariegos	\N	\N	41815726	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3026	\N	\N	\N	\N	\N	\N	5029
6507	\N	\N	\N	Sergio 	\N	Camey	Arana	\N	\N	\N	25158376	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5131	\N	\N	\N	\N	\N	\N	5053
5948	\N	\N	\N	Javier	Ottoniel	Solis	Macz	\N	\N	\N	40593770	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5142	\N	\N	\N	\N	\N	\N	5310
6613	\N	\N	\N	Luis	Guillermo	Paredes	Perez	\N	\N	\N	59523697	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5147	\N	\N	\N	\N	\N	\N	5299
3495	\N	\N	\N	Yoise	Georgina	Cruz	Hernandez	\N	\N	\N	8191573	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5002
5113	\N	\N	\N	Mirna	Elizabeth	Velasquez	Toj	\N	\N	\N	40904172	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5001
759	\N	\N	\N	Oscar	Guillermo	Hernandez	Castillo	\N	\N	\N	918199	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5284
5648	\N	\N	\N	Tierna	Corita Siboney	Polillo	Cornejo	\N	\N	\N	43781748	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3025	\N	\N	\N	\N	\N	\N	5285
6430	\N	\N	\N	Wuendi	Sulema	de la Cruz	Lopez	\N	\N	\N	35237988	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4942
5801	\N	\N	\N	Ernesto	Sergio Estuardo	Mansilla	Sierra	\N	\N	\N	73512818	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4941
5115	\N	\N	\N	Ana	Sofia	Mendez	Perez	\N	\N	\N	76142868	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4940
2380	\N	\N	\N	Andrea	Elizabeth	Escobar	Palma	\N	\N	\N	30197937	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5270
2390	\N	\N	\N	Marco	Tulio	Siliezar	\N	\N	\N	\N	4744233	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5268
1278	\N	\N	\N	Ismael	\N	Camey	Equite	\N	\N	\N	4585879	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5160
1976	\N	\N	\N	Elmer	Ronaldo	Espina	Figueroa	\N	\N	\N	784963k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5161
6528	\N	\N	\N	Maria	de Lourdes	Ajcu	Castillo	\N	\N	\N	52925250	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5134
2465	\N	\N	\N	Rosa	\N	Arevalo	Quiñonez	\N	\N	\N	46816453	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5097
3373	\N	\N	\N	Patricia	Esmeralda	Archila	Bailon	\N	\N	\N	34760156	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4946
6826	\N	\N	\N	Myriam 	Orcelia	Lopez	Estrada 	\N	\N	\N	71865233	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4943
5247	\N	\N	\N	Hugo	Leonel	Mendez	Garcia	\N	\N	\N	23833394	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4945
2130	\N	\N	\N	Rosana	Guadalupe	Quevedo	Martinez	\N	\N	\N	56570082	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4944
2188	\N	\N	\N	Zoila	Guillermina	Jimenez	Galicia	\N	\N	\N	20446691	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7004	\N	\N	\N	\N	\N	\N	5147
4840	\N	\N	\N	Ignacio	\N	Blanco	Ardon	\N	\N	\N	8517320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5167
4380	\N	\N	\N	Belter	Rodolfo	Mancilla	Solares	\N	\N	\N	3012565	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5168
3437	\N	\N	\N	Julio	Estuardo	Solorzano	Rubio	\N	\N	\N	7324383	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5169
529	\N	\N	\N	Abelina	De Los Angeles	Lopez	Rodas	\N	\N	\N	1509829k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7008	\N	\N	\N	\N	\N	\N	5003
1535	\N	\N	\N	Irma	Yolanda	Carranza	Arriola	Perez	\N	\N	28423380	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5102
3405	\N	\N	\N	Carlos	Dario	Paz	Reichstein	\N	\N	\N	3295729	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4999
3489	\N	\N	\N	Karin	Marleny	Arana	Salguero	Arriola	\N	\N	35580356	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5173
3274	\N	\N	\N	Miriam	Patricia	Cifuentes	Gonzalez	\N	\N	\N	64964175	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5007
2246	\N	\N	\N	Flor	De Maria	Lopez	Mendez	Chacon	\N	\N	51057972	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5136
860	\N	\N	\N	Mario	Rolando	Cetino	Villanueva	\N	\N	\N	34840893	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5175
4749	\N	\N	\N	Cesar	Augusto	Perez	Lorenzo	\N	\N	\N	3379078	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5176
1609	\N	\N	\N	Marco	Vinicio	Alvarez	Ruiz	\N	\N	\N	1723359	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5178
6769	\N	\N	\N	Edwin	Celestino	Palacios	Montufar	\N	\N	\N	16966376	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5103
2394	\N	\N	\N	Henry	Alexander	Beltran	Castillo	\N	\N	\N	55296599	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4983
1671	\N	\N	\N	Oscar	Ronaldo	Cruz	Montoya	\N	\N	\N	26986949	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4982
2013	\N	\N	\N	Saul	Adonias	Orrego	Orrego	\N	\N	\N	19972954	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4981
5184	\N	\N	\N	Edgar	Alberto	Valdez	Vasquez	\N	\N	\N	19959133	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4984
1893	\N	\N	\N	Gonzalo	Catarino	Giron	Arevalo	\N	\N	\N	17958458	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5181
3357	\N	\N	\N	Monica	Azucena	Negreros	Carias	\N	\N	\N	13587870	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5182
6418	\N	\N	\N	Sandra	Yaneth	Diaz	Perez	\N	\N	\N	46222758	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5098
1688	\N	\N	\N	Hoffman	Romeo	Castillo	Lemuz	\N	\N	\N	12359041	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5183
4822	\N	\N	\N	Jenry	\N	Gonzalez	Sarceño	\N	\N	\N	43807402	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5184
2098	\N	\N	\N	Gregory	Yovani	Mazariegos	Hernandez	\N	\N	\N	1425977k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5185
1974	\N	\N	\N	Maria	De Jesus	Roldan	Martinez	\N	\N	\N	590546k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5008
1491	\N	\N	\N	Aura	Marina	Gonzalez	Rodriguez	Perez	\N	\N	50765884	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5109
5273	\N	\N	\N	Milca	Cedema	Hernandez	De la Cruz	\N	\N	\N	33213607	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5009
2214	\N	\N	\N	Francisca	Del Carmen	Ortiz	De Paz	\N	\N	\N	51143615	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5108
1860	\N	\N	\N	Irma	Graciela	Romero	Imery	\N	\N	\N	5298954	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5010
5892	\N	\N	\N	Carlos	Mariano	Vasquez	Hernandez	\N	\N	\N	18183026	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5199
1624	\N	\N	\N	Olga	Marina Ester	Bocel	Morales	Alonzo	\N	\N	32016379	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5113
6794	\N	\N	\N	Ervin	Ivan	Calderon	De Leon	\N	\N	\N	23579323	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4469
4791	\N	\N	\N	Maria	\N	Tzina	Quieju	\N	\N	\N	72316136	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5117
1448	\N	\N	\N	Francisco	Cruz	Chamorro	Quic	\N	\N	\N	50951726	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5121
5678	\N	\N	\N	Julian	Adolfo	Archila	Cifuentes	\N	\N	\N	59380292	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5201
4662	\N	\N	\N	Pedro	Gonzalo	Vera	Diaz	\N	\N	\N	15764680	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5204
6616	\N	\N	\N	Milton	Giovanni	Bamaca	Coyoy	\N	\N	\N	15779270	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4031	\N	\N	\N	\N	\N	\N	5206
6422	\N	\N	\N	Betsabe	Eunice	Albanes	Gomez	\N	\N	\N	55906052	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4028	\N	\N	\N	\N	\N	\N	5286
3349	\N	\N	\N	Giovanni	Vinicio	Sical	Hernandez	\N	\N	\N	14840715	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4014	\N	\N	\N	\N	\N	\N	5156
6802	\N	\N	\N	Flor 	de Maria	Aguilon	Agustin	\N	\N	\N	52004775	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5205
1544	\N	\N	\N	Patricia	Saraí	Villatoro	Martinez	\N	\N	\N	11251093	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4015	\N	\N	\N	\N	\N	\N	5011
5181	\N	\N	\N	Luis	Alberto	Reyna	Maldonado	\N	\N	\N	27906612	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5210
4968	\N	\N	\N	Malter	Adolfo	Lopez	Gonzalez	\N	\N	\N	11163380	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5211
1927	\N	\N	\N	Blanca	Lidia	Cifuentes	Ovalle	\N	\N	\N	24723312	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5135
6832	\N	\N	\N	Marta	Delia	Lopez	Miranda	\N	\N	\N	33321418	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4328
6847	\N	\N	\N	Eddy 	Alberto	Garcia	Campos	\N	\N	\N	41926323	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5213
6740	\N	\N	\N	Luvia	Consuelo del Carmen	Lozano	Perez	\N	\N	\N	54192536	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4329
5593	\N	\N	\N	Luis	Angel	Lopez	Ochoa	\N	\N	\N	58743960	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5137
111	\N	\N	\N	Elisa	\N	Lopez	Agustin	Marroquin	\N	\N	43226450	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	712
2481	\N	\N	\N	Elma	Leticia	Guzman	Lopez	Mazariegos	\N	\N	32426801	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5139
1143	\N	\N	\N	Erick	Alexander	Barrundia	Barrios	\N	\N	\N	51051184	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5141
1238	\N	\N	\N	Roderico	Ismael	Garcia	Ramirez	\N	\N	\N	46542221	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	713
5783	\N	\N	\N	Josefa	Margarita	Lopez	Sebastian	\N	\N	\N	52698475	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5143
6782	\N	\N	\N	Ibrandy	Yazanneth	Hernandez	Alvarado	\N	\N	\N	56277849	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5215
3473	\N	\N	\N	Edgar	Rodrigo	Lopez	Cardenas	\N	\N	\N	23587024	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5217
6074	\N	\N	\N	Sucely	Liseth	Gomez	Hernandez	Tebalan	\N	\N	40838153	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5012
6085	\N	\N	\N	Yulissa	Eugenia	Rivas	Calderon	\N	\N	\N	42332613	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5140
6784	\N	\N	\N	Isabel	\N	Aguilar	Lorenzo	\N	\N	\N	73678465	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5142
1109	\N	\N	\N	Florentina	\N	Diego	Gregorio	\N	\N	\N	51316781	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5145
4087	\N	\N	\N	Vicente	\N	Chivalan	Chaicoj	\N	\N	\N	4503554	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5220
1239	\N	\N	\N	Camelia	Everilda	Monzon	Villatoro	Fajardo	\N	\N	8973873	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5223
1287	\N	\N	\N	Raul	Enrique	Morales	Alvarado	\N	\N	\N	17310415	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	716
6438	\N	\N	\N	Maria	\N	Salazar	Gomez	\N	\N	\N	87281589	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5146
2002	\N	\N	\N	Lucia	\N	Urizar	Alvarez	\N	\N	\N	8535027	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5013
2138	\N	\N	\N	Dominga	Bacilia	De Leon	Perez	de Cobo	\N	\N	11409320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5148
6570	\N	\N	\N	Lucia	Aracely	Domingo	Silvestre	\N	\N	\N	89719697	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5149
5185	\N	\N	\N	Fulvio	Amado	Pop	Bac	\N	\N	\N	14000342	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5225
3258	\N	\N	\N	Fernando	\N	Calate	Cuquej	\N	\N	\N	22614893	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	964
591	\N	\N	\N	Marina	Hermelinda	Alvarez	Lopez	\N	\N	\N	38928310	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5150
5785	\N	\N	\N	Sergio	Adrian	Coronado	Oliva	\N	\N	\N	19825609	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5228
6820	\N	\N	\N	Zoila	Elizabeth	Contreras	Cartagena	\N	\N	\N	71481478	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4521
750	\N	\N	\N	Lesvia	Edit	Aguilar	Balsells	Ochaeta	\N	\N	4096541	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5014
5420	\N	\N	\N	Baudilia	Refugia	Raymundo	Cunil	\N	\N	\N	44355831	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5100
6819	\N	\N	\N	Jovita	Jeaneth	Recinos	Garcia	\N	\N	\N	86324713	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5158
6675	\N	\N	\N	Jasser	Efrain	Santander	De Leon	\N	\N	\N	27396312	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5236
4723	\N	\N	\N	Candida	De Jesus	Castañeda	Morales	\N	\N	\N	18037127	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5238
6234	\N	\N	\N	Delmy 	Marisol	Vargas	Cabrera	\N	\N	\N	12049859	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5237
6725	\N	\N	\N	Catalina	\N	Bo	Chub	\N	\N	\N	57963460	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5152
1414	\N	\N	\N	Ana	Leonila	Lopez	Paz	\N	\N	\N	2562587k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5019
5687	\N	\N	\N	Manuel	de Jesus	Lopez	Ordoñez	\N	\N	\N	27066290	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5241
6812	\N	\N	\N	Joan	Manuel	Fajardo	Arango	\N	\N	\N	34890572	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4497
2495	\N	\N	\N	Reina	Anabella	Gutierrez	\N	\N	\N	\N	51188945	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5153
6671	\N	\N	\N	Josemanuel	\N	Godinez	Barrientos	\N	\N	\N	38870134	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5245
6174	\N	\N	\N	Lesly 	Eunice	Moran	Lara	\N	\N	\N	59437251	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5243
6845	\N	\N	\N	Daniela	Alejandra	Bobadilla	Recinos	\N	\N	\N	69816530	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4593
2447	\N	\N	\N	Irene	Beatriz	Cisneros	Flores	\N	\N	\N	10362029	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5012	\N	\N	\N	\N	\N	\N	5249
156	\N	\N	\N	Dina	Alba Alicia	Gomez	Perez	\N	\N	\N	50733702	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5155
3431	\N	\N	\N	Dunia	Maribel	Castro	Aguilar	Tejada	\N	\N	7588852	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5250
538	\N	\N	\N	Claudia	Mercedes	Hernandez	Ruano	\N	\N	\N	19266928	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5252
546	\N	\N	\N	Moises	\N	Vivar	Orellana	\N	\N	\N	16523342	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5251
6916	\N	\N	\N	Monica	Melissa	Pleitez	Guerra	\N	\N	\N	82748470	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4730
6524	\N	\N	\N	Gloria	Mariela	Lopez	Barrera	\N	\N	\N	88811425	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5157
2405	\N	\N	\N	Damaris	Camelia	Peñate	Rodriguez	\N	\N	\N	26542145	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5064	\N	\N	\N	\N	\N	\N	5023
307	\N	\N	\N	Pedro	Jose Luis	Marroquin	Lopez	\N	\N	\N	12555320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5120
6880	\N	\N	\N	Inge	Maythe	Najera	Villate	\N	\N	\N	76255301	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4609
6909	\N	\N	\N	Zoila	Dalila	Vivar	Montenegro	\N	\N	\N	95013733	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5144
5100	\N	\N	\N	Yenny	Judith 	Illescas	Arriaza	\N	\N	\N	29237610	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5024
5123	\N	\N	\N	Ana	del Carmen	Cortez	de Pantaleon	\N	\N	\N	71989412	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5107
6899	\N	\N	\N	Marco 	Antonio	Alvarado	Beltran	\N	\N	\N	25992201	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5095
6883	\N	\N	\N	Sonia	Yolanda	Equite	Bor	\N	\N	\N	18327532	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5094
1092	\N	\N	\N	Aura	Matilde	Recinos	Castañeda	Rivera	\N	\N	40990931	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5015	\N	\N	\N	\N	\N	\N	5093
6345	\N	\N	\N	Carmen	Elizabeth	Soto	Garrido	\N	\N	\N	5914108	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5253
6912	\N	\N	\N	Manuel	Eduardo	Bran	Quintana	\N	\N	\N	24393568	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3034	\N	\N	\N	\N	\N	\N	4690
902	\N	\N	\N	Carlos	Estuardo	Itzol	Batzin	\N	\N	\N	25590383	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5057	\N	\N	\N	\N	\N	\N	5288
3486	\N	\N	\N	Zulma	Vanesa	Reyes	Herrarte	\N	\N	\N	12314854	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3014	\N	\N	\N	\N	\N	\N	5287
1786	\N	\N	\N	Ana	Judith	Estrada	Melgar	Rivera	\N	\N	3983897	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3003	\N	\N	\N	\N	\N	\N	5028
6903	\N	\N	\N	Brenda	Patricia	Lemus	Morales	\N	\N	\N	47436549	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3036	\N	\N	\N	\N	\N	\N	4671
6530	\N	\N	\N	Jessica 	Jeannette del Carmen	Portillo	Gonzalez	\N	\N	\N	84697210	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4779
535	\N	\N	\N	Abdiel	Eliseo	Merida	Herrera	\N	\N	\N	42564239	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4730
6092	\N	\N	\N	Aida	Lizbeth	Cardona	Lainez	\N	\N	\N	22541829	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4813
5230	\N	\N	\N	Ana	Carina	Leon	Briones	\N	\N	\N	29551560	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4519
420	\N	\N	\N	Ana	Del Carmen	Zea	Gonzalez	\N	\N	\N	1025295	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5100	\N	\N	\N	\N	\N	\N	4638
6537	\N	\N	\N	Ana	Lucrecia	Vargas	Perez	\N	\N	\N	28797590	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4816
127	\N	\N	\N	Anabella	Magaly	Orozco	Velasquez	Bautista	\N	\N	24768731	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4795
5238	\N	\N	\N	Andrea	Beatriz	Torres	Villafuerte	\N	\N	\N	77601882	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4821
6541	\N	\N	\N	Antonio	David	Diaz 	Jacinto	\N	\N	\N	56041594	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3037	\N	\N	\N	\N	\N	\N	4689
5618	\N	\N	\N	Bissy 	Colombina	Ramirez	Rodriguez	\N	\N	\N	55463266	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4803
5927	\N	\N	\N	Blanca	Veraly	Tunchez	Arreaga	\N	\N	\N	70979286	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7000	\N	\N	\N	\N	\N	\N	4827
6622	\N	\N	\N	Boris	Giovanni	Arias	De Leon	\N	\N	\N	82580898	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4829
5944	\N	\N	\N	Boris	Rodrigo	Gil	Rivera	\N	\N	\N	33966028	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3033	\N	\N	\N	\N	\N	\N	4688
6699	\N	\N	\N	Bremner	Yovani	Miranda	Rodas	\N	\N	\N	41359623	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4797
5361	\N	\N	\N	Carlos	Eduardo	Gramajo	Sanchez	\N	\N	\N	50270567	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4608
2452	\N	\N	\N	Carlos	Romeo	Osorio	Cardona	\N	\N	\N	6945155	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5177	\N	\N	\N	\N	\N	\N	4678
5325	\N	\N	\N	Carmen	\N	Aquino	Andrade	\N	\N	\N	47948108	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4609
4882	\N	\N	\N	Cindy	Ana Korina	Figueroa	Mendez	\N	\N	\N	9753699	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7006	\N	\N	\N	\N	\N	\N	4826
6717	\N	\N	\N	Cindy	Yusselin	Alvizures	Martinez	\N	\N	\N	56228171	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4815
496	\N	\N	\N	Cristi	Lisbianeth	Contreras	Garcia	\N	\N	\N	10061754	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4695
6467	\N	\N	\N	Cristian 	Dalet	Giron	Moyno	\N	\N	\N	64257185	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5114	\N	\N	\N	\N	\N	\N	4509
5566	\N	\N	\N	Danilo	Oseas	Juan	Juan	\N	\N	\N	40218414	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4834
5386	\N	\N	\N	Danis	Antonio	Ruiz	Villegas	\N	\N	\N	38364808	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4791
6211	\N	\N	\N	David	Alexander	Gonzalez	Granados	\N	\N	\N	70576637	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5117	\N	\N	\N	\N	\N	\N	4654
6362	\N	\N	\N	Deiby	Daniel	Lorenzo	Mateo	\N	\N	\N	74069470	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4836
6370	\N	\N	\N	Denisse	Mayte	Lopez	Calderon	\N	\N	\N	86049240	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4838
5575	\N	\N	\N	Diether	Antonio	Lopez	Bode	\N	\N	\N	50207237	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5136	\N	\N	\N	\N	\N	\N	4677
6134	\N	\N	\N	Dulce	Maria	Palencia	Rodas	\N	\N	\N	45097488	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4812
5251	\N	\N	\N	Edgar	Leonel	Menendez	Guerra	\N	\N	\N	39202038	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5106	\N	\N	\N	\N	\N	\N	4508
5781	\N	\N	\N	Edith	Enedelia	Estrada	Morales	\N	\N	\N	81651317	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3017	\N	\N	\N	\N	\N	\N	4687
3262	\N	\N	\N	Edna	Judyth	Barrientos	Palma	\N	\N	\N	59259094	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4729
6810	\N	\N	\N	Edwin 	Saul	Muñiz	Morales	\N	\N	\N	9795138	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4842
6209	\N	\N	\N	Elvis	Julio Cesar	Vasquez	Guerra	\N	\N	\N	32290594	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4820
3272	\N	\N	\N	Emily	Gabriela	Xingo	Gómez	\N	\N	\N	58388281	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4844
746	\N	\N	\N	Ervin	Armando	Diaz	Valverth	\N	\N	\N	9766960	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3012	\N	\N	\N	\N	\N	\N	4686
6219	\N	\N	\N	Esmeli	Lloana	Gudiel	Regalado	\N	\N	\N	62408917	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3031	\N	\N	\N	\N	\N	\N	4685
5820	\N	\N	\N	Evelyn	Paola	Monroy	Ramirez	\N	\N	\N	47044853	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5133	\N	\N	\N	\N	\N	\N	4635
6574	\N	\N	\N	Ever	Ariel	Orrego	Dubon	\N	\N	\N	76783928	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4841
6358	\N	\N	\N	Fabiola 	Arleth	Muñoz	Ortiz	\N	\N	\N	43597750	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5041	\N	\N	\N	\N	\N	\N	4845
4824	\N	\N	\N	Franty	Alexis	Marroquin	Figueroa	\N	\N	\N	16165713	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4848
5133	\N	\N	\N	Fredy	Giovanni	Garcia	Marroquin	\N	\N	\N	14267292	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4852
2128	\N	\N	\N	Gabriel	Eduardo	Valdez	Salazar	\N	\N	\N	61761710	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5129	\N	\N	\N	\N	\N	\N	4634
6298	\N	\N	\N	Gerber	Saul	Monzon	Chajon	\N	\N	\N	25675265	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5170	\N	\N	\N	\N	\N	\N	4633
6372	\N	\N	\N	Gilma	Iliana	Orellana	\N	\N	\N	\N	81667493	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5157	\N	\N	\N	\N	\N	\N	4632
2384	\N	\N	\N	Glenda	Fabiola	Sandoval	Duarte	\N	\N	\N	38533359	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4663
1072	\N	\N	\N	Gregorio	Orlando	Ramirez	Lopez	\N	\N	\N	17630150	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4799
6503	\N	\N	\N	Guiselle	de Marie	Martinez del Rosal	Cardona	\N	\N	\N	40695786	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5127	\N	\N	\N	\N	\N	\N	4506
5410	\N	\N	\N	Hector	Alfredo	Gonzalez	Jimenez	\N	\N	\N	45796114	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4860
6660	\N	\N	\N	Hector 	Rene	Alarcon	Marin	\N	\N	\N	74551574	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5115	\N	\N	\N	\N	\N	\N	4645
5876	\N	\N	\N	Heidy	Jeraldy	Sagastume	Arana	\N	\N	\N	16015320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4662
6806	\N	\N	\N	Ingrid 	Yuliana	Agustin	Leon	\N	\N	\N	26063069	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4661
4854	\N	\N	\N	Ingrith	Nielsen Liset	Gomez	Chamale	\N	\N	\N	39391426	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5189	\N	\N	\N	\N	\N	\N	4864
5972	\N	\N	\N	Isidro	\N	Garcia	Hernandez	\N	\N	\N	48389706	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4742
5329	\N	\N	\N	Israel	Armando	Lucero	Cameros	\N	\N	\N	23865814	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4846
5629	\N	\N	\N	Jessica	Alejandra	Ramos	Moran	\N	\N	\N	75751895	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4712
6172	\N	\N	\N	Jesus	Alberto	Calderon	Aguirre	\N	\N	\N	73192988	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4741
2383	\N	\N	\N	Jonyberth	Gadiel	Villatoro	Avila	\N	\N	\N	39406202	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5103	\N	\N	\N	\N	\N	\N	4630
6215	\N	\N	\N	Jorge 	Eduardo	Herrera	Vasquez	\N	\N	\N	59694475	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4748
5422	\N	\N	\N	Jose	Armando	Garcia	Juarez	\N	\N	\N	38726750	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4694
6595	\N	\N	\N	Jose	Augusto	Cos	Ajxup	\N	\N	\N	52293211	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4030	\N	\N	\N	\N	\N	\N	4725
3140	\N	\N	\N	Jose	Favian	Tejax	Boror	\N	\N	\N	6737293	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4711
6207	\N	\N	\N	Jose	Roberto	Calvo	Garcia	\N	\N	\N	66736765	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4747
694	\N	\N	\N	Jose	Rolando	Aldana	Castellanos	\N	\N	\N	7142013	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7010	\N	\N	\N	\N	\N	\N	4825
4887	\N	\N	\N	Jose	Rolando	Pivaral	Fuentes	\N	\N	\N	1886547k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4751
5161	\N	\N	\N	Josslyn	Andrea	Lopez	Ramirez	Martinez	\N	\N	51968371	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4008	\N	\N	\N	\N	\N	\N	4724
2086	\N	\N	\N	Juan	Estuardo	Martinez	Montenegro	\N	\N	\N	4463986	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4710
164	\N	\N	\N	Juan	\N	Morales	Alvarez	\N	\N	\N	2265111k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4740
5870	\N	\N	\N	Juan	\N	Ruiz	Boj	\N	\N	\N	40141098	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4851
541	\N	\N	\N	Julia	Edilsa	Zepeda	Vides	\N	\N	\N	59137290	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4728
5965	\N	\N	\N	Julio 	Anibal	Hernandez	Barrientos	\N	\N	\N	43016448	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4867
5290	\N	\N	\N	Julio	Roberto	Curruchiche	Orellana	\N	\N	\N	17106702	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7007	\N	\N	\N	\N	\N	\N	4824
6094	\N	\N	\N	Julio	Roberto	Duran	Garcia	\N	\N	\N	82983747	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5104	\N	\N	\N	\N	\N	\N	4504
6117	\N	\N	\N	Julio 	Roberto	Reyes 	Muralles	\N	\N	\N	70182175	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5153	\N	\N	\N	\N	\N	\N	4631
6516	\N	\N	\N	Kimberly 	Massiel	Rodriguez	Escobar	\N	\N	\N	50385003	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4746
3422	\N	\N	\N	Karen	Rocio	Lopez	Martinez	Donis	\N	\N	43063500	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5116	\N	\N	\N	\N	\N	\N	4505
3351	\N	\N	\N	Karla	Ruth	Gonzalez	Teni	\N	\N	\N	49761226	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4706
6804	\N	\N	\N	Laure	Julyana	Ramirez	Monzon	\N	\N	\N	62394800	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5195	\N	\N	\N	\N	\N	\N	4629
6721	\N	\N	\N	Lesbia	Janeth	Orozco	Gonzalez	\N	\N	\N	30047862	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5120	\N	\N	\N	\N	\N	\N	4647
6420	\N	\N	\N	Lesly 	Alejandra de Jesus	Monzon	Mendez	\N	\N	\N	33184097	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4736
6652	\N	\N	\N	Maria	Rosa	Panteul	Morales	\N	\N	\N	65917685	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3032	\N	\N	\N	\N	\N	\N	4660
6846	\N	\N	\N	Milton 	Augusto 	James 	España	\N	\N	\N	21102651	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4790
3415	\N	\N	\N	Milton	Enrique	Ayala	Dardon	\N	\N	\N	29657504	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4850
467	\N	\N	\N	Luis	Adolfo	Garcia	Vasquez	\N	\N	\N	19702485	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4794
3428	\N	\N	\N	Monika	Maria	Najera	Ramirez	\N	\N	\N	70415609	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4727
6723	\N	\N	\N	Mynor	Vosbely	Chavaloc	Tzoc	\N	\N	\N	51057638	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4723
3365	\N	\N	\N	Luis	Gerardo	Gonzalez	Golon	\N	\N	\N	42766346	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5139	\N	\N	\N	\N	\N	\N	4674
6732	\N	\N	\N	Narda	Azucena	Hernandez	Hernandez	\N	\N	\N	46073035	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4715
6681	\N	\N	\N	Manuel	Alejandro	Jerez	Santa Cruz	\N	\N	\N	59158212	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4714
6546	\N	\N	\N	Manuel	Efrain	Gutierrez	Chacon	\N	\N	\N	53780663	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4859
6648	\N	\N	\N	Otoniel	\N	Sagastume	Escobar	\N	\N	\N	39094928	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4819
1843	\N	\N	\N	Marcelina	\N	Olivas	Moreira	\N	\N	\N	2885067k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4811
6658	\N	\N	\N	Marco	Demetrio	Perez	Perez	\N	\N	\N	56872550	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4515
3278	\N	\N	\N	Roberto	Aurelio	Pineda	Amezquita	\N	\N	\N	27544869	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4866
6217	\N	\N	\N	Roxana	Rosario	Perez	Cristobal	\N	\N	\N	37573357	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4828
6309	\N	\N	\N	Selvin	Geovany	De Leon	Lopez	\N	\N	\N	2921582K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5137	\N	\N	\N	\N	\N	\N	4673
6127	\N	\N	\N	Ulises	Saul	Orellana	Sandoval	\N	\N	\N	52277941	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7009	\N	\N	\N	\N	\N	\N	4871
6521	\N	\N	\N	Victor	Manuel	Coyoy	De Leon	\N	\N	\N	20574894	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4029	\N	\N	\N	\N	\N	\N	4722
3308	\N	\N	\N	Victor	Manuel	Vasquez	Rivera	\N	\N	\N	54577330	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3004	\N	\N	\N	\N	\N	\N	4659
6599	\N	\N	\N	Williams	Orlando	Marroquin	Arevalo	\N	\N	\N	90372360	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4709
5167	\N	\N	\N	Zoila	Anita	Cifuentes 	Ovalle	\N	\N	\N	33566259	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4782
6480	\N	\N	\N	Yesenia	Dulcidia	Sosa	Alvarado	\N	\N	\N	80336345	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5197	\N	\N	\N	\N	\N	\N	4627
6752	\N	\N	\N	Yuliana	Hidelisa	Montejo	Hernandez	\N	\N	\N	2775118K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4700
1127	\N	\N	\N	Carlos	Adolfo	Gonzalez	Barrera	\N	\N	\N	55213618	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3023	\N	\N	\N	\N	\N	\N	4772
6188	\N	\N	\N	Erik	Leonel	Lopez	Ramirez	\N	\N	\N	31943519	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4876
1147	\N	\N	\N	Jaime	Walter	Mendoza	Mendoza	\N	\N	\N	24576182	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5192	\N	\N	\N	\N	\N	\N	4878
6139	\N	\N	\N	Alison	Andrea	Morales	Salazar	\N	\N	\N	83888810	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5159	\N	\N	\N	\N	\N	\N	4786
6471	\N	\N	\N	Ana	Odilia	Pacay	Caal	\N	\N	\N	40548155	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4778
3504	\N	\N	\N	Josefina	\N	Ruano	Pineda	\N	\N	\N	21165327	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4780
623	\N	\N	\N	Gisela	Margarita	Vanegas	Rodriguez	Cordova	\N	\N	17957141	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4783
5392	\N	\N	\N	Byron	Alberto	Villeda	Fuentes	\N	\N	\N	78920078	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5107	\N	\N	\N	\N	\N	\N	4879
6511	\N	\N	\N	Oscar	Enrique	Coronado	Chinchilla	\N	\N	\N	12319430	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	410	\N	\N	\N	\N	\N	\N	4917
6772	\N	\N	\N	Alfredo	\N	Escribá	Morales	\N	\N	\N	14138883	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4439
2009	\N	\N	\N	Hermenegildo	\N	Belteton	Cordero	\N	\N	\N	6684467	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	323	\N	\N	\N	\N	\N	\N	410
1954	\N	\N	\N	Jose	Alfredo	Deras	Roman	\N	\N	\N	17806518	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	329	\N	\N	\N	\N	\N	\N	411
1569	\N	\N	\N	Miguel	Angel	Diaz	Solorzano	\N	\N	\N	4902157	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	300	\N	\N	\N	\N	\N	\N	415
1791	\N	\N	\N	Victor	Hugo	Estrada	Davila	\N	\N	\N	43691897	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	364	\N	\N	\N	\N	\N	\N	418
1809	\N	\N	\N	Kevin	Gabriel	Gaitan	Rosales	\N	\N	\N	18419488	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	330	\N	\N	\N	\N	\N	\N	413
3220	\N	\N	\N	Mynor	\N	Linares	Aldana	\N	\N	\N	35164387	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	334	\N	\N	\N	\N	\N	\N	416
2073	\N	\N	\N	Enrique	De Jesus	Ordoñez	Alvarado	\N	\N	\N	12387649	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	399	\N	\N	\N	\N	\N	\N	409
2067	\N	\N	\N	Isidro	\N	Sosa	De Leon	\N	\N	\N	7544367	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	423	\N	\N	\N	\N	\N	\N	417
6882	\N	\N	\N	Edgar	Salvador	Pimentel	Chinchilla	\N	\N	\N	16326326	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3618
6885	\N	\N	\N	José	David	Castillo	Barrera	\N	\N	\N	28105192	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4466
6800	\N	\N	\N	Mayrena	Danisa	Gonzalez	Pinto	\N	\N	\N	9976744	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4478
627	\N	\N	\N	Denis	Javier	Longo	Gregorio	\N	\N	\N	21955174	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7001	\N	\N	\N	\N	\N	\N	3621
3324	\N	\N	\N	Jose	Micsael	Tecun	Cermeño	\N	\N	\N	42182794	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3001	\N	\N	\N	\N	\N	\N	4307
5906	\N	\N	\N	Marta	Estela	Araujo	Bohr	\N	\N	\N	4087097	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4327
1538	\N	\N	\N	Maria	Aurora	Fernandez	Bonilla	Aguilar	\N	\N	4042557	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3579
6742	\N	\N	\N	Ana	Jeanifer	Taracena	Caballeros	\N	\N	\N	39012824	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	361	\N	\N	\N	\N	\N	\N	4968
1135	\N	\N	\N	Julio	Cesar	Zuñiga	\N	\N	\N	\N	7649983	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4333
6932	\N	\N	\N	Josue	Efrain	Yoc	Elel	\N	\N	\N	44676778	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4939
5976	\N	\N	\N	Carlos 	Alberto	Alvarez	Lopez	\N	\N	\N	2515229	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5311
6940	\N	\N	\N	Fredy	Enrique	Xicará	Momotic	\N	\N	\N	9517294	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5315
4721	\N	\N	\N	Ricardo	Antonio	Figueroa	Portillo	\N	\N	\N	4141490	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5233
6926	\N	\N	\N	Glenda	Marleny	Bonilla	Valladares	\N	\N	\N	74917714	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4953
6925	\N	\N	\N	Melinton	\N	Salazar	Anleu	\N	\N	\N	25141473	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5324
6927	\N	\N	\N	Christian	Eduardo	Barrascout	Urizar	\N	\N	\N	48504963	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5297
6923	\N	\N	\N	Lilian	Marina	Alvarez	Bailon	\N	\N	\N	19067658	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3035	\N	\N	\N	\N	\N	\N	3244
6406	\N	\N	\N	Maynor	Reynaldo	Donis	Lopez	\N	\N	\N	71078428	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	434	\N	\N	\N	\N	\N	\N	4990
6939	\N	\N	\N	Olivia	Maria	Morales	Baldizon	\N	\N	\N	51059932	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5329
6947	\N	\N	\N	Crista	Yamileth	Guillen	Gramajo	\N	\N	\N	41620801	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5332
6949	\N	\N	\N	Ana	Lucia	Giron	Toledo	\N	\N	\N	29529441	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5336
4819	\N	\N	\N	Carmen	Silvia	Garza	Maderos	\N	\N	\N	15941752	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5337
6953	\N	\N	\N	Kelly	Analy	Boc	Anton	\N	\N	\N	66599148	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4818
6966	\N	\N	\N	Cindy	Dayen	Velasquez	Marroquin	\N	\N	\N	26252813	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5342
6971	\N	\N	\N	Ricardo	Manuel	Angel	Ramos	\N	\N	\N	82990131	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4796
6970	\N	\N	\N	Sergio	Federico	Morales	\N	\N	\N	\N	4873823	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5057
2316	\N	\N	\N	Rony	Rocael	Lopez	Roldan	\N	\N	\N	7668546	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	489
6974	\N	\N	\N	Marina	Isabel	Chuc	Sam	\N	\N	\N	30419670	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5354
1536	\N	\N	\N	Erick	Alberto	Degollado	Medina	\N	\N	\N	8109958	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5010	\N	\N	\N	\N	\N	\N	5352
2460	\N	\N	\N	Carlos	Alberto	Villatoro	Schunimann	\N	\N	\N	3851508	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5360
6581	\N	\N	\N	Otto	Rene	Dominguez	Barrios	\N	\N	\N	17538564	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3027	\N	\N	\N	\N	\N	\N	5361
6978	\N	\N	\N	Javier	Andres	Enriquez	Palma	\N	\N	\N	95360301	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4672
6981	\N	\N	\N	Luis	Osvaldo	Flores	Bacilios	\N	\N	\N	28275438	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5363
5339	\N	\N	\N	Leticia	\N	Gonzalez	Brizuela	\N	\N	\N	4280083	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5296
6125	\N	\N	\N	Luis	Guillermo	Barillas	Martínez	\N	\N	\N	82427690	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	408	\N	\N	\N	\N	\N	\N	5368
5636	\N	\N	\N	Edgar	Armando	Surám	Cal	\N	\N	\N	48696293	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	360	\N	\N	\N	\N	\N	\N	5369
6984	\N	\N	\N	Bárbara	Sucel	Gómez	Hernández	Castellanos	\N	\N	7991703	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5370
6987	\N	\N	\N	Gandhy	Mileyda	Guerra	Ramos	\N	\N	\N	63662116	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4739
6990	\N	\N	\N	Pedro	Ivan	Rodriguez	Maldonado	\N	\N	\N	7186894	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5201	\N	\N	\N	\N	\N	\N	5372
6601	\N	\N	\N	Dorothy	Crisley Marilynn	Choc	Leal	\N	\N	\N	61716774	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4705
6577	\N	\N	\N	Mildred	Mishel	Aguilon	Monroy	\N	\N	\N	83866620	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4789
6994	\N	\N	\N	Belia	Juana Yulissa	Peralta	Peralta	\N	\N	\N	76104982	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5376
6989	\N	\N	\N	Aroldo	Raul	Morales	Castillo	\N	\N	\N	83636781	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4721
6999	\N	\N	\N	Fulvio	Ludwing	Salazar	Paz	\N	\N	\N	519329K        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5056
500	\N	\N	\N	Selvin	Omar	Chinchilla	Abrego	\N	\N	\N	10251782	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4849
1095	\N	\N	\N	Dora	Patricia	Montufar	Roblero	\N	\N	\N	19669143	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5173	\N	\N	\N	\N	\N	\N	5384
7003	\N	\N	\N	Aura	Marina	Alvarez	Garcia	\N	\N	\N	30775140	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4745
7008	\N	\N	\N	Cindy	Dayana	Delcompare	Quintana	\N	\N	\N	88131378	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5387
7005	\N	\N	\N	Marlon	Rafael	Gordillo	Portillo	\N	\N	\N	88000702	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4952
7011	\N	\N	\N	Edna	Marisol	Muñoz	Cornejo	\N	\N	\N	56012632	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5393
6618	\N	\N	\N	Maria	Fernanda	Aguilar	Godinez	\N	\N	\N	68209924	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5121	\N	\N	\N	\N	\N	\N	4653
6184	\N	\N	\N	Yasmin	Yorleni	Valenzuela	Arreaga	\N	\N	\N	48738093	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5118	\N	\N	\N	\N	\N	\N	4652
2241	\N	\N	\N	Ericka	Jannett	Alegria	Rodas	\N	\N	\N	23868287	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5128	\N	\N	\N	\N	\N	\N	4651
6517	\N	\N	\N	Joaquin	Adolfo	Barrera	Paredes	\N	\N	\N	45521670	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5135	\N	\N	\N	\N	\N	\N	4650
6858	\N	\N	\N	Eddy	Estuardo	Romero	Alfaro	\N	\N	\N	47263857	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5394
6855	\N	\N	\N	Berny	Andree	Dominguez	Ramirez	\N	\N	\N	88979180	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	418	\N	\N	\N	\N	\N	\N	5397
6814	\N	\N	\N	Monica 	Pamela 	Catalan 	Meza	de Samayoa	\N	\N	79497993	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5207	\N	\N	\N	\N	\N	\N	5318
5414	\N	\N	\N	Karlo	Alexeyev	Reyes	Monroy	\N	\N	\N	48856614	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5109	\N	\N	\N	\N	\N	\N	4649
7015	\N	\N	\N	Willard 	Jairo	Alfaro	Recinos	\N	\N	\N	9536086	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5401
2371	\N	\N	\N	Hector	Haroldo	Pereira	Rodas	\N	\N	\N	5017424	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5405
921	\N	\N	\N	Blanca	Elena	Beteta	Sologaistoa	\N	\N	\N	5041392	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3629
1028	\N	\N	\N	Ester	Magdali	Galvez	Garcia	\N	\N	\N	8403651	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	482
1969	\N	\N	\N	Lidia	Octavila	Herrera	Ruano	Quiñonez	\N	\N	4091957	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3576
1935	\N	\N	\N	Ricardo	Nery	Chinchilla	Barrientos	\N	\N	\N	2586533	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5420
7019	\N	\N	\N	Laura	Maria Carlota	Lopez	Rodriguez	\N	\N	\N	17235804	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	438	\N	\N	\N	\N	\N	\N	3039
6186	\N	\N	\N	Flor	de Maria	Vasquez	\N	\N	\N	\N	51011328	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4708
292	\N	\N	\N	Mariela	Aide	Gonzalez	Gonzalez	\N	\N	\N	6776256	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5424
2082	\N	\N	\N	Marco	Antonio	Puga	Castellanos	\N	\N	\N	2222698	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5425
390	\N	\N	\N	Yadira	Del Carmen	Bolaños	Del Villar	\N	\N	\N	30196094	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5435
1950	\N	\N	\N	Flerida	Mariela	Sandoval	Madrigal	Garcia	\N	\N	13421379	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5436
1615	\N	\N	\N	Rayza	Indiana	Rodriguez	Najera	Alva	\N	\N	4927230	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4170
3221	\N	\N	\N	Regina	Del Rosario	Loarca	Morales	\N	\N	\N	8088144	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4565
2474	\N	\N	\N	Lignen	Ubaldo	Peñate	Rodriguez	\N	\N	\N	42155495	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4761
4066	\N	\N	\N	Karla	Johanna	Villagran	Hernandez	\N	\N	\N	33602255	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4555
1306	\N	\N	\N	Cindy	Marcolfa	Cabrera	Mendez	Mendoza	\N	\N	16946928	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5439
1704	\N	\N	\N	Elly	Alejandra	Beltran	Figueroa	\N	\N	\N	24316814	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5151	\N	\N	\N	\N	\N	\N	5443
614	\N	\N	\N	Rafael	Orlando	Morales	Arevalo	\N	\N	\N	12054917	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5444
5640	\N	\N	\N	Jovita	Maribel	Sandoval	Argueta	\N	\N	\N	34802711	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5429
2303	\N	\N	\N	Juan	Rene	Estrada	\N	\N	\N	\N	1059505	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5449
7025	\N	\N	\N	Kendy	Marisol	Perez	Arreaga	\N	\N	\N	78766338	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5446
3467	\N	\N	\N	Juan	Carlos	Santos	Valencia	\N	\N	\N	16958462	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5432
6873	\N	\N	\N	Damaris	Lily	Garrido	Calderon	\N	\N	\N	79048854	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5428
6683	\N	\N	\N	Lucrecia	Lisbeth	Valle	Vargas	\N	\N	\N	55503381	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5427
2379	\N	\N	\N	Ana	Luisa	Leonardo	Zetina	\N	\N	\N	9378448	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5431
6607	\N	\N	\N	Alba	Leticia	Gonzalez	Franco	\N	\N	\N	73319813	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5426
3217	\N	\N	\N	Edith	Xiomara	Perez	\N	\N	\N	\N	35565934	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5430
1958	\N	\N	\N	Gilda	Dolores	Garcia	Negrete	\N	\N	\N	1693427k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5452
2490	\N	\N	\N	Alicia	Elizabeth	Matus	Burgos	\N	\N	\N	50814095	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5434
2286	\N	\N	\N	Ahmed	\N	Aguilar	Escobar	\N	\N	\N	22455310	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5455
6376	\N	\N	\N	Luis	Fernando	Perez	Barrera	\N	\N	\N	83609660	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5138	\N	\N	\N	\N	\N	\N	4855
3284	\N	\N	\N	Natalie	Susana	Ochoa	Palacios	\N	\N	\N	70298262	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5110	\N	\N	\N	\N	\N	\N	4675
5432	\N	\N	\N	Omar	Antonio	Orozco	Revolorio	\N	\N	\N	21067848	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5101	\N	\N	\N	\N	\N	\N	4628
6934	\N	\N	\N	Ingrid	Carolina	Vasquez	Casuy	\N	\N	\N	78839017	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4856
5265	\N	\N	\N	Lesly	Madeley	Pineda	Corleto	\N	\N	\N	76551954	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5167	\N	\N	\N	\N	\N	\N	5319
5353	\N	\N	\N	Herberth	Andres	Rodriguez	Santizo	\N	\N	\N	43449220	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5108	\N	\N	\N	\N	\N	\N	4854
5359	\N	\N	\N	Ana	Victoria	Rivera	Villatoro	\N	\N	\N	70523258	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5169	\N	\N	\N	\N	\N	\N	4853
6930	\N	\N	\N	Maida	Aracely	Herrera	Donis	\N	\N	\N	50541978	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5453
7027	\N	\N	\N	Virginia	Lucrecia	Mendez	Yanes	\N	\N	\N	51719517	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5388
6483	\N	\N	\N	Milena	Veraly	Cordon	Fuentes	\N	\N	\N	27829324	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5457
2375	\N	\N	\N	Blanca	Melissa	Mijangos	Berganza	\N	\N	\N	26979349	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5460
7033	\N	\N	\N	Mirna	Violeta	Perez	Cobar	\N	\N	\N	38329891	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4956
7035	\N	\N	\N	Eberth	Rene	Ventura	Yat	\N	\N	\N	19089201	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5465
6996	\N	\N	\N	Elida	Mayuli	Perez	Escalante	de Barrios	\N	\N	21102732	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5374
6788	\N	\N	\N	Zucely	Del Carmen	Carranza	Oliva	\N	\N	\N	49037064	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	365	\N	\N	\N	\N	\N	\N	5467
7039	\N	\N	\N	Joseline	Zurama	Lopez	Tobar	\N	\N	\N	90138252	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	442	\N	\N	\N	\N	\N	\N	5472
7043	\N	\N	\N	Andrea	Amarilis	Lima	Rodas	\N	\N	\N	92109616	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5392
6350	\N	\N	\N	Fredy	\N	Colay	\N	\N	\N	\N	29419913	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	444	\N	\N	\N	\N	\N	\N	4916
5302	\N	\N	\N	Marilyn	Virginia	Pellecer	Larios	\N	\N	\N	74358138	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5477
7052	\N	\N	\N	Leiby	Noelia	Cornel	Lopez	\N	\N	\N	64104613	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4865
7048	\N	\N	\N	Milvia	Arcely	Diaz	Alvarez	\N	\N	\N	38034719	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4858
7055	\N	\N	\N	Luis	Pedro	Barrios	Araujo	\N	\N	\N	90783298	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5203	\N	\N	\N	\N	\N	\N	4648
3543	\N	\N	\N	Carlos	Alberto	Ovalle	Chavez	\N	\N	\N	2769867	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5478
6929	\N	\N	\N	Javier	Antonio	Cetina	Castro	\N	\N	\N	66422841	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5327
7060	\N	\N	\N	Mariana	Lili	Sanchez	Esteban	\N	\N	\N	94905215	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4720
7062	\N	\N	\N	Jennifer	Gabriela	Dominguez	Alvarado	\N	\N	\N	35824719	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5481
7057	\N	\N	\N	Oscar	Armando	Cruz	Calderon	\N	\N	\N	35240776	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5483
7064	\N	\N	\N	Edith 	Maite	Hernandez	Molina	\N	\N	\N	63858614	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5334
7065	\N	\N	\N	Miguel	Eduardo	Leon	Salazar	\N	\N	\N	53922204	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4717
7067	\N	\N	\N	William	Armando	Martinez	Rodriguez	\N	\N	\N	19697805	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5205	\N	\N	\N	\N	\N	\N	4863
6428	\N	\N	\N	Edgar	Rolando	Morente	Castro	\N	\N	\N	11852577	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5415
7041	\N	\N	\N	Ana 	Carolina	Barrios	Linares	\N	\N	\N	62963848	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5204	\N	\N	\N	\N	\N	\N	5317
4543	\N	\N	\N	Edwin	René	Espina	Donado	\N	\N	\N	7908776	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5170
4153	\N	\N	\N	Maria	Silvia	Castillo	Mendoza	\N	\N	\N	519220K        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5177
6203	\N	\N	\N	Cleotilde	Magali	Samayoa	Cermeño	\N	\N	\N	7494076	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5164
4764	\N	\N	\N	Sandro	Danilo	Cacoj	Bermudes	\N	\N	\N	17049148	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5163
6509	\N	\N	\N	Leslly 	Amanda	Marroquin	Del Cid	\N	\N	\N	27544958	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	368	\N	\N	\N	\N	\N	\N	5486
5834	\N	\N	\N	Mynor	Javier	Flores	Calvillo	\N	\N	\N	67520693	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	409	\N	\N	\N	\N	\N	\N	5489
6778	\N	\N	\N	Brenda	Liseth	Aguilar	Barrera	\N	\N	\N	26643936	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	335	\N	\N	\N	\N	\N	\N	5492
6914	\N	\N	\N	Alba	Patricia	Florian	Castellanos	\N	\N	\N	55434088	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	436	\N	\N	\N	\N	\N	\N	5484
6728	\N	\N	\N	Menfil	Vitelio	Fuentes	Mendoza	\N	\N	\N	14184710	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5576
662	\N	\N	\N	Alis	Marilis	García	Méndez	\N	\N	\N	29019923	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	392	\N	\N	\N	\N	\N	\N	5503
400	\N	\N	\N	Ana	Dolores	Sance	Monroy	\N	\N	\N	19775857	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5501
2116	\N	\N	\N	Ana	Maritza	Toledo	Villagran	\N	\N	\N	4783956	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	397	\N	\N	\N	\N	\N	\N	5510
1701	\N	\N	\N	Angela	Beatriz	Villatoro	Bol	\N	\N	\N	19619707	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	450	\N	\N	\N	\N	\N	\N	5500
1013	\N	\N	\N	Angela	\N	Gonzalez	Vasquez	\N	\N	\N	12059382	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5518
905	\N	\N	\N	Brenda	Nineth	Chacon	Luna	Gonzalez	\N	\N	28417941	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	396	\N	\N	\N	\N	\N	\N	5502
1260	\N	\N	\N	Brenda	Yanira	Lopez	Cordon	\N	\N	\N	15101320	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	386	\N	\N	\N	\N	\N	\N	5519
3231	\N	\N	\N	Claudia	Maria	Enriquez	Chuc	\N	\N	\N	68123817	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	78	\N	\N	\N	\N	\N	\N	5505
975	\N	\N	\N	Luvia	Ninnette	Sanchez	Gonzalez	Iriarte	\N	\N	47703652	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	342	\N	\N	\N	\N	\N	\N	5499
2299	\N	\N	\N	Luis	Oscar	Diaz	Samayoa	\N	\N	\N	15309797	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5506
3211	\N	\N	\N	Oscar	Felipe	Raimundo	Morales	\N	\N	\N	38574330	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5512
990	\N	\N	\N	Patricia	Eugenia	Sacayon	Monzon	\N	\N	\N	5712491	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5513
2176	\N	\N	\N	Reina	Leticia	Garza	Asencio	Garcia	\N	\N	26749580	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5515
2388	\N	\N	\N	Sandra	Patricia	Briones	Tello	Súchite	\N	\N	6837859	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5517
2123	\N	\N	\N	Silvia	Patricia	Arriaga	Herrera	Obando	\N	\N	24428221	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	376	\N	\N	\N	\N	\N	\N	5523
781	\N	\N	\N	Walter	Edgardo	Reyes	Carrillo	\N	\N	\N	12499633	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5524
1291	\N	\N	\N	Diana	Michell	Garcia	Ramirez	\N	\N	\N	40573389	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	403	\N	\N	\N	\N	\N	\N	5520
1236	\N	\N	\N	Alfredo	Joaquin	Alvarado	Chich	\N	\N	\N	7069731	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5532
1532	\N	\N	\N	Antonio	Miguel	Diaz	Rosales	\N	\N	\N	1455443	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	5529
1828	\N	\N	\N	Elida	Etelvina	Fuentes	Mendez	Garcia	\N	\N	40817008	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5526
1219	\N	\N	\N	Elvis	Edgardo	Mazariegos	Ortiz	\N	\N	\N	19556519	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5534
2427	\N	\N	\N	Hokabeth	Ivonne	García Salas	Mazariegos	Rodas	\N	\N	55525016	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	411	\N	\N	\N	\N	\N	\N	5530
515	\N	\N	\N	Juan	Carlos	Flores	Quinti	\N	\N	\N	18282253	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	5535
527	\N	\N	\N	Maria	Griselda	Galindo	Lopez	\N	\N	\N	23139242	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	303	\N	\N	\N	\N	\N	\N	5542
376	\N	\N	\N	Nury	Yesenia	Reyes	Morales	Alegria	\N	\N	36029297	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	394	\N	\N	\N	\N	\N	\N	5545
691	\N	\N	\N	Porfirio	\N	Olivares	Lemus	\N	\N	\N	39315703	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5546
1896	\N	\N	\N	Raul	Cecilio	Velasquez	Reyes	\N	\N	\N	12404365	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5176	\N	\N	\N	\N	\N	\N	5547
1309	\N	\N	\N	Rudy	Oswaldo	Vega	Escobar	\N	\N	\N	39334155	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5548
2378	\N	\N	\N	Tania	Claricel	Luna	Del Valle	De Aguilar	\N	\N	33096554	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5553
2408	\N	\N	\N	Lesther	Gabriel	Ulín	Sánchez	\N	\N	\N	55212298	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	89	\N	\N	\N	\N	\N	\N	5539
2353	\N	\N	\N	Victor	Manuel	Gonzalez	Hernandez	\N	\N	\N	44962118	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5555
560	\N	\N	\N	Lilian	Amparo	García	González	Loarca	\N	\N	8352828	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5541
3224	\N	\N	\N	Luis	Dagoberto	Guerra	Santizo	\N	\N	\N	17214521	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5543
3476	\N	\N	\N	Ana	Maria	Guzman	Davila 	Lopez	\N	\N	40669246	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5531
5606	\N	\N	\N	Brenda	Cecilia	Mendez	Paz	\N	\N	\N	51062917	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	351	\N	\N	\N	\N	\N	\N	5550
1586	\N	\N	\N	Zoila	Elizabeth	Ramirez	Ruiz	\N	\N	\N	12368539	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	301	\N	\N	\N	\N	\N	\N	5554
1247	\N	\N	\N	Marcela	Ixmukane	Matias	Jeronimo	\N	\N	\N	26371189	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5552
239	\N	\N	\N	Lorenzo	David	Cupul	Luna	\N	\N	\N	7658990	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5551
2333	\N	\N	\N	Carlos	Leonel	Robles	Perez	\N	\N	\N	5116856	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4246
5121	\N	\N	\N	Lesly	Kokin	Chon	Ruiz	\N	\N	\N	47707879	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5556
7070	\N	\N	\N	Joaquín 	Rodrigo	Flores	Guzmán	\N	\N	\N	6705154	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	545
7071	\N	\N	\N	Nidia	Sebastiana	Ralac	Abac	\N	\N	\N	40543994	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5566
6166	\N	\N	\N	Walter	Adolfo	Aristondo	Argueta	\N	\N	\N	63067811	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	369	\N	\N	\N	\N	\N	\N	5559
5553	\N	\N	\N	Yves	Yaacov Alejandro	Herrera	Poroj	\N	\N	\N	80947158	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	371	\N	\N	\N	\N	\N	\N	5560
7032	\N	\N	\N	Otto	Osvaldo	Iscapari	Yaguas	\N	\N	\N	24060496	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	440	\N	\N	\N	\N	\N	\N	5561
6492	\N	\N	\N	Emanuel	\N	Villalobos	Lopez	\N	\N	\N	84287624	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	344	\N	\N	\N	\N	\N	\N	5562
1593	\N	\N	\N	Cristian	Eduardo	Mejia	Doradea	\N	\N	\N	40731170	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	639	\N	\N	\N	\N	\N	\N	5563
2423	\N	\N	\N	Meyko	Leonardo	Lau	López	\N	\N	\N	64860434	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	343	\N	\N	\N	\N	\N	\N	5564
2351	\N	\N	\N	Hortensia	Elisa	Castañón	Lopez	Perez	\N	\N	61823325	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	302	\N	\N	\N	\N	\N	\N	5577
3218	\N	\N	\N	Guadalupe	\N	García	Bol	\N	\N	\N	760873k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	382	\N	\N	\N	\N	\N	\N	5578
5139	\N	\N	\N	Eliel	Iddai	Gomez	Saravia	\N	\N	\N	76847829	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	315	\N	\N	\N	\N	\N	\N	5579
2311	\N	\N	\N	Maria	Elena	Jacobo	Ramirez	\N	\N	\N	8468613	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	5580
3222	\N	\N	\N	Exolina	\N	Monzón	Ruano	\N	\N	\N	40024725	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5190	\N	\N	\N	\N	\N	\N	5581
5129	\N	\N	\N	Aroldo 	\N	Pineda	Y Pineda	\N	\N	\N	53238354	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	337	\N	\N	\N	\N	\N	\N	5582
2367	\N	\N	\N	Clemente	\N	Rivera	Virula	\N	\N	\N	39111288	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5194	\N	\N	\N	\N	\N	\N	5583
2417	\N	\N	\N	Sandra	Abigail	Ruano	Morales	\N	\N	\N	39444104	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5202	\N	\N	\N	\N	\N	\N	5584
5366	\N	\N	\N	José	Eduardo	Alvarez	Enriquez	\N	\N	\N	61960640	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	354	\N	\N	\N	\N	\N	\N	5586
5898	\N	\N	\N	Arturo	Eduardo	Barrios	Nowell	\N	\N	\N	24284343	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	353	\N	\N	\N	\N	\N	\N	5587
3212	\N	\N	\N	Edgar	Rolando	Bonilla	Loarca	\N	\N	\N	2551853	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	313	\N	\N	\N	\N	\N	\N	5588
2317	\N	\N	\N	Maria	Elizabeth	Marin	Quintanilla	\N	\N	\N	23556528	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5168	\N	\N	\N	\N	\N	\N	5589
2152	\N	\N	\N	Nery	Josue	Lucero	Chavarria	\N	\N	\N	15978273	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5593
1810	\N	\N	\N	Gloria	Edith	Ochoa	Zetino	\N	\N	\N	8334404	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5592
1667	\N	\N	\N	Rudin	Rene	Gonzalez	Leiva	\N	\N	\N	2310279	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5594
2066	\N	\N	\N	Rosa	Maria	Anton	Estrada	\N	\N	\N	46934545	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5191	\N	\N	\N	\N	\N	\N	5567
6955	\N	\N	\N	Ovidio	Sigilfreo	Urizar	Espaderos	\N	\N	\N	10192115	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5575
1515	\N	\N	\N	Idonaldo	Arevael	Fuentes	Fuentes	\N	\N	\N	6255574	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5598
2412	\N	\N	\N	Mirna	Idalia	Giron	Merida	Avila	\N	\N	30546648	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	322	\N	\N	\N	\N	\N	\N	5568
2433	\N	\N	\N	Samuel	\N	Villalta	Aguilar	\N	\N	\N	7287585	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5601
801	\N	\N	\N	Luis	Fernando	Hurtarte	Chacon	\N	\N	\N	34943005	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	405	\N	\N	\N	\N	\N	\N	5602
1205	\N	\N	\N	Hugo	Roberto	Saavedra	\N	\N	\N	\N	5748259	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5599
1886	\N	\N	\N	Aricela	\N	Hurtarte	Sandoval	\N	\N	\N	33214352	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5112	\N	\N	\N	\N	\N	\N	5569
2065	\N	\N	\N	Cesar	Rolando	Alvarez	Arana	\N	\N	\N	19601026	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	114	\N	\N	\N	\N	\N	\N	5603
2428	\N	\N	\N	Marilsa	Guadalupe	Espinoza	Muralles	\N	\N	\N	34129065	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	383	\N	\N	\N	\N	\N	\N	5604
6796	\N	\N	\N	Francisco	Javier	España	Calderon	\N	\N	\N	60250860	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5590
6898	\N	\N	\N	Marta	Juana	Tojín	León	\N	\N	\N	10293787	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5605
2420	\N	\N	\N	Carlos	\N	Sun	Chiroy	\N	\N	\N	64806170	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	5570
1657	\N	\N	\N	Alma	Maria	Martinez	Ambrocio	\N	\N	\N	26299062	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5606
2350	\N	\N	\N	Victor	Rodolfo	Carrillo	Carrera	\N	\N	\N	5030145	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5608
2242	\N	\N	\N	Jeydi	Maribel	Estrada	Montoya	Veliz	\N	\N	14181541	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5607
2344	\N	\N	\N	Griselda	Patricia	Lopez	Maldonado	Sentes	\N	\N	7193238	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5609
958	\N	\N	\N	Fatima	Desiree	Yat	Paz	\N	\N	\N	7281277	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5611
5434	\N	\N	\N	Efraín 	\N	Ruano	Salguero	\N	\N	\N	3372723	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	166	\N	\N	\N	\N	\N	\N	5614
3226	\N	\N	\N	Norma	Patricia	Villatoro	Castillo	Avalos	\N	\N	25258702	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	391	\N	\N	\N	\N	\N	\N	5619
2291	\N	\N	\N	Herber	Mauricio	Bojorquez	Bojorquez	\N	\N	\N	16483723	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	384	\N	\N	\N	\N	\N	\N	5617
1353	\N	\N	\N	Mirna	Del Rosario	Esteban	Lopez	\N	\N	\N	30853087	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	50	\N	\N	\N	\N	\N	\N	5616
431	\N	\N	\N	Alexander	Jose    Francisco	Pacay	Mendoza	\N	\N	\N	14921065	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5549
295	\N	\N	\N	Oscar	Fernando	Donis	Orellana	\N	\N	\N	6245234	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	7003	\N	\N	\N	\N	\N	\N	5615
6701	\N	\N	\N	Mirna	Liseth	Lau	Quan	España	\N	\N	32217978	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5623
776	\N	\N	\N	Alejandra	Dalila	Falco	Aguilar	\N	\N	\N	41212304	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5625
7031	\N	\N	\N	Ramón	Augusto	Zetina	Mendez	\N	\N	\N	2189933	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5626
2430	\N	\N	\N	Miriam	Argentina	Gutierrez	Reyes	Del Cid	\N	\N	24714682	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5179	\N	\N	\N	\N	\N	\N	4676
7076	\N	\N	\N	Heber	Neftali	Rodriguez	Estrada	\N	\N	\N	55325262	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5627
7074	\N	\N	\N	Regina	Eugenia	Zetina	Lobos	\N	\N	\N	11953896	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5558
7079	\N	\N	\N	Jorge	Luis	Torres	Flores	\N	\N	\N	69871795	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4870
7078	\N	\N	\N	Loussie	Marine	Deyet	Rodriguez	\N	\N	\N	56081588	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5628
7082	\N	\N	\N	Grisha	Siomara	Ochoa	Ramos	\N	\N	\N	76788253	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5206	\N	\N	\N	\N	\N	\N	5316
6888	\N	\N	\N	Amarilis	\N	Acevedo	Rodriguez	\N	\N	\N	5530873	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5630
6918	\N	\N	\N	Oliver	Antonio	Martinez	Villatoro	\N	\N	\N	3337294	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5631
7001	\N	\N	\N	Rafael	\N	Reyes	Roldan	\N	\N	\N	2722976	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5632
2193	\N	\N	\N	Emerita	\N	Garza	Asencio	\N	\N	\N	24512338	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5143	\N	\N	\N	\N	\N	\N	4862
7084	\N	\N	\N	Ileana	Lisbeth Nedelia	Barrios	Gean	\N	\N	\N	37099299	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	449	\N	\N	\N	\N	\N	\N	5641
7086	\N	\N	\N	Otto	Ronaldo	Gonzalez	Peña	\N	\N	\N	1167014	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5642
1398	\N	\N	\N	Maria	Odilia	Jerez	Argueta	\N	\N	\N	5250420	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5447
1613	\N	\N	\N	Sheila	Elizabeth	Garcia	Morales	\N	\N	\N	22931236	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4104
800	\N	\N	\N	Carlos	Humberto	Sandoval	Orellana	\N	\N	\N	7512775	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3503
173	\N	\N	\N	Norma	Yesenia	Morales	Molina	Muñoz	\N	\N	2442658k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	390	\N	\N	\N	\N	\N	\N	5643
2288	\N	\N	\N	Alba	Rosa	Alburez	Galvez	\N	\N	\N	19918429	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	3015	\N	\N	\N	\N	\N	\N	5645
343	\N	\N	\N	María	Teresa	Martínez	Velásquez	\N	\N	\N	18393489	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5646
2431	\N	\N	\N	Pablo	Leonel	Montenegro	Payes	\N	\N	\N	18263488	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	189	\N	\N	\N	\N	\N	\N	5647
7089	\N	\N	\N	Candelario	Aparicio	Ros	Díaz	\N	\N	\N	23652020	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5652
6843	\N	\N	\N	Mayra 	Elizabeth	Ignacio	Aceytuno	\N	\N	\N	88288323	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5196	\N	\N	\N	\N	\N	\N	5678
6936	\N	\N	\N	Dorcas	Elizabeth	Marroquin	Marroquin	\N	\N	\N	62735020	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5677
7093	\N	\N	\N	Jorge	David	Winter	García	\N	\N	\N	45527210	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5656
5327	\N	\N	\N	Edwin	Hernan	Marroquin	Lopez	\N	\N	\N	23860529	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	316	\N	\N	\N	\N	\N	\N	5690
6130	\N	\N	\N	Edwin	Orlando	Rivas	Morales	\N	\N	\N	76785777	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	309	\N	\N	\N	\N	\N	\N	5689
6128	\N	\N	\N	David	Daniel	Muñoz	Istupe	\N	\N	\N	72372648	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	314	\N	\N	\N	\N	\N	\N	5688
6900	\N	\N	\N	Kelen	Yojana	Flores	Menjivar	\N	\N	\N	95006001	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5695
6611	\N	\N	\N	Teresa	\N	Pineda	Hernandez	\N	\N	\N	82452911	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	311	\N	\N	\N	\N	\N	\N	5694
6225	\N	\N	\N	Maria	Luciana	Ramirez	Ramirez	\N	\N	\N	85770787	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	333	\N	\N	\N	\N	\N	\N	5693
1563	\N	\N	\N	Fernando	Dagoberto	Arango	Vasquez	\N	\N	\N	1896903	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5696
856	\N	\N	\N	Lourdes	Maria	Amado	Reyes	\N	\N	\N	9492968	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	350	\N	\N	\N	\N	\N	\N	5697
3367	\N	\N	\N	Juan	José	Miranda	Aguilar	\N	\N	\N	50706756	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	4901
6158	\N	\N	\N	Sara	Marisol	Mejia	Alburez	\N	\N	\N	7794819	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5699
6160	\N	\N	\N	Maria	Eugenia	Sandoval	Martinez	de Paz	\N	\N	1114980	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5698
5758	\N	\N	\N	Obdulio	Saul	González	Gómez	\N	\N	\N	6286984	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5655
6763	\N	\N	\N	Norma	Gricelda	Ayapan	Solis	\N	\N	\N	28749022	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5708
6390	\N	\N	\N	Silvia	Lorena	Morales	Solorzano	de Ortiz	\N	\N	26299089	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5707
6886	\N	\N	\N	Maria	Roselia	Tuyuc	Colaj	\N	\N	\N	23563125	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5706
6868	\N	\N	\N	Ludia	Judith	Acan 	Calderon	\N	\N	\N	67241212	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	427	\N	\N	\N	\N	\N	\N	5686
6572	\N	\N	\N	Karen	Ana Yenmi	Rodriguez	Cruz	\N	\N	\N	64302644	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	348	\N	\N	\N	\N	\N	\N	5710
5803	\N	\N	\N	Paola	Maricruz	Valenzuela	Sales	\N	\N	\N	82300291	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5727
6401	\N	\N	\N	Barbara 	Stefani	Lopez	Giron	\N	\N	\N	66912768	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5729
5777	\N	\N	\N	Brenda	Beatriz	Barrios	Gutierrez	\N	\N	\N	8430365	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5728
4699	\N	\N	\N	Monica	Fabiola	Castillo	Mendez	\N	\N	\N	21087792	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5731
6296	\N	\N	\N	Merari 	Cristina	Cuxil	Alvarez	\N	\N	\N	43914624	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5719
6837	\N	\N	\N	Wagner	Almendariz	Agustin	Perez	\N	\N	\N	18261884	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5720
1550	\N	\N	\N	Natividad	\N	Diaz	Pineda	\N	\N	\N	42662184	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	150	\N	\N	\N	\N	\N	\N	5721
6587	\N	\N	\N	Claudia	Liset	Monroy	Delgado	\N	\N	\N	53567978	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5722
1654	\N	\N	\N	Silvia	Patricia	Reyes	Avila	\N	\N	\N	4921887	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	151	\N	\N	\N	\N	\N	\N	5723
6545	\N	\N	\N	Lucy 	Maribel 	Garrido	Veliz	\N	\N	\N	50829084	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5724
2467	\N	\N	\N	Juana	Del Transito	Ulban	Fajardo	de Colindres	\N	\N	1164007	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5726
4480	\N	\N	\N	Hilda	Lucrecia	Castillo	Palma	\N	\N	\N	7457715	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5733
5281	\N	\N	\N	Sayda	Vanessa	Arreaga	Medina	de Herrera	\N	\N	37072242	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4010	\N	\N	\N	\N	\N	\N	5735
6872	\N	\N	\N	Heidy	Beatriz	Chanchavac 	Garcia	\N	\N	\N	10791299	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5737
6356	\N	\N	\N	Monica	Floridalma	Rojas	Ventura	\N	\N	\N	82367485	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5736
5201	\N	\N	\N	Karen	Andrea	Porres	Molina	de Fuentes	\N	\N	14061821	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5739
2500	\N	\N	\N	Magda	Lucrecia	Mejia	Arenas	\N	\N	\N	16653564	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5740
6850	\N	\N	\N	Irma	Leticia	Poou	Pop	De Yat	\N	\N	19052634	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5741
3482	\N	\N	\N	Evelin	Anaite	Fion-Lizama	Zetina	\N	\N	\N	54819539	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5743
5257	\N	\N	\N	Linda	Adela Maria	Toledo	Landaverde	\N	\N	\N	46054693	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5745
6792	\N	\N	\N	Sucely	Maybeli	Calderon	Aguilar	\N	\N	\N	66361362	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5746
509	\N	\N	\N	Sonia	Marina	Ortiz	Vivar	Guerra	\N	\N	7664656	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5747
3622	\N	\N	\N	Aminta	Eunice	Zuquino	Barrientos	\N	\N	\N	50793837	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5751
1272	\N	\N	\N	Santos	\N	Gonzalez	Linares	\N	\N	\N	3210766	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5754
5404	\N	\N	\N	Brandon	Alberto	Moran	Zepeda	\N	\N	\N	79777627	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5759
5267	\N	\N	\N	Carmen	Madiesca	Sandoval	Alarcon	\N	\N	\N	52191222	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5762
5412	\N	\N	\N	Dania	Aide	Lopez	Esquivel	\N	\N	\N	80346243	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5761
2426	\N	\N	\N	Dideth	Indira	Garcia	Velasquez	\N	\N	\N	42709067	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	389	\N	\N	\N	\N	\N	\N	5685
5866	\N	\N	\N	Josue	David	Vargas	San Jose	\N	\N	\N	54541743	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	395	\N	\N	\N	\N	\N	\N	5684
480	\N	\N	\N	Karla	Susana	Garcia	Diaz	\N	\N	\N	1719329k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	75	\N	\N	\N	\N	\N	\N	5764
3254	\N	\N	\N	Maria	Gabriela	Amezquita	Gamez	\N	\N	\N	24477419	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4005	\N	\N	\N	\N	\N	\N	5766
6765	\N	\N	\N	Luisa	Maria	Romero	Hurtarte	\N	\N	\N	93733259	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	328	\N	\N	\N	\N	\N	\N	5683
5208	\N	\N	\N	Waldy	Nohemi	Mijangos	Berganza	\N	\N	\N	74276662	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5758
6634	\N	\N	\N	Wendy	Leticia	Quich	Alvarado	\N	\N	\N	84988541	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	305	\N	\N	\N	\N	\N	\N	5767
6938	\N	\N	\N	Rodrigo	Rafael	Mancilla	Castañeda	\N	\N	\N	72031832	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	441	\N	\N	\N	\N	\N	\N	5700
6962	\N	\N	\N	Caterin	Gardenia	Pineda	Castillo	\N	\N	\N	89371038	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	433	\N	\N	\N	\N	\N	\N	5701
6964	\N	\N	\N	Maria	Jose	Fuentes	Canel	\N	\N	\N	95698590	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	432	\N	\N	\N	\N	\N	\N	5681
6968	\N	\N	\N	Boris	Armando	Ralda	Quijada	\N	\N	\N	56628412	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5769
6985	\N	\N	\N	Byron 	Timoteo	Can	Paau	\N	\N	\N	9133992	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5770
6992	\N	\N	\N	Mabelyn	Patricia	Palencia	Ramirez	\N	\N	\N	94918457	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	435	\N	\N	\N	\N	\N	\N	5680
1411	\N	\N	\N	Fernando	\N	Giron	Cassiano	\N	\N	\N	2346230	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5772
7012	\N	\N	\N	Manuel	Mardoqueo	Pop	Ac	\N	\N	\N	29215641	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5773
7017	\N	\N	\N	Aura	America	Contreras	Ramos	\N	\N	\N	81804881	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	439	\N	\N	\N	\N	\N	\N	5679
7021	\N	\N	\N	Brianda	Madelyn	Rodriguez	Mejicanos	\N	\N	\N	69677417	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5775
6590	\N	\N	\N	Evelyn 	Xiomara	Cortez	Alvarez	\N	\N	\N	84336420	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5776
7037	\N	\N	\N	Cesar	Isaac	Payes	Reyes	\N	\N	\N	16687736	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5777
7045	\N	\N	\N	Anthony	Masson	Guerra 	Porres	\N	\N	\N	92976336	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	445	\N	\N	\N	\N	\N	\N	5640
7047	\N	\N	\N	Carlos 	Fernando	Mazariegos	Dominguez	\N	\N	\N	68729952	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	446	\N	\N	\N	\N	\N	\N	5639
6339	\N	\N	\N	Albadina	Rebeca	Piedrasanta	Ramirez	\N	\N	\N	6869424	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5780
6620	\N	\N	\N	Ana	Eugenia	Avila	Perez	\N	\N	\N	68694954	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5781
1295	\N	\N	\N	Henrry	Vinicio	Chiu	De Leon	\N	\N	\N	17824982	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5784
1374	\N	\N	\N	Herbert	Gerardo	Quiñonez	Lopez	\N	\N	\N	18615279	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5785
4727	\N	\N	\N	Ilma	Lili	Salazar	Cano	\N	\N	\N	21070814	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5786
3353	\N	\N	\N	Ingrid	Marily	Veliz	Pinto	\N	\N	\N	28797787	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5787
666	\N	\N	\N	Isabel	\N	Morales	Cordero	\N	\N	\N	20119607	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5789
760	\N	\N	\N	Jorge	Maynor	Martinez	Garcia	\N	\N	\N	7491689	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5790
946	\N	\N	\N	Jose	Enrique	Barrios	Pocasangre	\N	\N	\N	25230344	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5074	\N	\N	\N	\N	\N	\N	5791
779	\N	\N	\N	Ana	Gabriela	Rivera	Vasquez	\N	\N	\N	8541108	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5792
658	\N	\N	\N	Jose	Guillermo	Morales	Ruano	\N	\N	\N	8519250	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5794
6744	\N	\N	\N	Axel 	Samael	Espino	Martinez	\N	\N	\N	24195529	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5797
5445	\N	\N	\N	Carmen	Estela	Ramos	Castañeda	\N	\N	\N	26657074	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5800
6542	\N	\N	\N	Carmen	Magdalena	Chen	Toc	\N	\N	\N	24876402	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5802
4823	\N	\N	\N	Lilian 	Thelma Eugenia	Montoya	Mendoza	\N	\N	\N	13580485	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5803
3403	\N	\N	\N	Julio	\N	Seb	Coc	\N	\N	\N	50168584	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5806
516	\N	\N	\N	Damaris	Eunice	Alonzo	Diaz	\N	\N	\N	20331231	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5808
6551	\N	\N	\N	Luis	Fernando	Moscoso	Moreno	\N	\N	\N	52095614	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5809
5437	\N	\N	\N	Luis	Izaias	Cochoy	Alva	\N	\N	\N	13343378	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5810
5879	\N	\N	\N	Elder 	Humberto	Bardales	Alvarado	\N	\N	\N	19773773	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5811
4502	\N	\N	\N	Magda	Elizabeth	Montenegro	Hernández	\N	\N	\N	26734958	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5813
6514	\N	\N	\N	Maria	Albertina	Pop	Tzub	\N	\N	\N	42842883	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5815
1350	\N	\N	\N	Maria	Del Carmen	Escobar	Salazar	\N	\N	\N	40850544	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5816
3359	\N	\N	\N	Marleani	Lilibeth	Coloch	Cuja	Corazón	\N	\N	45639213	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5819
4929	\N	\N	\N	Ervin	Estuardo	Rosales	Vasquez	\N	\N	\N	12892548	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5817
286	\N	\N	\N	Flora	Del Carmen	Woc	Monterroso	Lopez	\N	\N	24413526	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5823
6853	\N	\N	\N	Rosa	Maria	Perez	Corzo	de Salazar	\N	\N	39142051	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5826
740	\N	\N	\N	Roxana	Marilu	Lopez	Moreno	\N	\N	\N	38120747	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	58	\N	\N	\N	\N	\N	\N	5828
6637	\N	\N	\N	Ruth	Nohemi	del Aguila	Guzman	\N	\N	\N	16137620	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5829
1224	\N	\N	\N	Sergio	Alejandro	Molina	Castellanos	\N	\N	\N	44574053	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	92	\N	\N	\N	\N	\N	\N	5831
4934	\N	\N	\N	Francisco 	Eduardo 	De Leon	Mejia	\N	\N	\N	34032622	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5830
2489	\N	\N	\N	Sergio	Enrique	Chenal	Garcia	\N	\N	\N	12667749	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5833
4640	\N	\N	\N	Willard	Amilcar	Lopez	Reyes	\N	\N	\N	12668087	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5834
4387	\N	\N	\N	Magda	Lucrecia	Reyes	\N	\N	\N	\N	38565366	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5814
6780	\N	\N	\N	Gisela	Marisol	Cardona	Arreaga	\N	\N	\N	23362081	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5836
2453	\N	\N	\N	Laura	Estela	Obregon	Samayoa	\N	\N	\N	7604505	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5798
2487	\N	\N	\N	Xinia	Carolina	Ruiz	Montejo	\N	\N	\N	46236635	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5837
2376	\N	\N	\N	Gladys	Corina	Velásquez	Morales	\N	\N	\N	40539806	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5839
2368	\N	\N	\N	Jorge	Eduardo	Sazo	Luna	\N	\N	\N	16941918	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	118	\N	\N	\N	\N	\N	\N	5840
82	\N	\N	\N	Gustavo	Guillermo	Garcia	\N	\N	\N	\N	24821020	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5843
3326	\N	\N	\N	Holger	Anibal	Vargas	Aldana	\N	\N	\N	5330165	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5844
64	\N	\N	\N	Marco	Antonio	de León	Noriega	\N	\N	\N	23038217	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5848
1338	\N	\N	\N	Miguel	Francisco	Juárez	Pú	\N	\N	\N	10227970	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5849
442	\N	\N	\N	Norma	Elizabeth	Orozco	Fuentes	Fuentes	\N	\N	14212633	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5850
1046	\N	\N	\N	Rosa	Susana	Perez	Santiago	Natareno	\N	\N	7867026	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5851
1819	\N	\N	\N	Clara	Maribel	Hernandez	Toledo	\N	\N	\N	31970885	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5854
6593	\N	\N	\N	Hans	Alberto	Ruiz	Guzman	\N	\N	\N	90045416	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5148	\N	\N	\N	\N	\N	\N	4637
1270	\N	\N	\N	Arnoldo	Hernan	Mazariegos	\N	\N	\N	\N	935350k        	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5105	\N	\N	\N	\N	\N	\N	5778
924	\N	\N	\N	Antulio	Israel	Felix	Velásquez	\N	\N	\N	22954902	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5774
7095	\N	\N	\N	María	Del Pilar	Aldana	Sáenz	\N	\N	\N	28149521	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5861
1793	\N	\N	\N	Henry	Yubinni	Pineda	Ochaeta	\N	\N	\N	9375015	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5862
2434	\N	\N	\N	Carmen	Lucrecia	Arredondo	Cospin	\N	\N	\N	30322294	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5016	\N	\N	\N	\N	\N	\N	5863
4638	\N	\N	\N	Fabiola	Patricia	Rivera	Cruz	\N	\N	\N	26945266	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5864
5666	\N	\N	\N	Fredy	Obed	Ramos	Godinez	\N	\N	\N	23944668	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5867
6960	\N	\N	\N	Keyla	Shaaron	Rivera	Ortiz	\N	\N	\N	94194815	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	431	\N	\N	\N	\N	\N	\N	5682
898	\N	\N	\N	German	Oswaldo	Pop	Orenos	\N	\N	\N	28467620	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5869
208	\N	\N	\N	Víctor	Rubén	Carías	Monterroso	\N	\N	\N	45352275	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5102	\N	\N	\N	\N	\N	\N	5852
2488	\N	\N	\N	Haidei	Amarilis	Cu	Isem	Sanchez	\N	\N	25173251	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5847
6755	\N	\N	\N	Juan	Manuel	Castillo	Marroquin	\N	\N	\N	10641041	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5795
1425	\N	\N	\N	Melvin	Rene	Esquivel	Arias	\N	\N	\N	5800986	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5824
7096	\N	\N	\N	Edwin 	Alfredo 	Alvarez	Lopez	\N	\N	\N	22505458	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5873
7097	\N	\N	\N	José	Fernando	España	\N	\N	\N	\N	36812218	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5874
7098	\N	\N	\N	José	Raul	Rodriguez	Noriega	\N	\N	\N	42662982	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5875
4488	\N	\N	\N	Carol	Edith	Monroy	Giron	\N	\N	\N	17510341	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5876
6748	\N	\N	\N	Maria	del Rosario	Mendez	Garcia	de Zamora	\N	\N	7424914	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5879
1160	\N	\N	\N	Erick	Leonel	Hernandez	Aguilar	\N	\N	\N	6800408	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	345	\N	\N	\N	\N	\N	\N	5884
5822	\N	\N	\N	Leticia	Alejandra	Lopez	Diaz	\N	\N	\N	58148787	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5140	\N	\N	\N	\N	\N	\N	5882
6776	\N	\N	\N	Sara	Odilia	Aguilar	Barrera	\N	\N	\N	34431322	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	336	\N	\N	\N	\N	\N	\N	5853
3183	\N	\N	\N	Edwin	Alberto	Montenegro	Avila	\N	\N	\N	39338991	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	448	\N	\N	\N	\N	\N	\N	5886
2326	\N	\N	\N	Zoila	America	Ordoñez	Gonzalez	Samayoa	\N	\N	1533936k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5887
2349	\N	\N	\N	Aurelia	Eugenia	Ajpop	Garcia	\N	\N	\N	29354781	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5748
1349	\N	\N	\N	Juan	Ricardo	Perez	Yax	\N	\N	\N	22405941	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	4017	\N	\N	\N	\N	\N	\N	5752
2356	\N	\N	\N	Haroldo	\N	Jalal	Chub	\N	\N	\N	25753002	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5750
1075	\N	\N	\N	Miriam	Jannette	Monzon	Rivas	Alvarado	\N	\N	53458745	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	367	\N	\N	\N	\N	\N	\N	5757
2290	\N	\N	\N	Angel	Gabriel Alejandro	Alegria	Meza	\N	\N	\N	44001991	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	5172	\N	\N	\N	\N	\N	\N	5885
7090	\N	\N	\N	Jober	Samuel	Herrera	Ríos	\N	\N	\N	2656954k       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5888
3385	\N	\N	\N	Cesar	Alfredo	Sagastume	Bojorquez	\N	\N	\N	12556696	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	55	\N	\N	\N	\N	\N	\N	5807
2484	\N	\N	\N	Martina	Elizabeth	Juárez	Nicolás	\N	\N	\N	34809767	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5821
1432	\N	\N	\N	Mynor	Eliseo	Elias	Ogaldez	\N	\N	\N	3323897	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5865
2329	\N	\N	\N	Otto	Anibal	Recinos	Portillo	\N	\N	\N	12544639	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3483
782	\N	\N	\N	Maria	Victoria	Hernandez	Batres	de Leon	\N	\N	8016739	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5872
6893	\N	\N	\N	Marco	Tulio	Payés	Reyes	\N	\N	\N	7243871	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5846
3225	\N	\N	\N	Otto	Emmanuel	Schumann	Callejas	\N	\N	\N	1637116K       	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5825
1871	\N	\N	\N	Oddet	Benony	Orozco	Sanchez	\N	\N	\N	19703872	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5891
6870	\N	\N	\N	Magda	Leticia	Garcia	Tezo	\N	\N	\N	41119916	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5892
7100	\N	\N	\N	Jairo 	Alexander	Orellana	Alonzo	\N	\N	\N	72644761	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4994
2019	\N	\N	\N	Milagro	\N	Lopez	Aguilar	\N	\N	\N	12436232	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5893
6824	\N	\N	\N	Ernesto	Salvador	Flores	Jerez	\N	\N	\N	40028542	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3003
7102	\N	\N	\N	Alba	Noemi	Alvarez	\N	\N	\N	\N	59708956	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5138
7104	\N	\N	\N	Rita	Cristina	Femenias	Valenzuela	\N	\N	\N	9731040	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4646
7106	\N	\N	\N	Ruben	Dario 	Herrera	Fajardo	\N	\N	\N	7310854	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	451	\N	\N	\N	\N	\N	\N	5894
7099	\N	\N	\N	Asly	Violeta	Sandoval 	Aguirre	\N	\N	\N	51174685	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5929
2278	\N	\N	\N	Aura	Marina	Perez	Calan	Martinez	\N	\N	19919328	\N	\N	\N	AC	\N	\N	\N	\N	\N	\N	148	\N	\N	\N	\N	\N	\N	5933
\.


--
-- Name: persona_cod_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_cod_persona_seq', 2, true);


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proveedores (cod_proveedor, nit, direccion, telefono, nombre_contacto, activo) FROM stdin;
1	123456789	ZONA 1	578457	PROVEEDOR 1	t
2	123555555	ZONA 9	578451259	PROVEEDOR 2	t
\.


--
-- Name: proveedores_cod_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proveedores_cod_proveedor_seq', 2, true);


--
-- Data for Name: puesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY puesto (cod_puesto, cod_tipo_puesto, cod_organigrama, cod_persona, descripcion, cod_estatus, cod_sede, no_doc_creacion, no_doc_finalizacion, descripcion_femenino, cod_puesto_reemplazo, fecha_sistema) FROM stdin;
1	1	22	\N	Asistente de Abogado	AC	6	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3	1	22	\N	Asistente de Abogado	AC	34	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
4	1	22	\N	Asistente de Abogado	AC	11	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
6	1	22	\N	Asistente de Abogado	AC	18	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
7	1	22	\N	Asistente de Abogado	AC	38	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
8	1	22	\N	Asistente de Abogado	AC	33	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
9	1	22	\N	Asistente de Abogado	AC	38	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
11	1	22	\N	Asistente de Abogado	AC	15	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
12	1	22	\N	Asistente de Abogado	AC	41	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
13	1	22	\N	Asistente de Abogado	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
14	1	22	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
15	1	22	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
16	1	22	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
17	1	22	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
18	1	22	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
19	1	22	\N	Asistente de Abogado	AC	33	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
20	1	22	\N	Asistente de Abogado	AC	9	\N	\N	Asistente de Abogado	\N	\N
21	1	22	\N	Asistente de Abogado	AC	9	\N	\N	Asistente de Abogado	\N	\N
22	1	22	\N	Asistente de Abogado	AC	9	\N	\N	Asistente de Abogado	\N	\N
23	1	22	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
24	1	22	\N	Asistente de Abogado	AC	13	\N	\N	Asistente de Abogado	\N	\N
25	1	22	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
26	1	22	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
27	1	22	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
28	1	22	\N	Asistente de Abogado	AC	6	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
29	1	22	\N	Asistente de Abogado	AC	6	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
30	1	22	\N	Asistente de Abogado	AC	6	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
31	1	22	\N	Asistente de Abogado	AC	12	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
32	1	22	\N	Asistente de Abogado	AC	12	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
33	1	22	\N	Asistente de Abogado	AC	38	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
34	1	22	\N	Asistente de Abogado	AC	10	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
35	1	22	\N	Asistente de Abogado	AC	29	\N	\N	Asistente de Abogado	\N	\N
36	1	22	\N	Asistente de Abogado	AC	7	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
37	1	22	\N	Asistente de Abogado	AC	7	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
38	1	22	\N	Asistente de Abogado	AC	32	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
39	1	22	\N	Asistente de Abogado	AC	24	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
40	1	22	\N	Asistente de Abogado	AC	30	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
41	1	22	\N	Asistente de Abogado	AC	19	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
42	1	22	\N	Asistente de Abogado	AC	14	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
43	1	22	\N	Asistente de Abogado	AC	26	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
44	1	22	\N	Asistente de Abogado	AC	8	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
45	1	22	\N	Asistente de Abogado	AC	8	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
46	1	22	\N	Asistente de Abogado	AC	41	\N	Error	Asistente de Abogado	\N	\N
47	1	22	\N	Asistente de Abogado	AC	41	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
48	1	81	\N	Asistente de Abogado	AC	42	\N	\N	Asistente de Abogado	\N	\N
49	1	22	\N	Asistente de Abogado	AC	21	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
50	1	22	\N	Asistente de Abogado	AC	22	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
51	1	22	\N	Asistente de Abogado	AC	34	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
52	1	22	\N	Asistente de Abogado	AC	11	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
53	1	22	\N	Asistente de Abogado	AC	11	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
54	1	22	\N	Asistente de Abogado	AC	11	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
55	1	22	\N	Asistente de Abogado	AC	17	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
56	1	22	\N	Asistente de Abogado	AC	17	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
57	1	22	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
58	1	22	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
59	1	22	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
60	1	22	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
61	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
62	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
63	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
64	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
65	1	22	\N	Asistente de Abogado	AC	6	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
66	1	22	\N	Asistente de Abogado	AC	6	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
67	1	22	\N	Asistente de Abogado	AC	6	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
68	1	22	\N	Asistente de Abogado	AC	6	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
69	1	22	\N	Asistente de Abogado	AC	4	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
70	1	22	\N	Asistente de Abogado	AC	26	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
71	1	22	\N	Asistente de Abogado	AC	8	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
72	1	22	\N	Asistente de Abogado	AC	8	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
73	1	22	\N	Asistente de Abogado	AC	8	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
74	1	22	\N	Asistente de Abogado	AC	22	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
75	1	22	\N	Asistente de Abogado	AC	11	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
76	1	22	\N	Asistente de Abogado	AC	11	\N	\N	Asistente de Abogado	\N	\N
77	1	22	\N	Asistente de Abogado	AC	9	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
78	1	22	\N	Asistente de Abogado	AC	10	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
79	1	22	\N	Asistente de Abogado	AC	10	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
80	1	22	\N	Asistente de Abogado	AC	10	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
81	1	22	\N	Asistente de Abogado	AC	13	\N	SOLICITUD DE INFORMATICA	Asistente de Abogado	\N	\N
82	1	22	\N	Asistente de Abogado	AC	13	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
83	1	22	\N	Asistente de Abogado	AC	29	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
84	1	22	\N	Asistente de Abogado	AC	29	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
85	1	22	\N	Asistente de Abogado	AC	25	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
86	1	22	\N	Asistente de Abogado	AC	23	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
87	1	22	\N	Asistente de Abogado	AC	23	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
88	1	22	\N	Asistente de Abogado	AC	23	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
89	1	22	\N	Asistente de Abogado	AC	7	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
90	1	22	\N	Asistente de Abogado	AC	32	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
91	1	22	\N	Asistente de Abogado	AC	32	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
92	1	22	\N	Asistente de Abogado	AC	24	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
93	1	22	\N	Asistente de Abogado	AC	30	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
94	1	22	\N	Asistente de Abogado	AC	30	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
95	1	22	\N	Asistente de Abogado	AC	14	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
96	1	22	\N	Asistente de Abogado	AC	28	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
97	1	22	\N	Asistente de Abogado	AC	27	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
98	1	22	\N	Asistente de Abogado	AC	27	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
99	1	22	\N	Asistente de Abogado	AC	20	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
100	1	22	\N	Asistente de Abogado	AC	41	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
101	3	17	\N	Conserje	AC	5	\N	\N	Conserje	\N	\N
102	3	17	\N	Conserje	AC	4	\N	\N	Conserje	\N	\N
103	3	17	\N	Conserje	AC	6	\N	\N	Conserje	\N	\N
104	3	17	\N	Conserje	AC	12	\N	\N	Conserje	\N	\N
105	3	17	\N	Conserje	AC	38	\N	\N	Conserje	\N	\N
106	3	17	\N	Conserje	AC	10	\N	\N	Conserje	\N	\N
107	3	17	\N	Conserje	AC	10	\N	\N	Conserje	\N	\N
108	3	17	\N	Conserje	AC	13	\N	\N	Conserje	\N	\N
109	3	17	\N	Conserje	AC	29	\N	\N	Conserje	\N	\N
110	3	17	\N	Conserje	AC	9	\N	\N	Conserje	\N	\N
111	3	17	\N	Conserje	AC	31	\N	\N	Conserje	\N	\N
112	3	17	\N	Conserje	AC	25	\N	\N	Conserje	\N	\N
113	3	17	\N	Conserje	AC	33	\N	\N	Conserje	\N	\N
114	3	17	\N	Conserje	AC	33	\N	\N	Conserje	\N	\N
115	3	17	\N	Conserje	AC	23	\N	\N	Conserje	\N	\N
116	3	17	\N	Conserje	AC	7	\N	\N	Conserje	\N	\N
117	3	17	\N	Conserje	AC	32	\N	\N	Conserje	\N	\N
118	3	17	\N	Conserje	AC	24	\N	\N	Conserje	\N	\N
119	3	17	\N	Conserje	AC	30	\N	\N	Conserje	\N	\N
120	3	17	\N	Conserje	AC	19	\N	\N	Conserje	\N	\N
121	3	17	\N	Conserje	AC	14	\N	\N	Conserje	\N	\N
122	3	17	\N	Conserje	AC	28	\N	\N	Conserje	\N	\N
123	3	17	\N	Conserje	AC	27	\N	\N	Conserje	\N	\N
124	3	17	\N	Conserje	AC	20	\N	\N	Conserje	\N	\N
125	3	17	\N	Conserje	AC	16	\N	\N	Conserje	\N	\N
126	3	17	\N	Conserje	AC	26	\N	\N	Conserje	\N	\N
127	3	17	\N	Conserje	AC	41	\N	\N	Conserje	\N	\N
128	3	17	\N	Conserje	AC	42	\N	\N	Conserje	\N	\N
129	3	17	\N	Conserje	AC	21	\N	\N	Conserje	\N	\N
130	3	17	\N	Conserje	AC	22	\N	\N	Conserje	\N	\N
131	3	17	\N	Conserje	AC	34	\N	\N	Conserje	\N	\N
132	3	17	\N	Conserje	AC	17	\N	\N	Conserje	\N	\N
133	3	17	\N	Conserje	AC	18	\N	\N	Conserje	\N	\N
134	3	22	\N	Conserje	AC	11	\N	Acuerdo 49-2014	Conserje	\N	\N
135	3	22	\N	Conserje	AC	13	\N	Acuerdo 49-2014	Conserje	\N	\N
136	4	22	\N	Defensor Público de Planta I	AC	5	\N	\N	Defensora Pública de Planta I	\N	\N
137	4	22	\N	Defensor Público de Planta I	AC	5	\N	\N	Defensora Pública de Planta I	\N	\N
138	4	22	\N	Defensor Público de Planta I	AC	5	\N	\N	Defensora Pública de Planta I	\N	\N
139	4	22	\N	Defensor Público de Planta II	AC	6	\N	\N	Defensora Pública de Planta II	\N	\N
140	4	22	\N	Defensor Público de Planta I	AC	4	\N	\N	Defensora Pública de Planta I	\N	\N
141	4	22	\N	Defensor Público de Planta I	AC	26	\N	Acuerdo 79-2014	Defensora Pública de Planta I	\N	\N
142	4	22	\N	Defensor Público de Planta I	AC	8	\N	\N	Defensora Pública de Planta I	\N	\N
143	4	22	\N	Defensor Público de Planta I	AC	8	\N	\N	Defensora Pública de Planta I	\N	\N
144	4	22	\N	Defensor Público de Planta I	AC	12	\N	\N	Defensora Pública de Planta I	\N	\N
145	4	22	\N	Defensor Público de Planta I	AC	11	\N	\N	Defensora Pública de Planta I	\N	\N
146	4	22	\N	Defensor Público de Planta II	AC	11	\N	Acuerdo 09-2015	Defensora Pública de Planta II	\N	\N
147	4	22	\N	Defensor Público de Planta I	AC	50	\N	Ref.1093-2014-RRHH-CLRP-hbg	Defensora Pública de Planta I	\N	\N
148	4	22	\N	Defensor Público de Planta I	AC	38	\N	\N	Defensora Pública de Planta I	\N	\N
149	4	22	\N	Defensor Público de Planta I	AC	31	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
150	4	22	\N	Defensor Público de Planta I	AC	23	\N	\N	Defensora Pública de Planta I	\N	\N
151	4	22	\N	Defensor Público de Planta I	AC	7	\N	\N	Defensora Pública de Planta I	\N	\N
152	4	22	\N	Defensor Público de Planta I	AC	32	\N	\N	Defensora Pública de Planta I	\N	\N
153	4	22	\N	Defensor Público de Planta I	AC	24	\N	\N	Defensora Pública de Planta I	\N	\N
154	4	22	\N	Defensor Público de Planta I	AC	15	\N	Acuerdo 114-2012  y requerimiento de informatica	Defensora Pública de Planta I	\N	\N
155	4	22	\N	Defensor Público de Planta II	AC	20	\N	15-2014	Defensora Pública de Planta II	\N	\N
159	5	22	\N	Auxiliar	AC	39	\N	\N	Auxiliar	\N	\N
160	5	11	\N	Auxiliar	AC	39	\N	Error	Auxiliar	\N	\N
161	5	11	\N	Auxiliar	AC	39	\N	\N	Auxiliar	\N	\N
162	5	11	\N	Auxiliar	AC	39	\N	Mal creada	Auxiliar	\N	\N
163	5	11	\N	Auxiliar	AC	39	\N	Error	Auxiliar	\N	\N
164	5	11	\N	Auxiliar	AC	39	\N	Mal creado	Auxiliar	\N	\N
165	5	11	\N	Auxiliar	AC	46	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
166	5	11	\N	Auxiliar	AC	46	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
167	5	11	\N	Auxiliar	AC	48	\N	\N	Auxiliar	\N	\N
168	5	11	\N	Auxiliar	AC	48	\N	\N	Auxiliar	\N	\N
169	5	11	\N	Auxiliar	AC	48	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
170	244	11	\N	Auxiliar	AC	48	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
171	5	11	\N	Auxiliar	AC	48	\N	\N	Auxiliar	\N	\N
172	5	22	\N	Auxiliar	AC	47	\N	\N	Auxiliar	\N	\N
173	5	11	\N	Auxiliar	AC	47	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
174	5	11	\N	Auxiliar	AC	47	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
175	5	11	\N	Auxiliar	AC	47	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
176	5	11	\N	Auxiliar	AC	47	\N	\N	Auxiliar	\N	\N
177	5	11	\N	Auxiliar	AC	47	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
178	6	105	\N	Trabajador Social	AC	43	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
179	6	105	\N	Trabajador Social	AC	43	\N	\N	Trabajadora Social	\N	\N
180	6	25	\N	Trabajador Social	AC	43	\N	\N	Trabajadora Social	\N	\N
181	6	25	\N	Trabajador Social	AC	4	\N	\N	Trabajadora Social	\N	\N
182	100	105	\N	Técnico en Trabajo Social	AC	38	\N	Oficio 50-2014-rrhh-clrp	Técnico en Trabajo Social	\N	\N
183	6	105	\N	Trabajador Social	AC	13	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
184	6	105	\N	Trabajador Social	AC	29	\N	\N	Trabajadora Social	\N	\N
185	6	105	\N	Trabajador Social	AC	23	\N	\N	Trabajadora Social	\N	\N
186	6	105	\N	Trabajador Social	AC	8	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
187	6	105	\N	Trabajador Social	AC	41	\N	\N	Trabajadora Social	\N	\N
188	6	105	\N	Trabajador Social	AC	22	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
190	7	105	\N	Trabajador Social II	AC	43	\N	OFICIO 46-2016-RRHH	Trabajadora Social II	\N	\N
191	7	105	\N	Trabajador Social II	AC	6	\N	SOLICITUD DE INFORMATICA	Trabajadora Social II	\N	\N
192	7	105	\N	Trabajador Social II	AC	34	\N	\N	Trabajadora Social II	\N	\N
193	7	105	\N	Trabajador Social II	AC	10	\N	\N	Trabajadora Social II	\N	\N
194	7	105	\N	Trabajador Social II	AC	30	\N	\N	Trabajadora Social II	\N	\N
197	7	105	\N	Trabajador Social I	AC	32	\N	\N	Trabajadora Social I	\N	\N
198	6	81	\N	Trabajador Social	AC	8	\N	\N	Trabajadora Social	\N	\N
199	6	105	\N	Trabajador Social	AC	1	\N	\N	Trabajadora Social	\N	\N
200	6	81	\N	Trabajador Social	AC	45	\N	\N	Trabajadora Social	\N	\N
201	7	105	\N	Trabajador Social I	AC	43	\N	OFICIO 46-2016-RRHH	Trabajadora Social I	\N	\N
202	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
203	1	81	\N	Asistente de Abogado	AC	45	\N	\N	Asistente de Abogado	\N	\N
204	1	81	\N	Asistente de Abogado	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
205	1	81	\N	Asistente de Abogado	AC	45	\N	\N	Asistente de Abogado	\N	\N
206	1	81	\N	Asistente de Abogado	AC	45	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
207	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
208	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
209	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
210	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
211	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
212	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
213	1	30	\N	Asistente de Abogado	AC	2	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
214	1	30	\N	Asistente de Abogado	AC	2	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
215	1	26	\N	Asistente de Abogado	AC	1	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
216	1	26	\N	Asistente de Abogado	AC	1	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
217	1	30	\N	Asistente de Abogado	AC	2	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
218	1	30	\N	Asistente de Abogado	AC	2	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
219	1	30	\N	Asistente de Abogado	AC	2	\N	\N	Asistente de Abogado	\N	\N
220	1	29	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
221	1	81	\N	Asistente de Abogado	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
222	1	81	\N	Asistente de Abogado	AC	6	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
223	1	81	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
224	1	81	\N	Asistente de Abogado	AC	23	\N	\N	Asistente de Abogado	\N	\N
225	1	81	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
226	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
227	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
228	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
229	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
230	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
231	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
232	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
233	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
234	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
235	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
236	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
237	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
238	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
239	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
240	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
241	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
242	1	22	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
243	1	81	\N	Asistente de Abogado	AC	26	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
244	1	81	\N	Asistente de Abogado	AC	8	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
245	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
246	1	26	\N	Asistente de Abogado	AC	1	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
247	1	24	\N	Asistente de Abogado	AC	36	\N	SOLICITUD DE INFORMATICA	Asistente de Abogado	\N	\N
248	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
249	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
250	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
251	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
252	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
253	1	22	\N	Asistente de Abogado	AC	5	\N	ACUERDO No. 09-2014	Asistente de Abogado	\N	\N
254	1	22	\N	Asistente de Abogado	AC	5	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
255	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
256	1	22	\N	Asistente de Abogado	AC	1	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
258	1	27	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
259	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
260	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
261	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
262	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
263	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
264	4	26	\N	Defensor Público en Formación I	AC	1	\N	\N	Defensora Pública en Formación I	\N	\N
265	4	27	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
266	4	30	\N	Defensor Público en Formación I	AC	2	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
267	4	22	\N	Defensor Público en Formación I	AC	4	\N	\N	Defensora Pública en Formación I	\N	\N
268	4	22	\N	Defensor Público en Formación I	AC	6	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
269	4	22	\N	Defensor Público en Formación I	AC	6	\N	\N	Defensora Pública en Formación I	\N	\N
270	4	30	\N	Defensor Público en Formación I	AC	2	\N	\N	Defensora Pública en Formación I	\N	\N
271	4	22	\N	Defensor Público en Formación I	AC	10	\N	\N	Defensora Pública en Formación I	\N	\N
272	4	22	\N	Defensor Público en Formación I	AC	33	\N	\N	Defensora Pública en Formación I	\N	\N
273	4	22	\N	Defensor Público en Formación I	AC	23	\N	\N	Defensora Pública en Formación I	\N	\N
274	4	22	\N	Defensor Público en Formación I	AC	32	\N	\N	Defensora Pública en Formación I	\N	\N
275	4	81	\N	Defensor Público en Formación I	AC	8	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
276	4	22	\N	Defensor Público en Formación I	AC	11	\N	\N	Defensora Pública en Formación I	\N	\N
277	4	81	\N	Defensor Público en Formación II	AC	18	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
278	4	22	\N	Defensor Público en Formación II	AC	34	\N	\N	Defensora Pública en Formación II	\N	\N
279	4	22	\N	Defensor Público en Formación II	AC	22	\N	\N	Defensora Pública en Formación II	\N	\N
280	4	22	\N	Defensor Público en Formación II	AC	42	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
281	4	81	\N	Defensor Público en Formación II	AC	8	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
282	4	22	\N	Defensor Público en Formación II	AC	8	\N	\N	Defensora Pública en Formación II	\N	\N
283	4	22	\N	Defensor Público en Formación II	AC	16	\N	\N	Defensora Pública en Formación II	\N	\N
284	4	22	\N	Defensor Público en Formación II	AC	19	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
285	4	22	\N	Defensor Público en Formación II	AC	7	\N	\N	Defensora Pública en Formación II	\N	\N
286	4	81	\N	Defensor Público en Formación II	AC	23	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
287	4	22	\N	Defensor Público en Formación I	AC	13	\N	\N	Defensora Pública en Formación I	\N	\N
288	4	81	\N	Defensor Público en Formación II	AC	13	\N	\N	Defensora Pública en Formación II	\N	\N
289	4	22	\N	Defensor Público en Formación II	AC	13	\N	\N	Defensora Pública en Formación II	\N	\N
290	4	22	\N	Defensor Público en Formación II	AC	13	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
291	4	22	\N	Defensor Público en Formación II	AC	13	\N	\N	Defensora Pública en Formación II	\N	\N
292	4	81	\N	Defensor Público en Formación II	AC	6	\N	\N	Defensora Pública en Formación II	\N	\N
293	4	22	\N	Defensor Público en Formación II	AC	6	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
294	4	24	\N	Defensor Público en Formación II	AC	36	\N	\N	Defensora Pública en Formación II	\N	\N
295	4	24	\N	Defensor Público en Formación II	AC	36	\N	\N	Defensora Pública en Formación II	\N	\N
296	4	24	\N	Defensor Público en Formación II	AC	36	\N	\N	Defensora Pública en Formación II	\N	\N
297	4	81	\N	Defensor Público en Formación II	AC	45	\N	\N	Defensora Pública en Formación II	\N	\N
298	4	81	\N	Defensor Público en Formación II	AC	45	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
299	4	81	\N	Defensor Público en Formación II	AC	45	\N	\N	Defensora Pública en Formación II	\N	\N
300	4	22	\N	Defensor Público en Formación II	AC	35	\N	\N	Defensora Pública en Formación II	\N	\N
301	4	26	\N	Defensor Público en Formación II	AC	1	\N	\N	Defensora Pública en Formación II	\N	\N
302	4	30	\N	Defensor Público en Formación II	AC	2	\N	\N	Defensora Pública en Formación II	\N	\N
303	4	22	\N	Defensor Público en Formación II	AC	41	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
304	4	22	\N	Defensor Público en Formación II	AC	41	\N	\N	Defensora Pública en Formación II	\N	\N
305	4	22	\N	Defensor Público en Formación II	AC	41	\N	\N	Defensora Pública en Formación II	\N	\N
306	4	22	\N	Defensor Público en Formación III	AC	35	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
307	4	24	\N	Defensor Público en Formación III	AC	36	\N	\N	Defensora Pública en Formación III	\N	\N
308	4	29	\N	Defensor Público en Formación III	AC	36	\N	\N	Defensora Pública en Formación III	\N	\N
309	4	29	\N	Defensor Público en Formación III	AC	36	\N	\N	Defensora Pública en Formación III	\N	\N
310	4	22	\N	Defensor Público en Formación III	AC	5	\N	\N	Defensora Pública en Formación III	\N	\N
311	4	22	\N	Defensor Público en Formación III	AC	23	\N	\N	Defensora Pública en Formación III	\N	\N
312	4	22	\N	Defensor Público en Formación III	AC	18	\N	\N	Defensora Pública en Formación III	\N	\N
313	4	22	\N	Defensor Público de Planta I	AC	35	\N	Ref 824-2016-RRHH-CLRP-hbg	Defensora Pública de Planta I	\N	\N
314	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
315	4	22	\N	Defensor Público de Planta I	AC	2	\N	\N	Defensora Pública de Planta I	\N	\N
316	4	22	\N	Defensor Público de Planta I	AC	35	\N	Ref 824-2016-RRHH-CLRP-hbg	Defensora Pública de Planta I	\N	\N
317	4	22	\N	Defensor Público de Planta I	AC	35	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta I	\N	\N
318	4	22	\N	Defensor Público de Planta I	AC	35	\N	Ref 824-2016-RRHH-CLRP-hbg	Defensora Pública de Planta I	\N	\N
319	4	22	\N	Defensor Público de Planta II	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
320	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
321	4	22	\N	Defensor Público de Planta I	AC	35	\N	Acuerdo 68-2015	Defensora Pública de Planta I	\N	\N
322	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
323	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
324	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
325	4	22	\N	Defensor Público de Planta I	AC	35	\N	Acuerdo 66-2015	Defensora Pública de Planta I	\N	\N
326	4	22	\N	Defensor Público de Planta II	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
327	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
328	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
329	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
330	4	81	\N	Defensor Público de Planta I	AC	45	\N	\N	Defensora Pública de Planta I	\N	\N
331	4	81	\N	Defensor Público de Planta I	AC	45	\N	\N	Defensora Pública de Planta I	\N	\N
332	4	9	\N	Defensor Público de Planta II	AC	35	\N	ACUERDO 104-2015	Defensora Pública de Planta II	\N	\N
333	214	9	\N	Defensor Público de Planta II	AC	35	\N	ACUERDO 104-2015	Defensora Pública de Planta II	\N	\N
334	4	9	\N	Defensor Público de Planta I	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
335	4	9	\N	Defensor Público de Planta I	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
337	4	29	\N	Defensor Público de Planta II	AC	36	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta II	\N	\N
338	4	22	\N	Defensor Público de Planta II	AC	35	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
339	4	22	\N	Defensor Público de Planta II	AC	35	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
340	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
341	4	22	\N	Defensor Público de Planta II	AC	35	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
342	4	22	\N	Defensor Público de Planta II	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
343	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
344	4	22	\N	Defensor Público de Planta II	AC	35	\N	Acuerdo 14-2015	Defensora Pública de Planta II	\N	\N
345	4	22	\N	Defensor Público de Planta III	AC	35	\N	\N	Defensora Pública de Planta III	\N	\N
346	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
347	4	22	\N	Defensor Público de Planta II	AC	5	\N	\N	Defensora Pública de Planta II	\N	\N
348	4	22	\N	Defensor Público de Planta II	AC	5	\N	\N	Defensora Pública de Planta II	\N	\N
349	4	22	\N	Defensor Público de Planta II	AC	6	\N	\N	Defensora Pública de Planta II	\N	\N
350	4	22	\N	Defensor Público de Planta II	AC	8	\N	\N	Defensora Pública de Planta II	\N	\N
351	4	22	\N	Defensor Público de Planta II	AC	22	\N	Acuerdo 116-2012 y a solicitud de informatica	Defensora Pública de Planta II	\N	\N
352	4	22	\N	Defensor Público de Planta II	AC	34	\N	1	Defensora Pública de Planta II	\N	\N
353	4	22	\N	Defensor Público de Planta II	AC	17	\N	\N	Defensora Pública de Planta II	\N	\N
354	4	22	\N	Defensor Público de Planta II	AC	18	\N	\N	Defensora Pública de Planta II	\N	\N
355	4	22	\N	Defensor Público de Planta II	AC	18	\N	\N	Defensora Pública de Planta II	\N	\N
357	4	22	\N	Defensor Público de Planta III	AC	10	\N	Acuerdo 80-2014	Defensora Pública de Planta III	\N	\N
358	4	22	\N	Defensor Público de Planta II	AC	13	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
359	4	22	\N	Defensor Público de Planta III	AC	29	\N	\N	Defensora Pública de Planta III	\N	\N
360	4	22	\N	Defensor Público de Planta II	AC	25	\N	\N	Defensora Pública de Planta II	\N	\N
361	4	22	\N	Defensor Público de Planta II	AC	23	\N	\N	Defensora Pública de Planta II	\N	\N
362	4	22	\N	Defensor Público de Planta II	AC	23	\N	\N	Defensora Pública de Planta II	\N	\N
363	4	22	\N	Defensor Público de Planta II	AC	14	\N	\N	Defensora Pública de Planta II	\N	\N
364	4	22	\N	Defensor Público de Planta II	AC	27	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
365	4	22	\N	Defensor Público de Planta II	AC	21	\N	Acuerdo 69-2015	Defensora Pública de Planta II	\N	\N
366	4	30	\N	Defensor Público de Planta II	AC	2	\N	\N	Defensora Pública de Planta II	\N	\N
367	4	29	\N	Defensor Público de Planta II	AC	36	\N	\N	Defensora Pública de Planta II	\N	\N
368	4	29	\N	Defensor Público de Planta II	AC	36	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta II	\N	\N
369	4	29	\N	Defensor Público de Planta II	AC	36	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta II	\N	\N
370	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
371	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
372	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
373	10	24	\N	Defensor Público en Pasantía	AC	36	\N	\N	Defensora Pública en Pasantía	\N	\N
374	10	24	\N	Defensor Público en Pasantía	AC	36	\N	\N	Defensora Pública en Pasantía	\N	\N
375	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
376	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
377	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
378	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
379	10	22	\N	Defensor Público en Pasantía	AC	13	\N	\N	Defensora Pública en Pasantía	\N	\N
380	10	22	\N	Defensor Público en Pasantía	AC	24	\N	\N	Defensora Pública en Pasantía	\N	\N
381	10	22	\N	Defensor Público en Pasantía	AC	26	\N	\N	Defensora Pública en Pasantía	\N	\N
382	10	22	\N	Defensor Público en Pasantía	AC	22	\N	\N	Defensora Pública en Pasantía	\N	\N
383	10	22	\N	Defensor Público en Pasantía	AC	11	\N	\N	Defensora Pública en Pasantía	\N	\N
384	11	22	\N	Coordinador Departamental	AC	35	\N	Acuerdo 49-2014	Coordinadora Departamental	\N	\N
385	11	22	\N	Coordinador Departamental	AC	26	\N	\N	Coordinadora Departamental	\N	\N
386	11	22	\N	Coordinador Departamental	AC	8	\N	\N	Coordinadora Departamental	\N	\N
387	11	22	\N	Coordinador Departamental	AC	12	\N	\N	Coordinadora Departamental	\N	\N
388	11	22	\N	Coordinador Departamental	AC	22	\N	\N	Coordinadora Departamental	\N	\N
389	11	22	\N	Coordinador Departamental	AC	34	\N	\N	Coordinadora Departamental	\N	\N
390	11	22	\N	Coordinador Departamental	AC	11	\N	\N	Coordinadora Departamental	\N	\N
391	11	22	\N	Coordinador Departamental	AC	50	\N	Ref.1093-2014-RRHH-CLRP-hbg	Coordinadora Departamental	\N	\N
392	11	22	\N	Coordinador Departamental	AC	17	\N	\N	Coordinadora Departamental	\N	\N
393	11	22	\N	Coordinador Departamental	AC	18	\N	\N	Coordinadora Departamental	\N	\N
394	11	22	\N	Coordinador Departamental	AC	38	\N	\N	Coordinadora Departamental	\N	\N
395	11	22	\N	Coordinador Departamental	AC	10	\N	\N	Coordinadora Departamental	\N	\N
396	11	22	\N	Coordinador Departamental	AC	13	\N	\N	Coordinadora Departamental	\N	\N
397	11	22	\N	Coordinador Municipal	AC	29	\N	\N	Coordinadora Municipal	\N	\N
398	11	22	\N	Coordinador Departamental	AC	33	\N	\N	Coordinadora Departamental	\N	\N
399	11	22	\N	Coordinador Departamental	AC	23	\N	\N	Coordinadora Departamental	\N	\N
400	11	22	\N	Coordinador Municipal	AC	7	\N	\N	Coordinadora Municipal	\N	\N
401	11	22	\N	Coordinador Departamental	AC	32	\N	\N	Coordinadora Departamental	\N	\N
402	11	22	\N	Coordinador Departamental	AC	24	\N	\N	Coordinadora Departamental	\N	\N
403	11	22	\N	Coordinador Departamental	AC	30	\N	\N	Coordinadora Departamental	\N	\N
404	11	22	\N	Coordinador Departamental	AC	19	\N	\N	Coordinadora Departamental	\N	\N
405	11	22	\N	Coordinador Departamental	AC	14	\N	\N	Coordinadora Departamental	\N	\N
406	11	22	\N	Coordinador Departamental	AC	27	\N	\N	Coordinadora Departamental	\N	\N
407	11	22	\N	Coordinador Departamental	AC	41	\N	\N	Coordinadora Departamental	\N	\N
408	215	23	\N	Coordinador Departamental	AC	35	\N	Acuerdo 49-2014	Coordinadora Departamental	\N	\N
409	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
410	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
411	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
412	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
413	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
414	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
415	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
416	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
417	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
418	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
419	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
420	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
421	12	82	\N	Piloto	AC	35	\N	Acuerdo 49-2014	Piloto	\N	\N
422	12	82	\N	Piloto	AC	35	\N	Acuerdo 49-2014	Piloto	\N	\N
423	12	82	\N	Piloto	AC	35	\N	Acuerdo 49-2014	Piloto	\N	\N
428	13	4	\N	Diseñador Gráfico	AC	44	\N	Acuerdo 49-2014	Diseñadora Gráfica	\N	\N
429	8	22	\N	Asistente Administrativo	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
430	8	22	\N	Asistente Administrativo	AC	34	\N	\N	Asistente Administrativa	\N	\N
431	8	22	\N	Asistente Administrativo	AC	27	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
432	8	22	\N	Asistente Administrativo	AC	19	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
433	8	22	\N	Asistente Administrativo	AC	24	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
434	8	22	\N	Asistente Administrativo	AC	7	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
435	8	22	\N	Asistente Administrativo	AC	29	\N	\N	Asistente Adminsitrativo	\N	\N
436	14	1	\N	Director General	AC	35	\N	\N	Directora General	\N	\N
437	15	12	\N	Encargado de Seguimiento Monitoreo Supervisión Administrativo	AC	35	\N	ACUERDO 94-2015	Encargada de Seguimiento Monitoreo Supervisión Administrativa	\N	\N
438	16	1	\N	Jefe del Departamento de Relaciones Internacionales	AC	35	\N	\N	Jefa del Departamento de Relaciones Internacionales	\N	\N
439	17	1	\N	Asistente de Dirección General	AC	35	\N	Acuerdo 49-2014	Asistente de Dirección General	\N	\N
440	17	1	\N	Asistente de Dirección General	AC	35	\N	\N	Asistente de Dirección General	\N	\N
441	18	86	\N	Jefe de la Unidad de Asesoría Jurídica	AC	35	\N	\N	Jefa de la Unidad de Asesoría Jurídica	\N	\N
442	19	5	\N	Jefe de Planificación	AC	44	\N	Acuerdo 49-2014	Jefa de Planificación	\N	\N
443	20	90	\N	Jefe de Información y Estadística	AC	44	\N	Acuerdo 49-2014	Jefa de Información y Estadística	\N	\N
444	21	90	\N	Técnico de Estadística	AC	44	\N	OFICIO 46-2016-RRHH	Técnico de Estadística	\N	\N
445	216	5	\N	Asistente Administrativo	AC	44	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
446	23	6	\N	Jefe de Informática	AC	35	\N	Acuerdo 49-2014	Jefa de Informática	\N	\N
447	24	92	\N	Administrador de Base de Datos	AC	35	\N	Acuerdo 7-98	Administradora Base de Datos	\N	\N
448	25	93	\N	Técnico de Soporte Técnico	AC	35	\N	Acuerdo 49-2014	Técnico de Soporte Técnico	\N	\N
449	26	7	\N	Auditor Interno	AC	35	\N	Acuerdo 49-2014	Auditora Interna	\N	\N
450	27	7	\N	Auditor Auxiliar I	AC	35	\N	Acuerdo 49-2014	Auditora Auxiliar I	\N	\N
451	27	7	\N	Auditor Auxiliar I	AC	35	\N	Acuerdo 49-2014	Auditora Auxiliar I	\N	\N
452	28	7	\N	Auditor	AC	35	\N	\N	Auditora	\N	\N
453	29	7	\N	Auxiliar de Auditoria	AC	35	\N	Acuerdo 49-2014	Auxiliar de Auditoraia	\N	\N
454	30	7	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
455	31	8	\N	Director Administrativo Financiero	AC	35	\N	Acuerdo 49-2014	Directora Administrativa Financiero	\N	\N
456	32	8	\N	Asistente	AC	35	\N	Acuerdo 49-2014	Asistente	\N	\N
457	33	12	\N	Jefe Administrativo	AC	35	\N	Acuerdo 49-2014	Jefa Administrativa	\N	\N
458	34	12	\N	Sub Jefe Administrativo	AC	35	\N	Acuerdo 49-2014	Sub Jefa Administrativa	\N	\N
459	22	12	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
460	22	12	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
461	35	12	\N	Auxiliar Administrativo	AC	35	\N	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
462	36	14	\N	Jefe Sección de Compras	AC	35	\N	Acuerdo 49-2014	Jefa Sección de Compras	\N	\N
463	37	14	\N	Sub Jefe de Compras	AC	35	\N	Acuerdo 49-2014	Sub Jefa de Compras	\N	\N
464	38	14	\N	Auxiliar de Compras	AC	35	\N	\N	Auxiliar de Compras	\N	\N
465	38	14	\N	Auxiliar de Compras	AC	35	\N	\N	Auxiliar de Compras	\N	\N
466	38	14	\N	Auxiliar de Compras	AC	35	\N	\N	Auxiliar de Compras	\N	\N
467	40	15	\N	Jefe Sección de Almacén	AC	35	\N	Acuerdo 49-2014	Jefa Sección de Almacen	\N	\N
468	41	16	\N	Jefe de Cobro y Pago	AC	35	\N	Acuerdo 49-2014	Jefa de Cobro y Pago	\N	\N
469	42	85	\N	Encargado de Mantenimiento	AC	35	\N	Acuerdo 49-2014	Encargada de Mantenimiento	\N	\N
470	43	85	\N	Sub Encargado de Mantenimiento	AC	35	\N	Acuerdo 49-2014	Sub Encargada de Mantenimiento	\N	\N
471	44	85	\N	Encargado de Archivo y Fotocopiadora	AC	35	\N	\N	Encargada de Archivo y Fotocopiadora	\N	\N
473	46	82	\N	Auxiliar de Transportes	AC	35	\N	\N	Auxiliar de Transporte	\N	\N
474	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
475	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
476	3	84	\N	Conserje	AC	35	\N	Acuerdo 49-2014	Conserje	\N	\N
477	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
478	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
479	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
480	47	83	\N	Mensajero	AC	35	\N	Acuerdo 49-2014	Mensajera	\N	\N
481	48	84	\N	Conserje de Dirección General y del Consejo del IDPP	AC	35	\N	\N	Conserje de Dirección General y del Consejo del IDPP	\N	\N
482	49	22	\N	Coordinador Municipal	AC	5	\N	\N	Coordinadora Municipal	\N	\N
483	49	22	\N	Coordinador Municipal	AC	6	\N	\N	Coordinadora Municipal	\N	\N
484	49	22	\N	Coordinador Municipal	AC	4	\N	\N	Coordinadora Municipal	\N	\N
485	50	3	\N	Supervisor	AC	35	\N	\N	Supervisora	\N	\N
486	50	3	\N	Supervisor	AC	35	\N	ACUERDO 104-2015	Supervisora	\N	\N
487	50	3	\N	Supervisor	AC	35	\N	\N	Supervisora	\N	\N
488	50	3	\N	Supervisor	AC	35	\N	\N	Supervisora	\N	\N
489	50	3	\N	Supervisor	AC	35	\N	\N	Supervisora	\N	\N
491	51	25	\N	Coordinador Unidad de Apoyo Técnico	AC	43	\N	\N	Coordinadora Unidad de Apoyo Técnico	\N	\N
492	52	30	\N	Coordinador Nacional de Ejecución	AC	2	\N	OFICIO 46-2016-RRHH	Coordinadora Nacional de Ejecución	\N	\N
493	53	13	\N	Jefe Departamento Financiero	AC	35	\N	Acuerdo 49-2014	Jefa Departamento Financiero	\N	\N
494	54	18	\N	Jefe de Presupuesto	AC	35	\N	Acuerdo 49-2014	Jefa de Presupuesto	\N	\N
495	55	18	\N	Auxiliar de Presupuesto	AC	35	\N	\N	Auxiliar de Presupuesto	\N	\N
496	56	19	\N	Jefe de Contabilidad	AC	35	\N	Acuerdo 49-2014	Jefa de Contabilidad	\N	\N
497	39	19	\N	Auxiliar de Contabilidad	AC	35	\N	\N	Auxiliar de Contabilidad	\N	\N
498	39	19	\N	Auxiliar de Contabilidad	AC	35	\N	\N	Auxiliar de Contabilidad	\N	\N
499	57	21	\N	Auxiliar de Inventarios	AC	35	\N	Acuerdo 49-2014	Auxiliar de Inventarios	\N	\N
500	57	21	\N	Auxiliar de Inventarios	AC	35	\N	\N	Auxiliar de Inventarios	\N	\N
501	58	20	\N	Jefe Sección de Tesorería	AC	35	\N	Acuerdo 49-2014	Jefa Sección de Tesorería	\N	\N
502	59	20	\N	Auxiliar de Tesorería	AC	35	\N	\N	Auxiliar de Tesorería	\N	\N
503	59	20	\N	Auxiliar de Tesorería	AC	35	\N	Acuerdo 49-2014	Auxiliar de Tesorería	\N	\N
504	60	20	\N	Encargado de Fondo Rotativo Institucional	AC	35	\N	Acuerdo 49-2014	Encargada de Fondo Rotativo Institucional	\N	\N
505	61	10	\N	Director De La División Ejecutiva y De Recursos Humanos	AC	35	\N	Acuerdo 49-2014	Directora De La División Ejecutiva y De Recursos Humanos	\N	\N
506	62	10	\N	Asistente de División	AC	35	\N	\N	Asistente de División	\N	\N
507	63	32	\N	Jefe del Departamento de Desarrollo Organizacional	AC	35	\N	\N	Jefa del Departamento de Desarrollo Organizacional	\N	\N
508	64	34	\N	Jefe de Sección de Administración de Personal	AC	35	\N	\N	Jefa de Sección de Administración de Personal	\N	\N
509	30	32	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
511	65	29	\N	Coordinador Nacional de Impugnaciones	AC	36	\N	OFICIO 46-2016-RRHH	Coordinadora Nacional de Impugnaciones	\N	\N
512	66	27	\N	Coordinador Enfoque de Género	AC	36	\N	Acuerdo 49-2014	Coordinadora Enfoque de Género	\N	\N
513	4	26	\N	Defensor Público de Planta II	AC	1	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
514	4	26	\N	Defensor Público de Planta II	AC	1	\N	\N	Defensora Pública de Planta II	\N	\N
515	4	26	\N	Defensor Público de Planta II	AC	1	\N	\N	Defensora Pública de Planta II	\N	\N
516	67	26	\N	Coordinador Nacional de Adolescentes en Conflicto Con la Ley Penal	AC	1	\N	\N	Coordinadora Nacional de Adolescentes en Conflicto Con la Ley Penal	\N	\N
517	68	28	\N	Intérprete	AC	8	\N	\N	Interprete	\N	\N
518	1	28	\N	Asistente de Abogado	AC	8	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
519	1	28	\N	Asistente de Abogado	AC	27	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
520	68	28	\N	Intérprete	AC	23	\N	\N	Interprete	\N	\N
521	4	28	\N	Defensor Público de Planta I	AC	23	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
522	68	28	\N	Intérprete	AC	33	\N	\N	Interprete	\N	\N
523	1	28	\N	Asistente de Abogado	AC	31	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
524	1	28	\N	Asistente de Abogado	AC	31	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
525	4	28	\N	Defensor Público de Planta I	AC	31	\N	\N	Defensora Pública de Planta I	\N	\N
526	4	28	\N	Defensor Público de Planta I	AC	10	\N	\N	Defensora Pública de Planta I	\N	\N
527	32	22	\N	Asistente Administrativo	AC	8	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
528	214	9	\N	Defensor Público de Planta II	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
529	4	9	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
531	69	4	\N	Jefe de Formación y Capacitación	AC	44	\N	\N	Jefa de Formación y Capacitación	\N	\N
532	70	4	\N	Capacitador Tutor	AC	44	\N	\N	Capacitadora Tutora	\N	\N
533	71	4	\N	Asistente de Biblioteca	AC	44	\N	Acuerdo 49-2014	Asistente de Biblioteca	\N	\N
534	72	3	\N	Jefe de Supervisión General	AC	35	\N	Acuerdo 49-2014	Jefa de Supervisión General	\N	\N
535	73	22	\N	Sub Coordinador Departamental	AC	35	\N	Acuerdo 49-2014	Sub Coordinadora Departamental	\N	\N
536	74	22	\N	Asistente Notificaciones	AC	35	\N	Acuerdo 49-2014	Asistente Notificaciones	\N	\N
537	75	87	\N	Coordinador Nacional de Derechos Humanos	AC	35	\N	Acuerdo 49-2014	Coordinadora Nacional de Derechos Humanos	\N	\N
538	76	24	\N	Coordinador Defensores Públicos en Formación	AC	36	\N	Acuerdo 49-2014	Coordinadora Defensores Públicas en Formación	\N	\N
539	1	87	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
540	1	9	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
541	77	24	\N	Sub Coordinador Defensores Públicos en Formación (Defensor Público de Planta II)	AC	36	\N	\N	Sub Coordinadora Defensores Públicas en Formación (Defensora Pública de Planta II)	\N	\N
543	79	34	\N	Auxiliar de Recursos Humanos	AC	35	\N	96-2012	Auxiliar de Recursos Humanos	\N	\N
544	4	88	\N	Defensor Público de Planta I	AC	35	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
545	80	31	\N	Jefe del Departamento de Administración de Recursos Humanos	AC	35	\N	\N	Jefa del Departamento de Administración de Recursos Humanos	\N	\N
546	1	22	\N	Asistente de Abogado	AC	24	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
547	82	34	\N	Encargado de Nóminas y Planillas del Renglón 011	AC	35	\N	Acuerdo 49-2014	Encargada de Nominas y Planillas del Renglón 011	\N	\N
548	4	30	\N	Defensor Público de Planta I	AC	2	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta I	\N	\N
549	83	34	\N	Encargado de Nóminas y Planillas del Renglón 022	AC	35	\N	97-2012	Encargada de Nominas y Planillas del Renglón 022	\N	\N
551	4	4	\N	Defensor Público de Planta I	AC	44	\N	ACUERDO 104-2015	Defensora Pública de Planta I	\N	\N
552	217	3	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
553	78	3	\N	Asistente de Supervisión	AC	35	\N	Acuerdo 49-2014	Asistente de Supervision	\N	\N
556	86	9	\N	Supervisor del Siadep	AC	35	\N	\N	Supervisora del Siadep	\N	\N
557	87	81	\N	Coordinador	AC	45	\N	Acuerdo 49-2014	Coordinadora	\N	\N
558	88	81	\N	Encargado del Área de Psicología y Trabajo Social	AC	45	\N	Acuerdo 49-2014	Encargada del Área de Psicologia y Trabajo Social	\N	\N
559	89	81	\N	Auxiliar	AC	45	\N	Acuerdo 49-2014	Auxiliar	\N	\N
560	90	104	\N	Encargado de la Unidad de Recepción de Documentos	AC	35	\N	Acuerdo 49-2014	Encargada de la Unidad de Recepción de Documentos	\N	\N
561	91	22	\N	Conserje y Encargado de Seguridad	AC	8	\N	\N	Conserje y Encargada de Seguridad	\N	\N
562	22	23	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
563	4	22	\N	Defensor Público de Planta I y Responsable de Sede	AC	49	\N	Acuerdo 49-2014	Defensora Pública de Planta I y Responsable de Sede	\N	\N
564	70	4	\N	Capacitador Tutor	AC	44	\N	Acuerdo 49-2014	Capacitadora Tutora	\N	\N
565	70	4	\N	Capacitador Tutor	AC	44	\N	OFICIO 46-2016-RRHH	Capacitadora Tutora	\N	\N
566	7	105	\N	Trabajador Social II	AC	43	\N	Acuerdo 57-2014	Trabajadora Social II	\N	\N
567	30	24	\N	Secretario	AC	36	\N	Acuerdo 49-2014	Secretaria	\N	\N
568	4	81	\N	Defensor Público de Planta I	AC	45	\N	\N	Defensora Pública de Planta I	\N	\N
569	4	81	\N	Defensor Público de Planta I	AC	45	\N	\N	Defensora Pública de Planta I	\N	\N
647	98	23	\N	Analista de Información	AC	35	\N	Oficio 50-2014-rrhh-clrp	Analista de Información	\N	\N
570	81	35	\N	Jefe de la Sección de Desarrollo de Personal	AC	35	\N	SOLICITUD DE INFORMATICA	Jefa de la Sección de Desarrollo de Personal	\N	\N
574	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
575	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
576	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
577	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
578	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
579	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
580	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
581	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
582	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
583	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
584	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
585	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
586	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
587	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
588	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
589	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
590	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
591	1	24	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
592	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
593	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
594	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
595	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
596	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
597	1	22	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
598	1	22	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
599	1	22	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
600	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
601	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
602	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
603	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
604	92	23	\N	Abogado de Enlace	AC	38	\N	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
605	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
606	178	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
607	5	16	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
608	5	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
609	5	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
610	178	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
611	5	11	\N	Auxiliar	AC	2	\N	\N	Auxiliar	\N	\N
612	178	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
613	5	11	\N	Auxiliar	AC	2	\N	\N	Auxiliar	\N	\N
614	178	11	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
615	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
616	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
617	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
618	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
619	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
620	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
621	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
622	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
623	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
624	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
625	93	25	\N	Psicólogo	AC	43	\N	\N	Psicóloga	\N	\N
626	93	106	\N	Psicólogo	AC	43	\N	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
627	93	106	\N	Psicólogo	AC	43	\N	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
628	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
629	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
630	94	94	\N	Técnico en Redes y Telecomunicaciones	AC	35	\N	\N	Técnico en Redes y Telecomunicaciones	\N	\N
631	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
632	94	93	\N	Técnico en Informática	AC	35	\N	\N	Técnico en Informática	\N	\N
633	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
634	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
635	95	85	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
636	95	85	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
637	95	85	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
638	96	21	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
639	96	21	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
640	96	21	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
641	97	86	\N	Asesor Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora Jurídica	\N	\N
642	97	86	\N	Asesor Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora Jurídica	\N	\N
643	97	86	\N	Asesor Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora Jurídica	\N	\N
644	1	9	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
645	1	9	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
646	1	9	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
648	98	23	\N	Analista de Información	AC	35	\N	\N	Analista de Información	\N	\N
649	98	23	\N	Analista de Información	AC	35	\N	\N	Analista de Información	\N	\N
650	4	81	\N	Defensor Público en Formación II	AC	45	\N	\N	Defensora Pública en Formación II	\N	\N
651	4	81	\N	Defensor Público en Formación II	AC	45	\N	\N	Defensora Pública en Formación II	\N	\N
652	4	81	\N	Defensor Público en Formación II	AC	45	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
653	99	81	\N	Operador Jurídico	AC	35	\N	\N	Operadora Jurídica	\N	\N
654	99	81	\N	Operador Jurídico	AC	35	\N	\N	Operadora Jurídica	\N	\N
655	99	81	\N	Operador Jurídico	AC	35	\N	\N	Operadora Jurídica	\N	\N
656	99	81	\N	Operador Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
657	99	81	\N	Operador Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
658	99	81	\N	Operador Jurídico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
659	5	11	\N	Auxiliar	AC	46	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
660	5	11	\N	Auxiliar	AC	46	\N	Mal creado	Auxiliar	\N	\N
661	5	11	\N	Auxiliar	AC	46	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
662	5	11	\N	Auxiliar	AC	46	\N	Mal creado	Auxiliar	\N	\N
663	3	26	\N	Conserje	AC	1	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
664	3	22	\N	Conserje	AC	5	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
665	3	22	\N	Conserje	AC	4	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
666	3	22	\N	Conserje	AC	6	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
667	3	22	\N	Conserje	AC	12	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
668	3	22	\N	Conserje	AC	38	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
669	3	22	\N	Conserje	AC	10	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
670	3	22	\N	Conserje	AC	13	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
671	3	22	\N	Conserje	AC	29	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
672	3	22	\N	Conserje	AC	9	\N	\N	Conserje	\N	\N
673	3	22	\N	Conserje	AC	31	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
674	3	22	\N	Conserje	AC	25	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
675	3	22	\N	Conserje	AC	33	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
676	3	22	\N	Conserje	AC	23	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
677	3	22	\N	Conserje	AC	7	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
678	3	22	\N	Conserje	AC	32	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
679	3	84	\N	Conserje	AC	32	\N	\N	Conserje	\N	\N
680	3	22	\N	Conserje	AC	24	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
681	3	22	\N	Conserje	AC	30	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
682	3	22	\N	Conserje	AC	19	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
683	3	22	\N	Conserje	AC	14	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
684	3	22	\N	Conserje	AC	49	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
685	3	22	\N	Conserje	AC	28	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
686	3	22	\N	Conserje	AC	27	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
687	3	22	\N	Conserje	AC	20	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
688	3	22	\N	Conserje	AC	16	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
689	3	22	\N	Conserje	AC	26	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
690	3	22	\N	Conserje	AC	41	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
691	3	22	\N	Conserje	AC	42	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
692	3	22	\N	Conserje	AC	21	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
693	3	22	\N	Conserje	AC	22	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
694	3	22	\N	Conserje	AC	34	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
695	3	22	\N	Conserje	AC	17	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
696	3	22	\N	Conserje	AC	18	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
697	100	105	\N	Técnico en Trabajo Social	AC	43	\N	\N	Técnico en Trabajo Social	\N	\N
698	100	105	\N	Técnico en Trabajo Social	AC	43	\N	Oficio 50-2014-rrhh-clrp	Técnico en Trabajo Social	\N	\N
699	100	105	\N	Técnico en Trabajo Social	AC	9	\N	\N	Técnico en Trabajo Social	\N	\N
700	100	105	\N	Técnico en Trabajo Social	AC	27	\N	Oficio 50-2014-rrhh-clrp	Técnico en Trabajo Social	\N	\N
701	100	105	\N	Técnico en Trabajo Social	AC	14	\N	\N	Técnico en Trabajo Social	\N	\N
702	100	81	\N	Técnico en Trabajo Social	AC	23	\N	\N	Técnico en Trabajo Social	\N	\N
703	101	5	\N	Asistente de Organización y Métodos	AC	44	\N	\N	Asistente de Organización y Metodos	\N	\N
704	102	97	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
705	103	90	\N	Analista de Información	AC	44	\N	\N	Analista de Información	\N	\N
706	104	6	\N	Recepcionista de Planta Telefónica	AC	35	\N	\N	Recepcionista de Planta Telefonica	\N	\N
707	105	93	\N	Auxiliar Técnico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Técnico	\N	\N
708	93	106	\N	Psicólogo	AC	43	\N	\N	Psicóloga	\N	\N
709	93	106	\N	Psicólogo	AC	23	\N	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
710	93	81	\N	Psicólogo	AC	45	\N	\N	Psicóloga	\N	\N
711	93	81	\N	Psicólogo	AC	23	\N	\N	Psicóloga	\N	\N
712	68	22	\N	Intérprete	AC	30	\N	\N	Interprete	\N	\N
713	68	22	\N	Intérprete	AC	15	\N	\N	Interprete	\N	\N
714	68	22	\N	Intérprete	AC	28	\N	\N	Interprete	\N	\N
715	68	22	\N	Intérprete	AC	20	\N	Oficio 50-2014-rrhh-clrp	Interprete	\N	\N
716	68	22	\N	Intérprete	AC	27	\N	\N	Interprete	\N	\N
717	68	28	\N	Intérprete	AC	22	\N	\N	Interprete	\N	\N
718	68	28	\N	Intérprete	AC	11	\N	Oficio 50-2014-rrhh-clrp	Interprete	\N	\N
719	1	22	\N	Asistente de Abogado	AC	17	\N	\N	Asistente de Abogado	\N	\N
720	5	22	\N	Auxiliar	AC	18	\N	\N	Auxiliar	\N	\N
721	4	22	\N	Defensor Público en Formación I	AC	13	\N	\N	Defensora Pública en Formación I	\N	\N
722	4	22	\N	Defensor Público en Formación I	AC	23	\N	\N	Defensora Pública en Formación I	\N	\N
723	4	22	\N	Defensor Público en Formación I	AC	35	\N	\N	Defensora Pública en Formación I	\N	\N
724	4	81	\N	Defensor Público en Formación I	AC	35	\N	\N	Defensora Pública en Formación I	\N	\N
1668	1	22	\N	Asistente de Abogado	AC	49	\N	\N	Asistente de Abogado	\N	\N
725	4	81	\N	Defensor Público en Formación I	AC	45	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
726	4	81	\N	Defensor Público en Formación I	AC	35	\N	\N	Defensora Pública en Formación I	\N	\N
727	4	81	\N	Defensor Público Intercultural	AC	45	\N	\N	Defensora Pública Intercultural	\N	\N
728	1	26	\N	Asistente de Abogado	AC	1	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
729	8	24	\N	Asistente Administrativo	AC	36	\N	\N	Asistente Administrativa	\N	\N
730	8	24	\N	Asistente Administrativo	AC	36	\N	\N	Asistente Administrativa	\N	\N
731	8	24	\N	Asistente Administrativo	AC	36	\N	\N	Asistente Administrativa	\N	\N
732	4	24	\N	Defensor Público en Formación I	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
733	30	6	\N	Secretario	AC	35	\N	Oficio 50-2014-rrhh-clrp	Secretaria	\N	\N
734	109	91	\N	Secretario	AC	35	\N	\N	Secretaria	\N	\N
735	30	31	\N	Recepcionisto	AC	35	\N	\N	Recepcionista	\N	\N
736	110	31	\N	Secretario	AC	35	\N	\N	Secretaria	\N	\N
737	111	33	\N	Secretario	AC	35	\N	Oficio 50-2014-rrhh-clrp	Secretaria	\N	\N
738	30	4	\N	Secretario	AC	44	\N	\N	Secretaria	\N	\N
739	30	81	\N	Secretario	AC	45	\N	Oficio 50-2014-rrhh-clrp	Secretaria	\N	\N
740	4	22	\N	Defensor Público en Formación I	AC	11	\N	\N	Defensora Pública en Formación I	\N	\N
741	30	95	\N	Secretario Administrativo	AC	35	\N	\N	Secretaria Administrativa	\N	\N
742	1	22	\N	Asistente de Abogado	AC	22	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
743	4	22	\N	Defensor Público en Formación I	AC	21	\N	\N	Defensora Pública en Formación I	\N	\N
744	4	22	\N	Defensor Público en Formación III	AC	8	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
745	4	28	\N	Defensor Público Intercultural	AC	16	\N	\N	Defensora Pública Intercultural	\N	\N
746	4	28	\N	Defensor Público Intercultural	AC	20	\N	\N	Defensora Pública Intercultural	\N	\N
747	4	22	\N	Defensor Público Intercultural	AC	27	\N	\N	Defensora Pública Intercultural	\N	\N
748	30	3	\N	Asistente Administrativo	AC	35	\N	\N	Asistente Adminstrativo	\N	\N
749	1	22	\N	Asistente de Abogado	AC	49	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
750	92	23	\N	Abogado de Enlace	AC	13	\N	\N	Abogada de Enlace	\N	\N
751	92	23	\N	Abogado de Enlace	AC	13	\N	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
752	8	22	\N	Secretario Administrativo	AC	13	\N	\N	Secretaria Administrativa	\N	\N
753	8	22	\N	Asistente de Administrativo	AC	10	\N	\N	Asistente de Administrativo	\N	\N
754	5	11	\N	Auxiliar	AC	48	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
755	92	23	\N	Abogado de Enlace	AC	48	\N	\N	Abogada de Enlace	\N	\N
756	1	22	\N	Auxiliar Administrativo	AC	38	\N	\N	Auxiliar Administrativa	\N	\N
757	30	12	\N	Recepcionisto	AC	35	\N	\N	Recepcionista	\N	\N
758	1	26	\N	Asistente de Abogado	AC	1	\N	\N	Asistente de Abogado	\N	\N
759	114	22	\N	Auxiliar Administrativo	AC	19	\N	\N	Auxiliar Administrativa	\N	\N
760	8	24	\N	Asistente Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
761	8	24	\N	Asistente Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
762	114	29	\N	Auxiliar Administrativo	AC	36	\N	\N	Auxiliar Administrativa	\N	\N
763	8	24	\N	Asistente Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
764	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
765	4	81	\N	Defensor Público en Formación I	AC	35	\N	\N	Defensora Pública en Formación I	\N	\N
766	4	81	\N	Defensor Público en Formación I	AC	35	\N	\N	Defensora Pública en Formación I	\N	\N
767	4	81	\N	Defensor Público en Formación II	AC	5	\N	\N	Defensora Pública en Formación II	\N	\N
768	4	81	\N	Defensor Público en Formación II	AC	45	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
769	4	22	\N	Defensor Público en Formación I	AC	35	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
770	117	23	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
771	117	23	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
772	116	81	\N	Técnico Administrativo	AC	45	\N	\N	Técnico Administrativa	\N	\N
773	114	81	\N	Auxiliar Administrativo	AC	45	\N	\N	Auxiliar Administrativa	\N	\N
774	119	22	\N	Auxiliar de Sedes Policiales	AC	23	\N	\N	Auxiliar de Sedes Policiales	\N	\N
775	6	81	\N	Trabajador Social	AC	8	\N	\N	Trabajadora Social	\N	\N
776	108	81	\N	Asistente de Psicología	AC	13	\N	\N	Asistente de Psicologia	\N	\N
777	107	81	\N	Asistente de Trabajo Social	AC	45	\N	\N	Asistente de Trabajo Social	\N	\N
778	108	106	\N	Asistente de Psicología	AC	43	\N	Oficio 50-2014-rrhh-clrp	Asistente de Psicologia	\N	\N
779	107	105	\N	Asistente de Trabajo Social	AC	43	\N	\N	Asistente de Trabajo Social	\N	\N
780	68	22	\N	Intérprete	AC	10	\N	Oficio 50-2014-rrhh-clrp	Interprete	\N	\N
781	121	4	\N	Capacitador Metodólogo	AC	44	\N	\N	Capacitadora Metodologa	\N	\N
782	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
783	123	98	\N	Auxiliar de Seguridad	AC	35	\N	\N	Auxiliar de Seguridad	\N	\N
784	46	82	\N	Auxiliar de Transportes	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar de Transportes	\N	\N
785	115	15	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
786	122	12	\N	Asistente de Monitoreo	AC	35	\N	\N	Asistente de Monitoreo	\N	\N
787	120	91	\N	Relacionista Público	AC	35	\N	\N	Relacionista Pública	\N	\N
788	24	92	\N	Administrador de Base de Datos	AC	35	\N	\N	Administradora de Base de Datos	\N	\N
789	113	92	\N	Programador Senior	AC	35	\N	Oficio 50-2014-rrhh-clrp	Programadora Senior	\N	\N
790	118	92	\N	Web Master	AC	35	\N	\N	Web Master	\N	\N
791	113	92	\N	Programador	AC	35	\N	Oficio 50-2014-rrhh-clrp	Programadora	\N	\N
792	105	94	\N	Auxiliar de Redes y Telecomunicaciones	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar de Redes y Telecomunicaciones	\N	\N
793	112	93	\N	Técnico Experto	AC	35	\N	\N	Técnico Experta	\N	\N
794	125	4	\N	Asistente de Logística	AC	44	\N	Oficio 50-2014-rrhh-clrp	Asistente de Logistica	\N	\N
795	124	10	\N	Asistente Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
796	124	10	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
797	126	34	\N	Psicólogo Clínico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Psicóloga Clinica	\N	\N
798	129	10	\N	Asesor	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora	\N	\N
799	128	83	\N	Mensajero Interno	AC	35	\N	\N	Mensajera Interna	\N	\N
800	130	12	\N	Auxiliar de Reproducción de Materiales	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar de Reproducción de Materiales	\N	\N
801	131	8	\N	Técnico Administrativo	AC	35	\N	\N	Técnico Administrativa	\N	\N
802	133	8	\N	Experto Administrativo Financiera	AC	35	\N	\N	Experta Administrativa Financiera	\N	\N
803	89	81	\N	Auxiliar	AC	8	\N	\N	Auxiliar	\N	\N
804	135	95	\N	Consultor de Relaciones Internacionales	AC	35	\N	\N	Consultora de Relaciones Internacionales	\N	\N
805	136	95	\N	Asesor Especifica en Planificación Estratégica	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora Especifica en Planificación Estrategica	\N	\N
806	132	5	\N	Asesor	AC	44	\N	\N	Asesora	\N	\N
807	134	5	\N	Asistente de Proyectos	AC	44	\N	\N	Asistente de Proyectos	\N	\N
808	30	25	\N	Secretario Recepcionista	AC	35	\N	\N	Secretaria Recepcionista	\N	\N
809	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
810	30	12	\N	Secretario SubJefetura	AC	35	\N	\N	Secretaria Subjefatura	\N	\N
811	4	22	\N	Defensor Público en Formación II	AC	41	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
812	4	22	\N	Defensor Público en Formación II	AC	28	\N	\N	Defensora Pública en Formación II	\N	\N
813	4	22	\N	Defensor Público en Formación I	AC	32	\N	\N	Defensora Pública en Formación I	\N	\N
814	10	22	\N	Defensor Público en Pasantía	AC	9	\N	\N	Defensora Pública en Pasantía	\N	\N
815	4	22	\N	Defensor Público en Formación II	AC	29	\N	\N	Defensora Pública en Formación II	\N	\N
816	3	22	\N	Conserje Interino	AC	13	\N	\N	Conserje Interina	\N	\N
817	1	22	\N	Asistente de Abogado	AC	5	\N	\N	Asistente de Abogado	\N	\N
818	4	22	\N	Defensor Público en Formación I	AC	5	\N	\N	Defensora Pública en Formación I	\N	\N
819	1	26	\N	Asistente de Abogado	AC	1	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
820	1	26	\N	Asistente de Abogado	AC	1	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
821	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
822	152	86	\N	Asesor Laboral	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asesora Laboral	\N	\N
823	5	11	\N	Auxiliar	AC	48	\N	\N	Auxiliar	\N	\N
824	5	11	\N	Auxiliar	AC	46	\N	\N	Auxiliar	\N	\N
825	154	106	\N	Psiquiatra	AC	43	\N	Oficio 50-2014-rrhh-clrp	Psiquiatra	\N	\N
826	153	81	\N	Experto Enlace	AC	45	\N	\N	Experta Enlace	\N	\N
827	4	22	\N	Defensor Público en Formación I	AC	13	\N	\N	Defensora Pública en Formación I	\N	\N
828	155	27	\N	Consultor	AC	36	\N	Oficio 50-2014-rrhh-clrp	Consultora	\N	\N
829	156	28	\N	Técnico Intercultural	AC	45	\N	\N	Técnico Intercultural	\N	\N
830	157	28	\N	Experto Intercultural	AC	35	\N	\N	Experta Intercultural	\N	\N
831	158	30	\N	Auxiliar	AC	2	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
832	151	90	\N	Asistente de Estadística	AC	44	\N	Acuerdo 49-2014	Asistente de Estadística	\N	\N
833	137	95	\N	Asistente de Cooperación Internacional y Proyectos	AC	35	\N	Acuerdo 49-2014	Asistente de Cooperación Internacional y Proyectos	\N	\N
835	139	93	\N	Supervisor y Técnico en Soporte y Mantenimiento	AC	35	\N	Acuerdo 49-2014	Supervisora y Técnico en Soporte y Mantenimiento	\N	\N
836	25	6	\N	Técnico en Soporte y Mantenimiento	AC	35	\N	Acuerdo 49-2014	Técnico en Soporte y Mantenimiento	\N	\N
837	25	93	\N	Técnico en Soporte y Mantenimiento	AC	35	\N	Acuerdo 49-2014	Técnico en Soporte y Mantenimiento	\N	\N
838	140	94	\N	Coordinador de Telecomunicaciones y Seguridad	AC	35	\N	Acuerdo 49-2014	Coordinadora de Telecomunicaciones y Seguridad	\N	\N
839	141	92	\N	Coordinador	AC	35	\N	Acuerdo 49-2014	Coordinadora	\N	\N
840	113	92	\N	Programador de Informática	AC	35	\N	Acuerdo 49-2014	Programadora de Informatica	\N	\N
841	32	8	\N	Asistente	AC	35	\N	Acuerdo 49-2014	Asistente	\N	\N
843	9	12	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administativo	\N	\N
844	142	30	\N	Auxiliar Administrativo	AC	35	\N	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
845	4	22	\N	Defensor Público de Planta I	AC	8	\N	\N	Defensora Pública de Planta I	\N	\N
846	4	22	\N	Defensor Público de Planta I	AC	30	\N	\N	Defensora Pública de Planta I	\N	\N
847	4	81	\N	Defensor Público de Planta II	AC	45	\N	Acuerdo 67-2015	Defensora Pública de Planta II	\N	\N
848	7	105	\N	Trabajador Social II	AC	11	\N	\N	Trabajadora Social II	\N	\N
849	7	105	\N	Trabajador Social II	AC	18	\N	Acuerdo 59-2014	Trabajadora Social II	\N	\N
850	12	82	\N	Piloto	AC	35	\N	\N	Piloto	\N	\N
851	143	17	\N	Jefe de Sección de Servicios Generales	AC	35	\N	Acuerdo 49-2014	Jefa de Sección de Servicios Generales	\N	\N
853	95	85	\N	Auxiliar de Mantenimiento	AC	35	\N	Acuerdo 49-2014	Auxiliar de Mantenimiento	\N	\N
854	47	83	\N	Mensajero	AC	35	\N	Acuerdo 49-2014	Mensajera	\N	\N
856	145	21	\N	Encargado de Inventarios	AC	35	\N	Acuerdo 49-2014	Encargada de Inventarios	\N	\N
859	79	34	\N	Auxiliar de Recursos Humanos	AC	35	\N	Acuerdo 49-2014	Auxiliar de Recursos Humanos	\N	\N
860	1	88	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
861	148	22	\N	Asistente Administrativo Financiero	AC	11	\N	\N	Asistente Administrativa Financiero	\N	\N
863	148	22	\N	Asistente Administrativo Financiero	AC	23	\N	Acuerdo 49-2014	Asistente Administrativa Financiero	\N	\N
864	148	22	\N	Asistente Administrativo Financiero	AC	16	\N	Acuerdo 49-2014	Asistente Administrativa Financiero	\N	\N
865	148	22	\N	Asistente Administrativo Financiero	AC	41	\N	Acuerdo 49-2014	Asistente Administrativa Financiero	\N	\N
866	150	23	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
867	30	25	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
868	8	22	\N	Asistente Administrativo	AC	17	\N	\N	Asistente Administrativa	\N	\N
869	159	90	\N	Asistente de Planificación	AC	44	\N	Acuerdo 49-2014	Asistente de Planificacion	\N	\N
870	1	26	\N	Asistente de Abogado	AC	1	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
873	162	5	\N	Experto Financiero de Programas de Cooperación Internacional	AC	44	\N	\N	Experta Financiero de Programas de Cooperación Internacional	\N	\N
874	4	30	\N	Defensor Público en Formación II	AC	2	\N	\N	Defensora Pública en Formación II	\N	\N
875	1	22	\N	Asistente de Abogado	AC	32	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
876	1	29	\N	Asistente de Abogado	AC	36	\N	\N	Asistente de Abogado	\N	\N
878	164	88	\N	Jefe del Departamento de Carrera Institucional	AC	35	\N	\N	Jefa del Departamento de Carrera Institucional	\N	\N
879	85	9	\N	Subdirector	AC	35	\N	Acuerdo 49-2014	SubDirectora	\N	\N
880	84	9	\N	Director de la División	AC	35	\N	Acuerdo 49-2014	Directora de la Division	\N	\N
881	45	82	\N	Jefe de Sección de Transportes	AC	35	\N	\N	Jefa de Sección de Transportes	\N	\N
882	1	30	\N	Asistente de Abogado	AC	2	\N	SOLICITUD DE INFORMATICA	Asistente de Abogado	\N	\N
883	244	11	\N	Auxiliar	AC	2	\N	Acuerdo 49-2014	Auxiliar	\N	\N
885	67	26	\N	Defensor Público de Planta I	AC	1	\N	\N	Defensora Pública de Planta Adolescentes I	\N	\N
886	1	88	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
887	219	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
888	161	98	\N	Encargado de Seguridad	AC	35	\N	\N	Encargada de Seguridad	\N	\N
889	91	98	\N	Auxiliar de Seguridad	AC	35	\N	Acuerdo 49-2014	Auxiliar de Seguridad	\N	\N
891	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
892	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
893	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
894	30	12	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
895	30	13	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
896	59	20	\N	Auxiliar de Tesorería	AC	35	\N	\N	Auxiliar de Tesorería	\N	\N
897	165	33	\N	Jefe de Admisión de Personal	AC	35	\N	Acuerdo 49-2014	Jefa de Admisión de Personal	\N	\N
898	160	12	\N	Asistente y Revisor del Área Administrativa	AC	35	\N	\N	Asistente y Revisora del Área Administrativa	\N	\N
900	4	22	\N	Defensor Público de Planta II	AC	35	\N	\N	Defensora Pública de Planta II	\N	\N
906	7	105	\N	Trabajador Social I	AC	4	\N	SOLICITUD DE INFORMATICA	Trabajadora Social I	\N	\N
912	168	17	\N	Auxiliar Administrativo	AC	35	\N	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
913	138	93	\N	Coordinador de Soporte Técnico (en Funciones)	AC	35	\N	\N	Coordinadora de Soporte Técnico (en Funciones)	\N	\N
915	170	92	\N	Sub-Coordinador	AC	35	\N	Acuerdo 49-2014	Sub-Coordinadora	\N	\N
916	23	6	\N	Jefe de Informática	AC	35	\N	Acuerdo 49-2014	Jefa de Informática	\N	\N
917	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
918	25	93	\N	Técnico de Soporte y Mantenimiento	AC	35	\N	\N	Técnico de Soporte y Mantenimiento	\N	\N
919	171	22	\N	Asistente Administrativo Financiero	AC	13	\N	\N	Asistente Administrativa Financiero	\N	\N
920	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
921	1	29	\N	Asistente de Abogado	AC	36	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
922	4	29	\N	Defensor Público de Planta I	AC	36	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta I	\N	\N
923	4	81	\N	Defensor Público de Planta II	AC	45	\N	Acuerdo 117-2012 y a solicitud de informatica 	Defensora Pública de Planta II	\N	\N
924	4	22	\N	Defensor Público de Planta I	AC	13	\N	\N	Defensora Pública de Planta I	\N	\N
925	172	103	\N	Encargado de la Oficina de Información Público	AC	35	\N	Acuerdo 49-2014	Encargada de la Oficina de Información Pública	\N	\N
931	4	22	\N	Defensor Público en Formación I	AC	34	\N	\N	Defensora Pública en Formación I	\N	\N
932	4	28	\N	Facilitador	AC	45	\N	\N	Facilitadora	\N	\N
933	4	81	\N	Facilitador	AC	45	\N	\N	Facilitadora	\N	\N
934	173	88	\N	Facilitador	AC	35	\N	\N	Facilitadora	\N	\N
935	174	88	\N	Asistente	AC	35	\N	\N	Asistente	\N	\N
936	8	22	\N	Asistente Administrativo	AC	32	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
937	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
938	4	22	\N	Defensor Público en Formación I	AC	17	\N	\N	Defensora Pública en Formación I	\N	\N
939	113	92	\N	Programador	AC	35	\N	Oficio 50-2014-rrhh-clrp	Programadora	\N	\N
940	175	22	\N	Médico Personal	AC	35	\N	\N	Medico Personal	\N	\N
941	115	15	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
942	4	24	\N	Abogado Enlace	AC	36	\N	\N	Abogada Enlace	\N	\N
943	114	23	\N	Auxiliar Administrativo	AC	8	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
944	114	22	\N	Auxiliar Administrativo	AC	12	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
945	10	22	\N	Defensor Público en Pasantía	AC	13	\N	\N	Defensora Pública en Pasantía	\N	\N
946	1	81	\N	Asistente de Abogado Itinerante	AC	23	\N	\N	Asistente de Abogado Itinerante	\N	\N
947	8	22	\N	Asistente Administrativo Intercultural	AC	26	\N	\N	Asistente Administrativa Intercultural	\N	\N
948	4	22	\N	Defensor Público en Formación III	AC	13	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
949	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
950	176	5	\N	Consultor	AC	44	\N	\N	Consultora	\N	\N
951	10	24	\N	Defensor Público en Pasantía	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
952	10	24	\N	Defensor Público en Pasantía	AC	36	\N	\N	Defensora Pública en Pasantía	\N	\N
953	1	22	\N	Asistente de Abogado Itinerante	AC	23	\N	\N	Asistente de Abogado Itinerante	\N	\N
954	8	91	\N	Asistente Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
955	4	22	\N	Defensor Público en Formación II	AC	6	\N	\N	Defensora Pública en Formación II	\N	\N
956	120	91	\N	Relacionista Público	AC	35	\N	\N	Relacionista Pública	\N	\N
957	1	30	\N	Asistente de Abogado	AC	2	\N	\N	Asistente de Abogado	\N	\N
1669	95	22	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
958	1	30	\N	Asistente de Abogado	AC	2	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
959	96	21	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
960	4	22	\N	Defensor Público en Formación	AC	20	\N	\N	Defensora Pública en Formación	\N	\N
961	10	22	\N	Defensor Público en Pasantía	AC	16	\N	\N	Defensora Pública en Pasantía	\N	\N
962	4	22	\N	Defensor Público en Formación I	AC	18	\N	\N	Defensora Pública en Formación I	\N	\N
963	4	22	\N	Defensor Público en Formación II	AC	35	\N	\N	Defensora Pública en Formación II	\N	\N
964	68	22	\N	Intérprete	AC	26	\N	\N	Interprete	\N	\N
965	1	81	\N	Asistente de Abogado	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
966	177	81	\N	Abogado de Monitoreo y Seguimiento de Casos	AC	45	\N	\N	Abogada de Monitoreo y Seguimiento de Casos	\N	\N
967	30	33	\N	Recepcionisto	AC	35	\N	Oficio 50-2014-rrhh-clrp	Recepcionista	\N	\N
968	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
969	1	22	\N	Asistente de Abogado	AC	18	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
970	1	22	\N	Asistente de Abogado	AC	8	\N	\N	Asistente de Abogado	\N	\N
971	30	6	\N	Secretario	AC	35	\N	\N	Secretaria	\N	\N
972	4	22	\N	Defensor Público en Formación I	AC	4	\N	\N	Defensora Pública en Formación I	\N	\N
973	104	6	\N	Auxiliar Administrativo y Recepcionista de Planta Telefónica	AC	35	\N	\N	Auxiliar Administrativa y Recepcionista de Planta Telefónica	\N	\N
974	178	22	\N	Asignador	AC	47	\N	\N	Asignadora	\N	\N
975	114	86	\N	Auxiliar Administrativo	AC	35	\N	\N	Auxiliar Administrativa	\N	\N
976	94	93	\N	Auxiliar Técnico	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Técnico	\N	\N
977	94	93	\N	Técnico en Informática	AC	35	\N	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
978	10	81	\N	Defensor Público en Pasantía	AC	45	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
979	176	5	\N	Consultor	AC	44	\N	\N	Consultora	\N	\N
980	176	5	\N	Consultor	AC	44	\N	\N	Consultora	\N	\N
981	4	24	\N	Defensor Público en Formación II	AC	36	\N	\N	Defensora Pública en Formación II	\N	\N
982	1	22	\N	Asistente de Abogado	AC	29	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
983	5	11	\N	Auxiliar	AC	38	\N	\N	Auxiliar	\N	\N
984	8	81	\N	Asistente Administrativo	AC	45	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
985	4	29	\N	Defensor Público en Formación II	AC	36	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
986	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
987	4	22	\N	Defensor Público en Formación I	AC	15	\N	\N	Defensora Pública en Formación I	\N	\N
988	10	26	\N	Defensor Público en Pasantía	AC	1	\N	\N	Defensora Pública en Pasantía	\N	\N
989	1	81	\N	Asistente de Abogado	AC	45	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
990	4	22	\N	Defensor Público en Formación I	AC	32	\N	\N	Defensora Pública en Formación I	\N	\N
991	1	22	\N	Asistente de Abogado	AC	7	\N	\N	Asistente de Abogado	\N	\N
992	1	22	\N	Asistente de Abogado	AC	42	\N	\N	Asistente de Abogado	\N	\N
993	4	22	\N	Defensor Público en Formación I	AC	14	\N	\N	Defensora Pública en Formación I	\N	\N
994	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
995	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
996	4	24	\N	Defensor Público en Formación I	AC	36	\N	\N	Defensora Pública en Formación I	\N	\N
997	4	22	\N	Defensor Público en Formación I	AC	16	\N	\N	Defensora Pública en Formación I	\N	\N
998	114	30	\N	Auxiliar Administrativo	AC	2	\N	\N	Auxiliar Administrativa	\N	\N
999	1	22	\N	Asistente de Abogado Interino	AC	31	\N	\N	Asistente de Abogado Interina	\N	\N
1000	8	34	\N	Asistente Administrativo	AC	35	\N	\N	Asistente Administrativa	\N	\N
1001	100	105	\N	Técnico en Trabajo Social	AC	43	\N	Oficio 50-2014-rrhh-clrp	Técnico en Trabajo Social	\N	\N
1002	1	22	\N	Asistente de Abogado	AC	10	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1003	1	22	\N	Asistente de Abogado	AC	14	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1004	177	81	\N	Abogado de Monitoreo y Seguimiento de Casos	AC	45	\N	\N	Abogada de Monitoreo y Seguimiento de Casos	\N	\N
1005	4	30	\N	Defensor Público en Formación III	AC	2	\N	\N	Defensora Pública en Formación III	\N	\N
1006	5	11	\N	Auxiliar	AC	48	\N	\N	Auxiliar	\N	\N
1007	114	5	\N	Auxiliar Administrativo	AC	44	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1008	4	22	\N	Defensor Público en Formación I	AC	18	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1009	92	23	\N	Abogado de Enlace	AC	35	\N	\N	Abogada de Enlace	\N	\N
1010	1	22	\N	Asistente de Abogado	AC	23	\N	\N	Asistente de Abogado	\N	\N
1012	4	22	\N	Defensor Público en Formación I	AC	38	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1013	1	22	\N	Asistente de Abogado	AC	6	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1014	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1015	1	25	\N	Asistente de Abogado	AC	43	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1016	179	103	\N	Encargado de la Oficina de Información Público	AC	35	\N	Acuerdo 49-2014	Encargada de la Oficina de Información Pública	\N	\N
1017	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1018	180	21	\N	Encargado de la Subsección de Inventario	AC	35	\N	Acuerdo 49-2014	Encargada de la Subsección de Inventario	\N	\N
1019	1	22	\N	Asistente de Abogado	AC	13	\N	\N	Asistente de Abogado	\N	\N
1020	1	22	\N	Asistente de Abogado	AC	38	\N	\N	Asistente de Abogado	\N	\N
1021	1	22	\N	Asistente de Abogado	AC	27	\N	\N	Asistente de Abogado	\N	\N
1022	181	22	\N	Defensor Público en Formación I	AC	22	\N	\N	Defensora Pública en Formación I	\N	\N
1023	181	22	\N	Defensor Público en Formación I	AC	24	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1024	182	81	\N	Defensor Público en Formación II	AC	11	\N	\N	Defensora Pública en Formación II	\N	\N
2640	68	22	\N	Intérprete	AC	10	Acuerdo 106-2013	\N	Interprete	\N	\N
1025	1	81	\N	Asistente de Abogado	AC	11	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1026	4	22	\N	Defensor Público en Formación I	AC	49	\N	\N	Defensora Pública en Formación I	\N	\N
1027	4	22	\N	Defensor Público en Formación I	AC	16	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1028	1	22	\N	Asistente de Abogado	AC	13	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1029	4	22	\N	Defensor Público en Formación I	AC	26	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1030	183	81	\N	Defensor Público en Formación I	AC	41	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1031	10	26	\N	Defensor Público en Pasantía	AC	1	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
1032	4	22	\N	Defensor Público en Formación I	AC	9	\N	\N	Defensora Pública en Formación I	\N	\N
1033	123	98	\N	Auxiliar de Seguridad	AC	35	\N	\N	Auxiliar de Seguridad	\N	\N
1034	108	81	\N	Asistente de Psicología	AC	45	\N	Oficio 50-2014-rrhh-clrp	Asistente de Psicologia	\N	\N
1035	4	26	\N	Defensor Público en Formación III	AC	1	\N	\N	Defensora Pública en Formación III	\N	\N
1036	1	22	\N	Asistente de Abogado	AC	31	\N	\N	Asistente de Abogado	\N	\N
1038	1	22	\N	Asistente de Abogado	AC	18	\N	\N	Asistente de Abogado	\N	\N
1039	4	22	\N	Defensor Público en Formación II	AC	25	\N	\N	Defensora Pública en Formación II	\N	\N
1045	100	25	\N	Técnico en Trabajo Social	AC	43	\N	\N	Técnico en Trabajo Social	\N	\N
1046	1	22	\N	Asistente de Abogado	AC	4	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1047	181	22	\N	Defensor Público en Formación I	AC	27	\N	\N	Defensora Pública en Formación I	\N	\N
1048	244	11	\N	Auxiliar	AC	48	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1049	1	22	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1050	1	22	\N	Asistente de Abogado	AC	13	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1051	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
1052	4	22	\N	Defensor Público de Planta I	AC	18	\N	\N	Defensora Pública de Planta I	\N	\N
1053	184	22	\N	Defensor Público Intercultural	AC	22	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública Intercultural	\N	\N
1054	5	22	\N	Auxiliar	AC	4	\N	\N	Auxiliar	\N	\N
1055	4	22	\N	Defensor Público en Formación II	AC	4	\N	\N	Defensora Pública en Formación II	\N	\N
1056	6	81	\N	Técnico en Trabajo Social	AC	45	\N	\N	Técnico en Trabajo Social	\N	\N
1057	1	22	\N	Asistente de Abogado	AC	41	\N	\N	Asistente de Abogado	\N	\N
1058	184	22	\N	Defensor Público Intercultural	AC	27	\N	\N	Defensora Pública Intercultural	\N	\N
1059	93	106	\N	Psicólogo	AC	11	\N	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
1060	1	22	\N	Asistente de Abogado	AC	43	\N	\N	Asistente de Abogado	\N	\N
1061	1	22	\N	Asistente de Abogado	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1063	1	22	\N	Asistente de Abogado	AC	5	\N	\N	Asistente de Abogado	\N	\N
1064	1	22	\N	Asistente de Abogado	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1065	1	22	\N	Asistente de Abogado	AC	5	\N	\N	Asistente de Abogado	\N	\N
1066	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1067	4	22	\N	Defensor Público en Formación II	AC	35	\N	\N	Defensora Pública en Formación II	\N	\N
1068	4	22	\N	Defensor Público en Formación II	AC	35	\N	\N	Defensora Pública en Formación II	\N	\N
1069	181	22	\N	Defensor Público en Formación I	AC	5	\N	\N	Defensora Pública en Formación I	\N	\N
1070	176	5	\N	Consultor	AC	44	\N	\N	Consultora	\N	\N
1173	4	22	\N	Defensor Público en Formación II	AC	20	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1174	1	22	\N	Asistente de Abogado	AC	50	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1175	181	22	\N	Defensor Público en Formación I	AC	24	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1176	185	106	\N	Psicólogo	AC	43	\N	Acuerdo 49-2014	Psicóloga	\N	\N
1177	30	12	\N	Secretario Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Secretaria Administrativa	\N	\N
1178	114	81	\N	Auxiliar Administrativo	AC	18	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1179	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1180	1	24	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1181	1	22	\N	Asistente de Abogado	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1182	8	22	\N	Asistente Administrativo	AC	9	\N	\N	Asistente Administrativa	\N	\N
1183	97	86	\N	Asesor Jurídico	AC	35	\N	\N	Asesora Jurídica	\N	\N
1184	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1186	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1187	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1188	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1189	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1190	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1191	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1192	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1193	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1194	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1195	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1196	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1197	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1198	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1199	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1200	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1201	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1202	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1203	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1204	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1205	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1206	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1207	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1208	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1209	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1210	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1211	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1212	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1213	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1214	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1215	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1216	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1217	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1218	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1219	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1220	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1221	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1222	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1223	186	81	\N	Defensor Público de Oficio	AC	45	\N	\N	Defensora Pública de Oficio	\N	\N
1224	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1225	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1226	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1227	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1228	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1229	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1230	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1231	8	30	\N	Asistente Administrativo	AC	2	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1233	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1234	4	24	\N	Defensor Público en Formación III	AC	36	\N	\N	Defensora Pública en Formación III	\N	\N
1235	181	30	\N	Defensor Público en Formación I	AC	2	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1236	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1237	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1238	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1239	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1240	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1241	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1242	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1243	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1244	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1245	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1246	186	81	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1247	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1248	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1249	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1250	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1251	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1252	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1253	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1254	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1255	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1256	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1257	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1258	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1259	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1260	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1261	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1262	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1263	186	81	\N	Defensor Público de Oficio	AC	5	\N	\N	Defensora Pública de Oficio	\N	\N
1264	186	81	\N	Defensor Público de Oficio	AC	41	\N	\N	Defensora Pública de Oficio	\N	\N
1265	6	105	\N	Trabajador Social	AC	6	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
1266	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1267	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1268	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1269	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1270	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1271	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1272	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1273	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1274	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1275	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1276	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1277	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1278	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1279	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1280	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1281	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1282	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1283	186	81	\N	Defensor Público de Oficio	AC	26	\N	\N	Defensora Pública de Oficio	\N	\N
1284	186	81	\N	Defensor Público de Oficio	AC	26	\N	\N	Defensora Pública de Oficio	\N	\N
1285	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1286	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1287	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1288	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1289	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1290	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1291	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1292	186	81	\N	Defensor Público de Oficio	AC	6	\N	\N	Defensora Pública de Oficio	\N	\N
1293	187	23	\N	Defensor Público de Oficio	AC	4	\N	\N	Defensora Pública de Oficio	\N	\N
1294	3	84	\N	Conserje	AC	35	\N	\N	Conserje	\N	\N
1295	189	10	\N	Auxiliar en la División Ejecutiva y de Recursos Humanos	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar en la División Ejecutiva y de Recursos Humanos	\N	\N
1296	181	22	\N	Defensor Público en Formación II	AC	35	\N	\N	Defensora Pública en Formación II	\N	\N
1297	8	4	\N	Asistente Administrativo	AC	44	\N	Oficio 50-2014-rrhh-clrp	Asistente Administraivo	\N	\N
1298	188	28	\N	Abogado Facilitador en Monitoreo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Abogada Facilitadora en Monitoreo	\N	\N
1299	187	23	\N	Defensor Público de Oficio	AC	4	\N	\N	Defensora Pública de Oficio	\N	\N
1300	187	23	\N	Defensor Público de Oficio	AC	4	\N	\N	Defensora Pública de Oficio	\N	\N
1301	187	23	\N	Defensor Público de Oficio	AC	4	\N	\N	Defensora Pública de Oficio	\N	\N
1302	187	23	\N	Defensor Público de Oficio	AC	4	\N	\N	Defensora Pública de Oficio	\N	\N
1303	187	23	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1304	187	23	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1305	187	23	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1306	187	23	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1307	187	23	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1308	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1309	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1310	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1311	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1312	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1313	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1314	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1315	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1316	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1317	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1318	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1319	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1320	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1321	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1322	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1323	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1324	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1325	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1326	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1327	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1328	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1329	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1330	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1331	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1332	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1333	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1334	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1335	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1336	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1337	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1338	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1339	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1340	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1341	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1342	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1343	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1344	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1345	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1346	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1347	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1348	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1349	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1350	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1351	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1352	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1353	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1354	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1355	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1356	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1357	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1358	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1359	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1360	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1361	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1362	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1363	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1364	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1365	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1366	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1367	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1368	187	23	\N	Defensor Público de Oficio	AC	46	\N	\N	Defensora Pública de Oficio	\N	\N
1369	187	23	\N	Defensor Público de Oficio	AC	42	\N	\N	Defensora Pública de Oficio	\N	\N
1370	187	23	\N	Defensor Público de Oficio	AC	21	\N	\N	Defensora Pública de Oficio	\N	\N
1371	187	23	\N	Defensor Público de Oficio	AC	32	\N	\N	Defensora Pública de Oficio	\N	\N
1372	187	23	\N	Defensor Público de Oficio	AC	32	\N	\N	Defensora Pública de Oficio	\N	\N
1373	187	23	\N	Defensor Público de Oficio	AC	32	\N	\N	Defensora Pública de Oficio	\N	\N
1374	187	23	\N	Defensor Público de Oficio	AC	32	\N	\N	Defensora Pública de Oficio	\N	\N
1375	187	23	\N	Defensor Público de Oficio	AC	32	\N	\N	Defensora Pública de Oficio	\N	\N
1376	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1377	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1378	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1379	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1380	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1381	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1382	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1383	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1384	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1385	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1386	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1387	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1388	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1389	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1390	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1391	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1392	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1393	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1394	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1395	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1396	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1397	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1398	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1399	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1400	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1401	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1402	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1403	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1404	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1405	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1406	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1407	187	23	\N	Defensor Público de Oficio	AC	48	\N	\N	Defensora Pública de Oficio	\N	\N
1408	187	23	\N	Defensor Público de Oficio	AC	30	\N	\N	Defensora Pública de Oficio	\N	\N
1409	187	23	\N	Defensor Público de Oficio	AC	30	\N	\N	Defensora Pública de Oficio	\N	\N
1410	187	23	\N	Defensor Público de Oficio	AC	30	\N	\N	Defensora Pública de Oficio	\N	\N
1411	187	23	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1412	187	23	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1413	187	23	\N	Defensor Público de Oficio	AC	16	\N	\N	Defensora Pública de Oficio	\N	\N
1414	187	23	\N	Defensor Público de Oficio	AC	25	\N	\N	Defensora Pública de Oficio	\N	\N
1415	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1416	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1417	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1418	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1419	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1420	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1421	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1422	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1423	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1424	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1425	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1426	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1427	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1428	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1429	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1430	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1431	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1432	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1433	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1434	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1435	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1436	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1437	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1438	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1439	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1440	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1441	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1442	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1443	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1444	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1445	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1446	187	23	\N	Defensor Público de Oficio	AC	31	\N	\N	Defensora Pública de Oficio	\N	\N
1447	187	23	\N	Defensor Público de Oficio	AC	22	\N	\N	Defensora Pública de Oficio	\N	\N
1448	187	23	\N	Defensor Público de Oficio	AC	19	\N	\N	Defensora Pública de Oficio	\N	\N
1449	187	23	\N	Defensor Público de Oficio	AC	7	\N	\N	Defensora Pública de Oficio	\N	\N
1450	187	23	\N	Defensor Público de Oficio	AC	49	\N	\N	Defensora Pública de Oficio	\N	\N
1451	187	23	\N	Defensor Público de Oficio	AC	24	\N	\N	Defensora Pública de Oficio	\N	\N
1452	187	23	\N	Defensor Público de Oficio	AC	11	\N	\N	Defensora Pública de Oficio	\N	\N
1453	187	23	\N	Defensor Público de Oficio	AC	28	\N	\N	Defensora Pública de Oficio	\N	\N
1454	187	23	\N	Defensor Público de Oficio	AC	28	\N	\N	Defensora Pública de Oficio	\N	\N
1455	187	23	\N	Defensor Público de Oficio	AC	33	\N	\N	Defensora Pública de Oficio	\N	\N
1456	187	23	\N	Defensor Público de Oficio	AC	50	\N	\N	Defensora Pública de Oficio	\N	\N
1457	187	23	\N	Defensor Público de Oficio	AC	50	\N	\N	Defensora Pública de Oficio	\N	\N
1458	187	23	\N	Defensor Público de Oficio	AC	50	\N	\N	Defensora Pública de Oficio	\N	\N
1459	187	23	\N	Defensor Público de Oficio	AC	12	\N	\N	Defensora Pública de Oficio	\N	\N
1460	190	81	\N	Abogado Facilitador	AC	45	\N	\N	Abogada Facilitadora	\N	\N
1461	187	23	\N	Defensor Público de Oficio	AC	35	\N	\N	Defensora Pública de Oficio	\N	\N
1462	192	26	\N	Auxiliar Administrativo	AC	1	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1463	123	98	\N	Auxiliar Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1464	186	81	\N	Defensor Público de Oficio	AC	11	\N	\N	Defensora Pública de Oficio	\N	\N
1465	186	81	\N	Defensor Público de Oficio	AC	11	\N	\N	Defensora Pública de Oficio	\N	\N
1466	186	81	\N	Defensor Público de Oficio	AC	11	\N	\N	Defensora Pública de Oficio	\N	\N
1467	186	81	\N	Defensor Público de Oficio	AC	11	\N	\N	Defensora Pública de Oficio	\N	\N
1468	7	105	\N	Trabajador Social II	AC	43	\N	OFICIO 46-2016-RRHH	Trabajadora Social II	\N	\N
1469	186	81	\N	Defensor Público de Oficio	AC	21	\N	\N	Defensora Pública de Oficio	\N	\N
1470	186	81	\N	Defensor Público de Oficio	AC	13	\N	\N	Defensora Pública de Oficio	\N	\N
1471	1	22	\N	Asistente de Abogado Interino	AC	25	\N	\N	Asistente de Abogado Interina	\N	\N
1472	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1473	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1474	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1475	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1476	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1477	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1478	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1479	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1480	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1481	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1482	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1483	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1484	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1485	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1486	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1487	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1488	187	23	\N	Defensor Público de Oficio	AC	2	\N	\N	Defensora Pública de Oficio	\N	\N
1489	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1490	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1491	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1492	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1493	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1494	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1495	187	23	\N	Defensor Público de Oficio	AC	47	\N	\N	Defensora Pública de Oficio	\N	\N
1496	187	23	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1497	187	23	\N	Defensor Público de Oficio	AC	42	\N	\N	Defensora Pública de Oficio	\N	\N
1498	187	23	\N	Defensor Público de Oficio	AC	15	\N	\N	Defensora Pública de Oficio	\N	\N
1499	187	23	\N	Defensor Público de Oficio	AC	17	\N	\N	Defensora Pública de Oficio	\N	\N
1500	187	23	\N	Defensor Público de Oficio	AC	26	\N	\N	Defensora Pública de Oficio	\N	\N
1501	187	23	\N	Defensor Público de Oficio	AC	34	\N	\N	Defensora Pública de Oficio	\N	\N
1502	187	23	\N	Defensor Público de Oficio	AC	39	\N	\N	Defensora Pública de Oficio	\N	\N
1503	187	23	\N	Defensor Público de Oficio	AC	14	\N	\N	Defensora Pública de Oficio	\N	\N
1504	1	22	\N	Asistente de Abogado	AC	32	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1534	181	22	\N	Defensor Público en Formación II	AC	11	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1535	1	22	\N	Asistente de Abogado	AC	11	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1536	191	21	\N	Auxiliar	AC	35	\N	Acuerdo 49-2014	Auxiliar	\N	\N
1537	3	84	\N	Conserje	AC	35	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1538	187	23	\N	Defensor Público de Oficio	AC	14	\N	\N	Defensora Pública de Oficio	\N	\N
1539	193	8	\N	Recepcionisto I Itinerante	AC	35	\N	Oficio 50-2014-rrhh-clrp	Recepcionista I Itinerante	\N	\N
1540	5	11	\N	Auxiliar	AC	39	\N	\N	Auxiliar	\N	\N
1541	22	19	\N	Asistente Administrativo	AC	35	\N	Acuerdo 49-2014	Asistente Administrativa	\N	\N
1542	1	22	\N	Asistente de Abogado	AC	18	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1543	55	18	\N	Auxiliar de Presupuesto	AC	35	\N	\N	Auxiliar de Presupuesto	\N	\N
1544	100	105	\N	Técnico en Trabajo Social	AC	29	\N	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1545	181	22	\N	Defensor Público en Formación II	AC	28	\N	\N	Defensora Pública en Formación II	\N	\N
1546	1	22	\N	Asistente de Abogado	AC	34	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1547	181	30	\N	Defensor Público en Formación I	AC	2	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1551	8	22	\N	Asistente Administrativo	AC	32	\N	\N	Asistente Administrativa	\N	\N
1552	8	22	\N	Asistente Administrativo	AC	32	\N	\N	Asistente Administrativa	\N	\N
1553	181	22	\N	Defensor Público en Formación II	AC	14	\N	\N	Defensora Pública en Formación II	\N	\N
1554	95	85	\N	Auxiliar de Mantenimiento	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar de Mantenimiento	\N	\N
1555	92	102	\N	Abogado de Enlace	AC	45	\N	\N	Abogada de Enlace	\N	\N
1556	194	28	\N	Experto Intercultural	AC	43	\N	Oficio 50-2014-rrhh-clrp	Experta Intercultural	\N	\N
1557	10	22	\N	Defensor Público en Pasantía	AC	6	\N	\N	Defensora Pública en Pasantia	\N	\N
1558	181	22	\N	Defensor Público en Formación I	AC	24	\N	\N	Defensora Pública en Formación I	\N	\N
1559	4	22	\N	Defensor Público de Planta I	AC	9	\N	\N	Defensora Pública de Planta I	\N	\N
1560	187	23	\N	Defensor Público de Oficio	AC	14	\N	\N	Defensora Pública de Oficio	\N	\N
1561	187	23	\N	Defensor Público de Oficio	AC	25	\N	\N	Defensora Pública de Oficio	\N	\N
1562	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1563	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1564	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1565	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1566	187	23	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1567	1	22	\N	Asistente de Abogado	AC	26	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1568	1	22	\N	Asistente de Abogado	AC	26	\N	\N	Asistente de Abogado	\N	\N
1569	181	22	\N	Defensor Público en Formación I	AC	8	\N	\N	Defensora Pública en Formación I	\N	\N
1570	96	21	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1571	181	22	\N	Defensor Público en Formación I	AC	2	\N	\N	Defensora Pública en Formación I	\N	\N
1572	1	22	\N	Asistente de Abogado	AC	41	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1573	10	81	\N	Defensor Público en Pasantía	AC	45	\N	\N	Defensora Pública en Pasantia	\N	\N
1574	195	81	\N	Defensor Público en Pasantía	AC	45	\N	\N	Defensora Pública en Pasantia	\N	\N
1575	195	81	\N	Defensor Público en Formación II	AC	13	\N	\N	Defensora Pública en Formación II	\N	\N
1576	187	23	\N	Defensor Público de Oficio	AC	7	\N	\N	Defensora Pública de Oficio	\N	\N
1577	196	81	\N	Asistente Administrativo	AC	45	\N	\N	Asistente Administrativa	\N	\N
1578	195	81	\N	Defensor Público en Formación II	AC	5	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1579	4	22	\N	Defensor Público de Planta II	AC	4	\N	\N	Defensora Pública de Planta II	\N	\N
1580	116	81	\N	Técnico Administrativo	AC	45	\N	ACUERDO 96-2015 	Técnico Administrativa	\N	\N
1581	214	9	\N	Defensor Público de Planta III	AC	35	\N	ACUERDO 104-2015	Defensora Pública de Planta III	\N	\N
1582	195	81	\N	Defensor Público en Pasantía	AC	45	\N	\N	Defensora Pública en Pasantia	\N	\N
1583	195	81	\N	Defensor Público en Pasantía	AC	45	\N	\N	Defensora Pública en Pasantia	\N	\N
1584	195	81	\N	Defensor Público en Pasantía	AC	45	\N	\N	Defensora Pública en Pasantia	\N	\N
1585	197	22	\N	Defensor Público en Pasantía	AC	23	\N	\N	Defensora Pública en Pasantia	\N	\N
1586	8	22	\N	Auxiliar Administrativo	AC	31	\N	\N	Auxliar Administrativa	\N	\N
1587	197	30	\N	Defensor Público en Pasantía	AC	23	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
1588	198	4	\N	Docente Capacitador	AC	44	\N	\N	Docente Capacitadora	\N	\N
1589	1	22	\N	Asistente de Abogado	AC	42	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1590	4	22	\N	Defensor Público de Planta I	AC	6	\N	\N	Defensora Pública de Planta I	\N	\N
1591	218	11	\N	Jefe del Departamento de Asignación de Casos	AC	35	\N	\N	Jefa del Departamento de Asignación de Casos	\N	\N
1592	92	23	\N	Abogado de Enlace	AC	48	\N	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1593	10	22	\N	Defensor Público en Pasantía	AC	7	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
1594	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
1595	199	34	\N	Asistente Administrativo	AC	35	\N	\N	Asistente Administrativa	\N	\N
1596	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1597	96	21	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1598	195	81	\N	Defensor Público en Formación I	AC	45	\N	\N	Defensora Pública en Fomación I	\N	\N
1599	195	81	\N	Defensor Público en Formación I	AC	45	\N	\N	Defensora Pública en Fomación I	\N	\N
1600	4	22	\N	Defensor Público de Planta I	AC	23	\N	\N	Defensora Pública de Planta I	\N	\N
1601	88	106	\N	Encargado del Área de Psicología	AC	43	\N	Acuerdo 49-2014	Encargada del Área de Psicología	\N	\N
1602	186	81	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1603	186	81	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1604	186	81	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1605	186	81	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1606	186	81	\N	Defensor Público de Oficio	AC	27	\N	\N	Defensora Pública de Oficio	\N	\N
1607	186	81	\N	Defensor Público de Oficio	AC	8	\N	\N	Defensora Pública de Oficio	\N	\N
1608	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1609	186	81	\N	Defensor Público de Oficio	AC	23	\N	\N	Defensora Pública de Oficio	\N	\N
1610	100	105	\N	Técnico en Trabajo Social	AC	23	\N	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1611	10	22	\N	Defensor Público en Pasantía	AC	5	\N	\N	Defensora Pública en Pasantia	\N	\N
1612	8	22	\N	Asistente Administrativo	AC	5	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1613	199	31	\N	Asistente Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1614	8	3	\N	Asistente de Abogado	AC	35	\N	\N	Asistente de Abogado	\N	\N
1615	181	22	\N	Defensor Público en Formación III	AC	33	\N	\N	Defensora Pública en Formación III	\N	\N
1616	4	22	\N	Defensor Público en Formación III	AC	33	\N	\N	Defensora Pública en Formación III	\N	\N
1617	193	14	\N	Recepcionisto	AC	35	\N	Oficio 50-2014-rrhh-clrp	Recepcionista	\N	\N
1618	95	85	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
1619	11	22	\N	Coordinador Municipal	AC	19	\N	Acuerdo 49-2014	Coordinadora Municipal	\N	\N
1620	115	15	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
1621	115	14	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
1622	115	14	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
1623	30	25	\N	Recepcionisto III	AC	43	\N	\N	Recepcionista III	\N	\N
1645	10	22	\N	Defensor Público en Pasantía	AC	10	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantía	\N	\N
1646	157	28	\N	Experto Intercultural	AC	33	\N	\N	Experta Intercultural	\N	\N
1647	200	10	\N	Subdirector de la División Ejecutiva y de Recursos Humanos	AC	35	\N	Acuerdo 49-2014	SubDirectora de la División Ejecutiva y de Recursos Humanos	\N	\N
1648	181	22	\N	Defensor Público en Formación II	AC	11	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1649	1	22	\N	Asistente de Abogado	AC	19	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1650	1	22	\N	Asistente de Abogado	AC	1	\N	\N	Asistente de Abogado	\N	\N
1651	1	22	\N	Asistente de Abogado	AC	50	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1652	1	22	\N	Asistente de Abogado	AC	50	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1653	201	86	\N	Asistente Administrativo	AC	35	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1654	6	105	\N	Trabajador Social	AC	41	\N	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
1655	114	22	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1656	114	24	\N	Auxiliar Administrativo	AC	36	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1657	114	22	\N	Auxiliar Administrativo	AC	36	\N	\N	Auxiliar Administrativa	\N	\N
1658	96	22	\N	Auxiliar	AC	35	\N	\N	Auxiliar	\N	\N
1659	6	22	\N	Trabajador Social	AC	41	\N	\N	Trabajadora Social	\N	\N
1660	181	22	\N	Defensor Público en Formación I	AC	25	\N	Oficio 50-2014-rrhh-clrp	Defensora Publico en Formacion I	\N	\N
1661	181	22	\N	Defensor Público en Formación II	AC	33	\N	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1662	8	22	\N	Asistente Administrativo	AC	50	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1663	3	22	\N	Conserje	AC	50	\N	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1664	8	22	\N	Asistente Administrativo	AC	23	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1665	105	93	\N	Técnico en Informática	AC	13	\N	Oficio 50-2014-rrhh-clrp	Tecnico en Informatica	\N	\N
1666	10	22	\N	Defensor Público en Pasantía	AC	32	\N	\N	Defensora Publico en Pasantia	\N	\N
1667	10	22	\N	Defensor Público en Pasantía	AC	32	\N	\N	Defensora Publico en Pasantia	\N	\N
1670	138	93	\N	Coordinador de Soporte Técnico	AC	35	\N	Acuerdo 49-2014	Coordinadora de Soporte Técnico	\N	\N
1671	30	34	\N	Secretario	AC	35	\N	Acuerdo 49-2014	Secretaria	\N	\N
1672	202	1	\N	Auxiliar	AC	35	\N	Acuerdo 49-2014	Auxiliar	\N	\N
1673	70	4	\N	Capacitador de Recursos Humanos	AC	44	\N	Acuerdo 49-2014	Capacitadora de Recursos Humanos	\N	\N
1674	182	81	\N	Defensor Público en Formación II	AC	6	\N	\N	Defensora Pública en Formación II	\N	\N
1675	203	94	\N	Técnico en Informática	AC	35	\N	Acuerdo 49-2014	Técnico en Informática	\N	\N
1676	204	1	\N	Auxiliar	AC	35	\N	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1677	100	105	\N	Técnico en Trabajo Social	AC	50	\N	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1678	12	30	\N	Piloto	AC	2	\N	Acuerdo 49-2014	Piloto	\N	\N
1684	1	29	\N	Asistente de Abogado	AC	36	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1685	1	22	\N	Asistente de Abogado	AC	34	\N	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1686	1	22	\N	Asistente de Abogado	AC	34	\N	\N	Asistente de Abogado	\N	\N
1687	114	22	\N	Auxiliar Administrativo	AC	23	\N	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1688	197	30	\N	Defensor Público en Pasantía	AC	2	\N	\N	Defensora Pública en Pasantía	\N	\N
1689	186	81	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1690	186	81	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1691	186	81	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1692	186	81	\N	Defensor Público de Oficio	AC	18	\N	\N	Defensora Pública de Oficio	\N	\N
1693	205	92	\N	Administrador de Base de Datos	AC	35	\N	Acuerdo 49-2014	Administradora de Base de Datos	\N	\N
1694	4	22	\N	Defensor Público de Planta I	AC	24	\N	\N	Defensora Publico de Planta I	\N	\N
1695	186	81	\N	Defensor Público de Oficio	AC	41	\N	\N	Defensora PUBLICO DE OFICIO	\N	\N
1696	186	81	\N	Defensor Público de Oficio	AC	41	\N	\N	Defensora PUBLICO DE OFICIO	\N	\N
1697	1	22	\N	Asistente de Abogado	AC	38	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1698	1	26	\N	Asistente de Abogado	AC	1	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1699	1	9	\N	Asistente de Abogado	AC	35	\N	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1700	4	22	\N	Defensor Público de Planta I	AC	50	\N	Ref.1093-2014-RRHH-CLRP-hbg	Defensora Publico de Planta I	\N	\N
1701	206	22	\N	Asistente Administrativo	AC	24	\N	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1702	1	22	\N	Asistente de Abogado	AC	15	116-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1703	207	30	\N	Defensor Público en Pasantía	AC	2	Contrato	Oficio 50-2014-rrhh-clrp	Defensora Publico en Pasantia	\N	\N
1704	207	30	\N	Defensor Público en Pasantía	AC	2	Contrato	Oficio 50-2014-rrhh-clrp	Defensora Publico en Pasantia	\N	\N
1705	93	81	\N	Psicólogo	AC	45	Contrato 029	\N	Psicóloga	\N	\N
1706	93	81	\N	Psicólogo	AC	45	Contrato 029	\N	Psicóloga	\N	\N
1707	1	22	\N	Asistente de Abogado	AC	29	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1708	184	22	\N	Defensor Público Intercultural	AC	22	Contrato	Oficio 50-2014-rrhh-clrp	Defensora Pública Intercultural	\N	\N
1709	244	11	\N	Auxiliar	AC	39	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1710	5	11	\N	Auxiliar	AC	39	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1711	233	5	\N	Auxiliar Administrativo	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1712	231	18	\N	Auxiliar Administrativo	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1713	187	23	\N	Defensor Público de Oficio	AC	46	Convenio Penal 183	\N	Defensora Pública de Oficio	\N	\N
1714	187	23	\N	Defensor Público de Oficio	AC	46	Convenio Penal 183	\N	Defensora Pública de Oficio	\N	\N
1715	187	23	\N	Defensor Público de Oficio	AC	46	Convenio Penal 183	\N	Defensora Pública de Oficio	\N	\N
1716	184	28	\N	Defensor Público Intercultural	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Defensora Pública Intercultural	\N	\N
1717	181	26	\N	Defensor Público en Formación I	AC	1	Contrato 029	\N	Defensora Publico en Formacion I	\N	\N
1718	12	82	\N	Piloto	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
1719	208	5	\N	Especialista en Organizacion y Metodos	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Especialista en Organizacion y Metodos	\N	\N
1720	209	6	\N	Auditor Informático	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Auditora Informática	\N	\N
1721	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1722	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1723	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1724	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1725	186	81	\N	Defensor Público de Oficio	AC	26	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1726	186	81	\N	Defensor Público de Oficio	AC	26	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1727	186	81	\N	Defensor Público de Oficio	AC	26	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1728	210	22	\N	Conserje y Guardián Interino	AC	8	288-2012	\N	Conserje y Guardián Interina	\N	\N
1729	181	22	\N	Defensor Público en Formación I	AC	7	Contrato 029	\N	Defensora Pública en Fomación I	\N	\N
1730	1	22	\N	Asistente de Abogado	AC	23	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1731	1	22	\N	Asistente de Abogado	AC	38	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1732	113	6	\N	Analista Programador	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Analista Programador	\N	\N
1733	211	88	\N	Consultor	AC	35	Contrato 029	Oficio 50-2014-rrhh-clrp	Consultora	\N	\N
1734	212	5	\N	Especialista en Formulación de Planes, programas y proyectos	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Especialista en Formulación de Planes, programas y proyectos 	\N	\N
1735	1	81	\N	Asistente de Abogado	AC	13	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1736	1	81	\N	Asistente de Abogado	AC	45	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1738	5	11	\N	Auxiliar	AC	48	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1739	4	29	\N	Defensor Público de Planta III	AC	36	1	OFICIO 46-2016-RRHH	Defensora Pública de Planta III	\N	\N
1740	50	3	\N	Supervisor	AC	35	1	ACUERDO 104-2015	Supervisora	\N	\N
1741	70	4	\N	Capacitador Tutor	AC	44	1	ACUERDO 104-2015	Capacitadora Tutora	\N	\N
1742	1	24	\N	Asistente de Abogado	AC	36	36-2012	Acuerdo 10-2014	Asistente de Abogado	\N	\N
1743	213	4	\N	Diseñador Gráfico	AC	44	37-2012	OFICIO 46-2016-RRHH	Diseñadora Gráfica	\N	\N
1744	69	4	\N	Coordinador de la Unidad de Formación y Capacitación	AC	44	1	Acuerdo 49-2014	Coordinadora de la Unidad de Formación y Capacitación	\N	\N
1745	4	29	\N	Coordinador Nacional de Impugnaciones	AC	36	42-2012	\N	Coordinadora Nacional de Impugnaciones	\N	\N
1746	4	29	\N	Defensor Público de Planta II	AC	36	\N	OFICIO 46-2016-RRHH	Defensora Pública de Planta II	\N	\N
1747	7	105	\N	Trabajador Social I	AC	26	44-2012	no corresponde en ubicacion geografica	Trabajadora Social I	\N	\N
1748	4	22	\N	Defensor Público de Planta II	AC	7	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
1749	4	22	\N	Defensor Público de Planta I	AC	6	46-2012	\N	Defensora Pública de Planta I	\N	\N
1750	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1751	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1752	186	81	\N	Defensor Público de Oficio	AC	13	CONVENIO 183	\N	Defensora Pública de Oficio	\N	\N
1753	181	30	\N	Defensor Público en Formación I	AC	23	Contrato 029	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1754	1	22	\N	Asistente de Abogado Interino	AC	29	Contrato 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogada Interina	\N	\N
1755	1	22	\N	Asistente de Abogado Interino	AC	35	Contratos 029	Oficio 50-2014-rrhh-clrp	Asistente de Abogada Interina	\N	\N
1756	132	5	\N	Asesor	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Asesora	\N	\N
1757	220	4	\N	Pedagogo Virtual para el Sistema de Educación Virtual	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Pedagoga Virtual para el Sistema de Educación Virtual 	\N	\N
1758	221	5	\N	Asesor	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Asesora	\N	\N
1759	192	22	\N	Auxiliar Administrativo	AC	36	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1760	192	22	\N	Auxiliar Administrativo	AC	36	Contrato 029	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1761	198	4	\N	Docente Capacitador	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Docente Capacitadora	\N	\N
1762	222	4	\N	Docente Capacitador	AC	44	Contrato 029	Oficio 50-2014-rrhh-clrp	Docente Capacitadora	\N	\N
1763	10	22	\N	Defensor Público en Pasantía	AC	36	Contrato 029	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
1764	113	92	\N	Programador	AC	35	452	Oficio 50-2014-rrhh-clrp	Programadora	\N	\N
1765	187	23	\N	Defensor Público de Oficio	AC	32	convenio	\N	Defensora Pública de Oficio	\N	\N
1766	187	23	\N	Defensor Público de Oficio	AC	32	convenio	\N	Defensora Pública de Oficio	\N	\N
1767	187	23	\N	Defensor Público de Oficio	AC	32	convenio	\N	Defensora Pública de Oficio	\N	\N
1768	181	22	\N	Defensor Público en Formación I	AC	13	me 202-2012 RRHH	\N	Defensora Pública en Formación I	\N	\N
1769	10	24	\N	Defensor Público en Pasantía	AC	36	MEMO	\N	Defensora Pública en Pasantia	\N	\N
1770	10	24	\N	Defensor Público en Pasantía	AC	36	MEMO	\N	Defensora Pública en Pasantia	\N	\N
1771	10	24	\N	Defensor Público en Pasantía	AC	36	MEMO	\N	Defensora Pública en Pasantia	\N	\N
1772	5	11	\N	Auxiliar	AC	38	MEmo 204/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1773	5	11	\N	Auxiliar	AC	38	MEmo 204/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1774	178	11	\N	Auxiliar del Departamento de Asignaciones	AC	38	MEmo 204/2012	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
1775	1	22	\N	Asistente de Abogado	AC	38	MEMO 205/2012	Error	Asistente de Abogado	\N	\N
1776	1	22	\N	Asistente de Abogado	AC	38	MEMO 205/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1777	114	88	\N	Auxiliar Administrativo de Carrera Institucional	AC	35	MEMO 206/2012 RRHH	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativo de Carrera Institucional	\N	\N
1778	114	88	\N	Auxiliar Administrativo de Carrera Institucional	AC	35	MEMO 206/2012 RRHH	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativo de Carrera Institucional	\N	\N
1779	114	88	\N	Auxiliar Administrativo de Carrera Institucional	AC	35	MEMO 206/2012 RRHH	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativo de Carrera Institucional	\N	\N
1780	1	29	\N	Asistente de Abogado	AC	36	Acuerdo 47-2012	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1781	57	21	\N	Auxiliar	AC	35	Acuerdo 48-2012	Acuerdo 49-2014	Auxiliar	\N	\N
1782	1	24	\N	Asistente de Abogado	AC	36	Acuerdo 49-2012	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1783	3	84	\N	Conserje	AC	35	Acuerdo 50-2012	\N	Conserje	\N	\N
1784	92	23	\N	Abogado de Enlace	AC	13	MEMO 213/2012	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1785	92	23	\N	Abogado de Enlace	AC	13	MEMO 213/2012	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1786	181	24	\N	Defensor Público en Formación I	AC	14	memo 212-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1787	181	22	\N	Defensor Público en Formación I	AC	14	memo 212-2012	\N	Defensora Pública en Fomación I	\N	\N
1788	223	10	\N	Oficinista Notificador	AC	35	contrato 029	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
1789	223	10	\N	Oficinista Notificador	AC	35	contrato 029	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
1790	181	24	\N	Defensor Público en Formación I	AC	6	MEMO 250-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1791	181	24	\N	Defensor Público en Formación I	AC	6	MEMO 250-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1792	181	24	\N	Defensor Público en Formación I	AC	6	MEMO 250-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1793	181	24	\N	Defensor Público en Formación I	AC	6	MEMO 250-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1794	182	24	\N	Defensor Público en Formación II	AC	36	MEMO 233-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1795	3	17	\N	Conserje	AC	10	ME-235-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1796	3	17	\N	Conserje	AC	10	ME-235-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1797	35	22	\N	Auxiliar Administrativo	AC	14	58-2012	\N	Auxiliar Administrativa	\N	\N
1798	1	30	\N	Asistente de Abogado	AC	2	60-2012	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1799	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1800	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1801	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1802	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1803	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1804	10	24	\N	Defensor Público en Pasantía	AC	36	memo 233-2012	\N	Defensora Pública en Pasantia	\N	\N
1805	5	11	\N	Auxiliar	AC	46	me-227-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1810	96	20	\N	Auxiliar de Tesorería	AC	35	memo 248-2012	Oficio 50-2014-rrhh-clrp	Auxiliar de Tesorería	\N	\N
1811	232	20	\N	Auxiliar de Tesorería	AC	35	memo 248-2012	Oficio 50-2014-rrhh-clrp	Auxiliar de Tesorería	\N	\N
1812	99	81	\N	Operador Jurídico	AC	35	me-237/2012	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
1813	99	81	\N	Operador Jurídico	AC	35	me-237/2012	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
1815	224	30	\N	Auxiliar Administrativo	AC	2	ME-232/2012/DERH/RLRB/me	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
1823	30	22	\N	Secretario Recepcionista	AC	25	memo 254/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
1824	30	22	\N	Secretario Recepcionista	AC	25	memo 254/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
1825	114	28	\N	Auxiliar Administrativo	AC	35	memo 262-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1826	114	28	\N	Auxiliar Administrativo	AC	35	memo 262-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1827	114	28	\N	Auxiliar Administrativo	AC	35	memo 262-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1828	4	22	\N	Defensor Público de Planta I	AC	34	1	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
1829	116	81	\N	Técnico en Trabajo Social	AC	45	memo-268-2012	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1830	116	81	\N	Técnico en Trabajo Social	AC	45	memo-268-2012	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1831	186	81	\N	Defensor Público de Oficio	AC	41	convenio 183	\N	Defensora Pública de Oficio	\N	\N
1832	186	81	\N	Defensor Público de Oficio	AC	41	convenio 183	\N	Defensora Pública de Oficio	\N	\N
1833	186	81	\N	Defensor Público de Oficio	AC	41	convenio 183	\N	Defensora Pública de Oficio	\N	\N
1834	92	22	\N	Abogado de Enlace	AC	38	MEMO 267/2012	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1835	92	22	\N	Abogado de Enlace	AC	38	MEMO 267/2012	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1836	92	22	\N	Abogado de Enlace	AC	38	MEMO 267/2012	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
1837	181	22	\N	Defensor Público en Formación I	AC	30	memo 258/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1838	181	22	\N	Defensor Público en Formación I	AC	30	memo 258/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1839	181	22	\N	Defensor Público en Formación I	AC	30	memo 258/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1840	181	22	\N	Defensor Público en Formación I	AC	30	memo 258/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1841	114	22	\N	Auxiliar Administrativo	AC	18	ME 261-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1842	114	22	\N	Auxiliar Administrativo	AC	18	ME 261-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1843	114	22	\N	Auxiliar Administrativo	AC	18	ME 261-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1844	114	22	\N	Auxiliar Administrativo	AC	18	ME 261-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1845	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1846	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1847	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1848	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1849	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1850	115	15	\N	Auxiliar	AC	35	ME 270-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1851	3	17	\N	Conserje	AC	35	MEMO 272-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1852	3	17	\N	Conserje	AC	35	MEMO 272-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1853	114	81	\N	Auxiliar Administrativo	AC	18	MEMO 279/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1854	89	81	\N	Auxiliar Administrativo	AC	18	me 279/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1855	10	24	\N	Defensor Público en Pasantía	AC	36	Memo 251/2012	\N	Defensora Pública en Pasantia	\N	\N
1856	225	10	\N	Asistente Administrativo	AC	35	memo 263-2012	Oficio 50-2014-rrhh-clrp	Asistente Administraivo	\N	\N
1857	225	10	\N	Asistente Administrativo de la Subdirección de la Division Ejecutiva y de Recursos Humanos	AC	35	memo 263/2012	Oficio 50-2014-rrhh-clrp	Asistente Administrativo de la Subdirección de la Division Ejecutiva y de Recursos Humanos	\N	\N
1858	206	22	\N	Asistente Administrativo	AC	18	me 279-2012	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
1859	181	30	\N	Defensor Público en Formación I	AC	2	ME-297/2012	\N	Defensora Pública en Formación I	\N	\N
1860	193	14	\N	Recepcionisto III	AC	35	ME 291/2012	Oficio 50-2014-rrhh-clrp	Recepcionista III	\N	\N
1861	114	14	\N	Auxiliar de Compras	AC	35	ME 292/2012	Oficio 50-2014-rrhh-clrp	Auxiliar de Compras	\N	\N
1862	229	14	\N	Auxiliar Administrativo	AC	35	me 292-2012	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
1863	100	105	\N	Trabajador Social	AC	29	me 295/2012	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
1864	5	11	\N	Auxiliar	AC	48	me254/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1865	100	105	\N	Técnico en Trabajo Social	AC	29	me 295/2012	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1866	93	106	\N	Psicólogo	AC	43	me 288/2012	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
1867	206	22	\N	Asistente Administrativo	AC	35	ME 316-2012	Oficio 50-2014-rrhh-clrp	Asistente Adminsitrativo	\N	\N
1868	1	22	\N	Asistente de Abogado	AC	23	ME 317-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1869	181	22	\N	Defensor Público en Formación I	AC	4	memo 314-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
1870	114	22	\N	Auxiliar Administrativo	AC	38	memo 324-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1871	114	30	\N	Auxiliar Administrativo	AC	38	auxiliar	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
1872	181	30	\N	Defensor Público en Formación I	AC	2	ME 324-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1873	226	29	\N	Defensor Público en Formación II	AC	36	memo 325/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1874	186	81	\N	Defensor Público de Oficio	AC	11	convenio 	\N	Defensora Pública de Oficio	\N	\N
1875	186	81	\N	Defensor Público de Oficio	AC	11	convenio 	\N	Defensora Pública de Oficio	\N	\N
1876	186	81	\N	Defensor Público de Oficio	AC	11	convenio 	\N	Defensora Pública de Oficio	\N	\N
1877	1	22	\N	Asistente de Abogado	AC	35	69-2012	Acuerdo 49-2014	Asistente de Abogado	\N	\N
1878	230	30	\N	Auxiliar Administrativo	AC	2	memo	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
1879	104	104	\N	Recepcionisto	AC	35	traslado	\N	Recepcionista	\N	\N
1880	226	22	\N	Defensor Público en Formación II	AC	35	ME 343-2012	\N	Defensora Pública en Formación II	\N	\N
1881	226	22	\N	Defensor Público en Formación II	AC	35	ME 343-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1882	226	22	\N	Defensor Público en Formación II	AC	35	ME 343-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1883	226	22	\N	Defensor Público en Formación II	AC	35	ME 343-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1884	98	25	\N	Analista de Información III	AC	43	me 322-2012	\N	Analista de Información III	\N	\N
1885	230	22	\N	Auxiliar Administrativo	AC	6	me 318-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1886	98	25	\N	Analista de Información I	AC	43	me 322-2012	\N	Analista de Información I	\N	\N
1887	98	25	\N	Analista de Información I	AC	43	me 322-2012	Oficio 50-2014-rrhh-clrp	Analista de Información I	\N	\N
1888	178	11	\N	Auxiliar	AC	2	fc-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1889	100	105	\N	Técnico en Trabajo Social	AC	23	fc-2012	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
1890	230	22	\N	Auxiliar Administrativo	AC	13	me 346-2012	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
1891	193	3	\N	Recepcionisto II	AC	35	ME-351/2012	Oficio 50-2014-rrhh-clrp	Recepcionista II	\N	\N
1892	187	23	\N	Defensor Público de Oficio	AC	48	Me-344/2012	\N	Defensora Pública de Oficio	\N	\N
1893	187	23	\N	Defensor Público de Oficio	AC	48	Me-344/2012	\N	Defensora Pública de Oficio	\N	\N
1894	187	23	\N	Defensor Público de Oficio	AC	48	Me-344/2012	\N	Defensora Pública de Oficio	\N	\N
1895	187	23	\N	Defensor Público de Oficio	AC	48	Me-344/2012	\N	Defensora Pública de Oficio	\N	\N
1896	187	23	\N	Defensor Público de Oficio	AC	48	Me-344/2012	\N	Defensora Pública de Oficio	\N	\N
1897	187	23	\N	Defensor Público de Oficio	AC	15	Me-350/2012	\N	Defensora Pública de Oficio	\N	\N
1898	187	23	\N	Defensor Público de Oficio	AC	11	me-350/2012	\N	Defensora Pública de Oficio	\N	\N
1899	187	23	\N	Defensor Público de Oficio	AC	33	me 350/2012	\N	Defensora Pública de Oficio	\N	\N
1900	5	11	\N	Auxiliar	AC	48	1	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1901	187	23	\N	Defensor Público de Oficio	AC	47	me-350/2012	\N	Defensora Pública de Oficio	\N	\N
1902	187	23	\N	Defensor Público de Oficio	AC	47	me-350/2012	\N	Defensora Pública de Oficio	\N	\N
1903	187	23	\N	Defensor Público de Oficio	AC	47	me-350/2012	\N	Defensora Pública de Oficio	\N	\N
1904	114	22	\N	Auxiliar Administrativo	AC	18	me 356/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1905	187	23	\N	Defensor Público de Oficio	AC	31	me 371-2012	\N	Defensora Pública de Oficio	\N	\N
1906	124	31	\N	Asistente Administrativo	AC	35	me 358/2012	Oficio 50-2014-rrhh-clrp	Asistente Administraivo	\N	\N
1907	30	12	\N	Secretario Administrativo	AC	35	tras 01-2012	Oficio 50-2014-rrhh-clrp	Secretaria Administrativa	\N	\N
1908	1	22	\N	Asistente de Abogado	AC	11	321-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1909	1	9	\N	Asistente de Abogado	AC	35	849-2011	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1910	184	22	\N	Defensor Público en Formación I Intercultural	AC	22	me 365/2012	\N	Defensora Público en Formación I Intercultural	\N	\N
1911	226	26	\N	Defensor Público en Formación II	AC	1	326-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
1912	181	26	\N	Defensor Público en Formación I	AC	1	573-2012	\N	Defensora Pública en Fomación I	\N	\N
1913	32	8	\N	Asistente Administrativo	AC	35	Acuerdo 77-2012	Acuerdo 49-2014	Asistente Administrativa	\N	\N
1914	5	11	\N	Auxiliar del Departamento de Asignaciones	AC	47	525-2012	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
1915	3	22	\N	Conserje	AC	10	tras 04-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1916	1	81	\N	Asistente de Abogado	AC	23	tras 05-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1917	181	22	\N	Defensor Público en Formación I	AC	23	318-2012	\N	Defensora Pública en Fomación I	\N	\N
1918	181	22	\N	Defensor Público de Planta I	AC	32	34-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública de Planta I	\N	\N
1919	181	22	\N	Defensor Público de Planta I	AC	32	34-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública de Planta I	\N	\N
1920	181	22	\N	Defensor Público en Formación I	AC	32	34-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1921	181	22	\N	Defensor Público en Formación I	AC	19	148-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1922	181	102	\N	Defensor Público en Formación I	AC	41	tras 06-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1923	30	22	\N	Secretario Recepcionista III	AC	35	me 364/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista III	\N	\N
1924	30	22	\N	Secretario Recepcionista I	AC	35	Me 368/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1925	30	26	\N	Secretario Recepcionista I	AC	1	Me 367/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1926	95	17	\N	Auxiliar de Mantenimiento	AC	35	me 387/2012	Oficio 50-2014-rrhh-clrp	Auxiliar de Mantenimiento	\N	\N
1927	1	22	\N	Asistente de Abogado	AC	10	me 388/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1928	10	24	\N	Defensor Público en Pasantía	AC	36	ME 388/2012	\N	Defensora Pública en Pasantia	\N	\N
1929	187	23	\N	Defensor Público de Oficio	AC	7	me 383/2012	\N	Defensora Pública de Oficio	\N	\N
1930	187	23	\N	Defensor Público de Oficio	AC	7	me 383/2012	\N	Defensora Pública de Oficio	\N	\N
1931	187	23	\N	Defensor Público de Oficio	AC	8	me 382/2012	\N	Defensora Pública de Oficio	\N	\N
1932	187	23	\N	Defensor Público de Oficio	AC	8	me 382/2012	\N	Defensora Pública de Oficio	\N	\N
1933	30	22	\N	Secretario Recepcionista I	AC	25	me 406/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1934	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1935	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1936	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1937	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1938	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1939	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1940	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1941	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1942	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1943	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1944	187	23	\N	Defensor Público de Oficio	AC	35	me-375/2012	\N	Defensora Pública de Oficio	\N	\N
1945	3	22	\N	Conserje	AC	47	Mod 001-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1946	12	82	\N	Piloto	AC	35	Mod 02-2012	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
1947	181	81	\N	Defensor Público en Formación I	AC	45	857-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
1948	181	22	\N	Defensor Público en Formación I	AC	33	836-2012	\N	Defensora Pública en Fomación I	\N	\N
1949	198	24	\N	Docente Capacitador	AC	36	880-2012	Oficio 50-2014-rrhh-clrp	Docente Capacitadora	\N	\N
1950	114	26	\N	Auxiliar Administrativo	AC	1	867-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1951	104	22	\N	Secretario Recepcionista I	AC	32	896-2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1953	4	22	\N	Defensor Público de Planta II	AC	35	1	\N	Defensora Pública de Planta II	\N	\N
1954	114	22	\N	Auxiliar Administrativo	AC	35	885-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1955	30	22	\N	Secretario Recepcionista I	AC	31	895-2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1956	114	26	\N	Auxiliar Administrativo	AC	1	893-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1957	186	81	\N	Defensor Público de Oficio	AC	23	convenio	\N	Defensora Pública de Oficio	\N	\N
1958	186	81	\N	Defensor Público de Oficio	AC	23	convenio	\N	Defensora Pública de Oficio	\N	\N
1959	186	81	\N	Defensor Público de Oficio	AC	23	convenio	\N	Defensora Pública de Oficio	\N	\N
1960	235	30	\N	Auxiliar Administrativo	AC	2	memo	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
1961	236	82	\N	Auxiliar Administrativo	AC	35	memo	Acuerdo 49-2014	Auxiliar Administrativa	\N	\N
1962	237	34	\N	Asistente Administrativo	AC	35	96-2012	Acuerdo 49-2014	Asistente Administativo	\N	\N
1963	30	22	\N	Secretario Recepcionista I	AC	32	memo	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
1964	230	22	\N	Auxiliar	AC	48	Memo	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1965	187	23	\N	Defensor Público de Oficio	AC	41	me 424-2012	\N	Defensora Pública de Oficio	\N	\N
1966	10	22	\N	Defensor Público en Pasantía	AC	32	458/2012	\N	Defensora Pública en Pasantia	\N	\N
1967	3	22	\N	Conserje	AC	16	memo  461-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
1968	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1969	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1970	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1971	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1972	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1973	187	23	\N	Defensor Público de Oficio	AC	39	Me 469/2012	\N	Defensora Pública de Oficio	\N	\N
1974	238	83	\N	Mensajero	AC	35	ME-468/2012	Acuerdo 49-2014	Mensajera	\N	\N
1975	239	33	\N	Secretario Recepcionista	AC	35	ME-455/2012/DERH	Acuerdo 49-2014	Secretaria Recepcionista	\N	\N
1976	187	23	\N	Defensor Público de Oficio	AC	35	me 469/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
1977	187	23	\N	Defensor Público de Oficio	AC	35	me 469/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
1978	187	23	\N	Defensor Público de Oficio	AC	35	me 469/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
1979	187	23	\N	Defensor Público de Oficio	AC	35	me 469/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
1980	187	23	\N	Defensor Público de Oficio	AC	35	me 469/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
1981	195	81	\N	Defensor Público en Pasantía	AC	45	me 465/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
1982	226	29	\N	Defensor Público en Formación II	AC	36	me 480/2012	\N	Defensora Pública en Formación II	\N	\N
1983	240	91	\N	Analista de Medios	AC	35	me 478/2012	Oficio 50-2014-rrhh-clrp	Analista de Medios	\N	\N
1984	240	91	\N	Analista de Medios	AC	35	me 478/2012	Oficio 50-2014-rrhh-clrp	Analista de Medios	\N	\N
1985	242	91	\N	Asistente Administrativo	AC	35	ME-486/2012/DERH	Acuerdo 49-2014	Asistente Administativo	\N	\N
1986	1	22	\N	Asistente de Abogado	AC	24	me 463-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
1987	181	22	\N	Defensor Público en Formación I	AC	17	me 481-2012	Oficio 50-2014-rrhh-clrp	Defensora Publico en Formacion I	\N	\N
1988	30	12	\N	Secretario Recepcionista en la Sub-Jefatura	AC	35	me-488	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista en la Sub-Jefatura	\N	\N
1989	114	30	\N	Auxiliar Administrativo	AC	2	Me  494/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1990	35	24	\N	Auxiliar Administrativo	AC	36	ME 493/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1991	35	24	\N	Auxiliar Administrativo	AC	36	me 501/2012	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
1992	230	11	\N	Auxiliar	AC	36	me 503/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1993	244	11	\N	Auxiliar	AC	2	me 503/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1995	243	11	\N	Auxiliar	AC	2	ME 503-2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
1996	10	81	\N	Defensor Público en Pasantía	AC	43	m 513/2012	Oficio 50-2014-rrhh-clrp	Defensora Publico en Pasantia	\N	\N
1997	10	81	\N	Defensor Público en Pasantía	AC	43	m 513/2012	Oficio 50-2014-rrhh-clrp	Defensora Publico en Pasantia	\N	\N
1998	10	81	\N	Defensor Público en Pasantía	AC	43	m 513/2012	Oficio 50-2014-rrhh-clrp	Defensora Publico en Pasantia	\N	\N
1999	10	81	\N	Defensor Público en Pasantía	AC	23	me 513/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2000	10	81	\N	Defensor Público en Pasantía	AC	41	me 512/2012	\N	Defensora Pública en Pasantia	\N	\N
2001	30	22	\N	Secretario Recepcionista I	AC	35	me 531/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
2002	10	22	\N	Defensor Público en Pasantía	AC	17	me-521/2012	\N	Defensora Publico en Pasantia	\N	\N
2004	244	11	\N	Auxiliar	AC	51	me 519/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2005	244	11	\N	Auxiliar	AC	51	me 519/2012	Error	Auxiliar	\N	\N
2006	244	11	\N	Auxiliar	AC	51	me 519/2012	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2008	1	81	\N	Asistente de Abogado	AC	18	me 521/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2009	223	22	\N	Oficinista Notificador	AC	50	me 522/2012	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
2010	181	22	\N	Defensor Público de Planta I	AC	21	me 526/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública de Planta I	\N	\N
2011	181	22	\N	Defensor Público en Formación I	AC	21	me 526/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2012	243	11	\N	Auxiliar	AC	39	me 538-2012	Mal creado	Auxiliar	\N	\N
2013	3	22	\N	Conserje	AC	42	me 536/2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2014	4	22	\N	Defensor Público de Planta II	AC	11	Acuerdo 112-2012	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
2015	4	22	\N	Defensor Público de Planta I	AC	15	Acuerdo 114-2012 y solicitud de informatica	\N	Defensora Pública de Planta I	\N	\N
2016	4	22	\N	Defensor Público de Planta I	AC	13	118-2012	\N	Defensora Pública de Planta I	\N	\N
2017	281	22	\N	Defensor Público de Planta I	AC	23	113-2012	\N	Defensora Pública de Planta I	\N	\N
2018	4	22	\N	Defensor Público de Planta I	AC	22	Acuerdo 116-2012	Acuerdo 61-2014	Defensora Pública de Planta I	\N	\N
2019	4	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 117-2012	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
2020	4	22	\N	Defensor Público de Planta I	AC	38	Acuerdo 115-2012	\N	Defensora Pública de Planta I	\N	\N
2021	114	22	\N	Auxiliar Administrativo	AC	17	me 546/2012	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
2022	30	1	\N	Secretario Recepcionista	AC	35	me 547/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2023	113	92	\N	Programador	AC	35	me 548/2012	Oficio 50-2014-rrhh-clrp	Programadora	\N	\N
2024	30	14	\N	Secretario Recepcionista	AC	35	me 552/2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2025	114	22	\N	Auxiliar Administrativo	AC	13	me 554/2012	Oficio 50-2014-rrhh-clrp	Auxliar Administrativa	\N	\N
2026	1	23	\N	Asistente de Abogado	AC	35	me 559/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2027	282	98	\N	Auxiliar de Seguridad II	AC	35	ME-556/2012/DERH/RLRB/bl	\N	Auxiliar de Seguridad II	\N	\N
2028	187	23	\N	Defensor Público de Oficio	AC	39	me 557/2012	\N	Defensora Pública de Oficio	\N	\N
2029	187	23	\N	Defensor Público de Oficio	AC	39	me 557/2012	\N	Defensora Pública de Oficio	\N	\N
2030	187	23	\N	Defensor Público de Oficio	AC	39	me 557/2012	\N	Defensora Pública de Oficio	\N	\N
2031	187	23	\N	Defensor Público de Oficio	AC	51	me 557/2012	\N	Defensora Pública de Oficio	\N	\N
2032	181	22	\N	Defensor Público en Formación I	AC	33	me 560/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2033	181	22	\N	Defensor Público en Formación I	AC	33	me 560/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2034	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2035	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2036	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2037	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2038	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2039	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2040	181	22	\N	Defensor Público en Formación I	AC	22	me  574/2012	Oficio 50-2014-rrhh-clrp	Defensora Publico en Formacion I	\N	\N
2041	222	4	\N	Docente Capacitador	AC	44	me 575/2012	\N	Docente Capacitadora	\N	\N
2042	187	23	\N	Defensor Público de Oficio	AC	48	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2043	187	23	\N	Defensor Público de Oficio	AC	2	me 563/2012	\N	Defensora PUBLICO DE OFICIO	\N	\N
2044	99	81	\N	Operador Jurídico	AC	35	me 579/2012	Oficio 50-2014-rrhh-clrp	Operadora Jurídica	\N	\N
2045	99	81	\N	Operador Jurídico	AC	35	me 579/2012	\N	Operadora Jurídica	\N	\N
2046	187	23	\N	Defensor Público de Oficio	AC	23	me 563/2012	\N	Defensora Pública de Oficio	\N	\N
2047	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2048	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2049	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2050	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2051	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2052	187	23	\N	Defensor Público de Oficio	AC	12	convenio	\N	Defensora Pública de Oficio	\N	\N
2053	30	8	\N	Secretario Recepcionista	AC	35	Traslados 26-12-2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2054	92	23	\N	Abogado de Enlace	AC	48	Traslado	\N	Abogada de Enlace	\N	\N
2055	92	23	\N	Abogado de Enlace	AC	48	Traslado	\N	Abogada de Enlace	\N	\N
2056	181	22	\N	Defensor Público en Formación I	AC	8	Traslado	\N	Defensora Pública en Formación I	\N	\N
2057	181	22	\N	Defensor Público en Formación I	AC	23	Traslado	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2058	1	81	\N	Asistente de Abogado	AC	41	Traslado	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2059	1	22	\N	Asistente de Abogado	AC	41	Traslado	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2060	114	22	\N	Auxiliar Administrativo	AC	8	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2061	184	22	\N	Defensor Público Intercultural	AC	16	Traslado	\N	Defensora Pública Intercultural	\N	\N
2062	183	81	\N	Defensor Público en Formación I	AC	41	Traslado	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2063	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2068	244	11	\N	Auxiliar	AC	2	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2069	114	24	\N	Auxiliar Administrativo	AC	36	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2073	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2075	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2077	1	22	\N	Asistente de Abogado	AC	38	Traslado	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2078	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2079	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2080	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2081	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2082	244	11	\N	Auxiliar	AC	51	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2083	244	11	\N	Auxiliar	AC	39	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2084	244	11	\N	Auxiliar	AC	39	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2085	244	11	\N	Auxiliar	AC	39	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2086	244	11	\N	Auxiliar	AC	46	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2087	113	92	\N	Analista Programador	AC	35	Traslado	Oficio 50-2014-rrhh-clrp	Analista Programador	\N	\N
2088	94	93	\N	Técnico en Informática	AC	35	Traslado	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
2089	244	11	\N	Auxiliar	AC	47	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2090	244	11	\N	Auxiliar	AC	47	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2091	244	11	\N	Auxiliar	AC	47	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2092	244	11	\N	Auxiliar	AC	47	Traslado	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2093	92	23	\N	Abogado de Enlace	AC	47	Traslado	\N	Abogada de Enlace	\N	\N
2094	92	23	\N	Abogado de Enlace	AC	47	Traslado	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
2095	94	93	\N	Técnico en Informática	AC	35	Traslado	Oficio 50-2014-rrhh-clrp	Técnico en Informática	\N	\N
2096	10	22	\N	Defensor Público en Pasantía	AC	28	17/2013	\N	Defensora Pública en Pasantia	\N	\N
2097	226	30	\N	Defensor Público en Formación II	AC	2	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2098	226	22	\N	Defensor Público en Formación III	AC	6	abr-13	\N	Defensora Pública en Formación III	\N	\N
2099	226	22	\N	Defensor Público en Formación II	AC	32	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2100	226	22	\N	Defensor Público en Formación II	AC	32	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2101	226	22	\N	Defensor Público en Formación III	AC	11	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
2102	226	22	\N	Defensor Público en Formación III	AC	11	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
2103	226	22	\N	Defensor Público en Formación II	AC	23	abr-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2104	1	22	\N	Asistente de Abogado	AC	35	627-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2105	104	32	\N	Secretario Recepcionista	AC	35	624-2012	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2106	105	6	\N	Auxiliar Técnico	AC	35	623-2012	Oficio 50-2014-rrhh-clrp	Auxiliar Técnico	\N	\N
2107	12	82	\N	Piloto	AC	35	623/2012	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
2108	181	22	\N	Defensor Público en Formación I	AC	49	601-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2109	178	11	\N	Asignador	AC	2	626/2013	Oficio 50-2014-rrhh-clrp	Asignadora	\N	\N
2110	181	24	\N	Defensor Público en Formación I	AC	36	619/2012	\N	Defensora Pública en Fomación I	\N	\N
2111	181	24	\N	Defensor Público en Formación I	AC	36	619-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2112	1	22	\N	Asistente de Abogado	AC	34	572-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2113	1	22	\N	Asistente de Abogado	AC	34	572-2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2114	8	22	\N	Asistente Administrativo	AC	16	613-2012	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
2115	181	22	\N	Defensor Público en Formación I	AC	10	619/2013	\N	Defensora Pública en Fomación I	\N	\N
2116	181	26	\N	Defensor Público en Formación I	AC	1	619/2012	\N	Defensora Pública en Fomación I	\N	\N
2117	10	22	\N	Defensor Público en Pasantía	AC	5	622/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2118	10	24	\N	Defensor Público en Pasantía	AC	36	623/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2119	181	22	\N	Defensor Público en Formación I	AC	32	619/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2120	181	24	\N	Defensor Público en Formación I	AC	36	619/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2121	10	24	\N	Defensor Público en Pasantía	AC	36	619/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2122	10	24	\N	Defensor Público en Pasantía	AC	36	619/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2123	206	98	\N	Asistente Administrativo	AC	35	618/2012	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2124	1	22	\N	Asistente de Abogado	AC	35	600/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2125	1	22	\N	Asistente de Abogado	AC	35	600/2012	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2126	226	22	\N	Defensor Público en Formación III	AC	42	586/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación III	\N	\N
2127	226	22	\N	Defensor Público en Formación II	AC	41	592/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2128	10	24	\N	Defensor Público en Pasantía	AC	36	22-2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2129	3	22	\N	Conserje	AC	15	66-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2130	115	15	\N	Auxiliar	AC	35	nov-13	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2131	208	5	\N	Especialista en Organizacion y Metodos	AC	44	20-2013	Oficio 50-2014-rrhh-clrp	Especialista en Organizacion y Metodos	\N	\N
2132	181	24	\N	Defensor Público en Formación I	AC	36	74-2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2133	181	22	\N	Defensor Público en Formación I	AC	49	1199-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2134	3	22	\N	Conserje	AC	10	612-2012	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2135	96	21	\N	Auxiliar de Inventarios	AC	35	nov-13	Oficio 50-2014-rrhh-clrp	Auxiliar de Inventarios	\N	\N
2136	104	33	\N	Secretario Recepcionista	AC	35	48/2013	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2137	68	28	\N	Intérprete	AC	28	23/2013	Oficio 50-2014-rrhh-clrp	Interprete	\N	\N
2138	181	22	\N	Defensor Público en Formación I	AC	49	601-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2139	30	33	\N	Secretario	AC	35	16-2013	Oficio 50-2014-rrhh-clrp	Secretaria	\N	\N
2140	176	27	\N	Consultor	AC	35	14/2013	\N	Consultora	\N	\N
2141	157	28	\N	Experto Intercultural	AC	35	14/2013	\N	Experta Intercultural	\N	\N
2142	243	11	\N	Auxiliar	AC	48	14/2013	Oficio 50-2014-rrhh-clrp	Auxiliar	\N	\N
2143	181	81	\N	Defensor Público en Formación I	AC	45	14/2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2144	93	81	\N	Psicólogo	AC	11	14/2013	\N	Psicóloga	\N	\N
2145	10	24	\N	Defensor Público en Pasantía	AC	36	14-2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2146	10	24	\N	Defensor Público en Pasantía	AC	36	623-2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2147	123	98	\N	Asistente Administrativo	AC	35	14/2013	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2148	226	81	\N	Defensor Público en Formación II	AC	41	592/2012	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2149	6	105	\N	Trabajador Social	AC	2	14/2013	\N	Trabajadora Social	\N	\N
2150	6	25	\N	Trabajador Social	AC	43	14/2013	\N	Trabajadora Social	\N	\N
2151	6	105	\N	Trabajador Social	AC	2	14-2013	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
2152	181	22	\N	Defensor Público en Formación I	AC	23	14/2013	\N	Defensora Pública en Fomación I	\N	\N
2153	95	85	\N	Auxiliar de Mantenimiento	AC	35	14/2013	Oficio 50-2014-rrhh-clrp	Auxiliar de Mantenimiento	\N	\N
2154	229	14	\N	Auxiliar de Compras	AC	35	14/2013	Oficio 50-2014-rrhh-clrp	Auxiliar de Compras	\N	\N
2155	6	105	\N	Trabajador Social	AC	6	14/2013	\N	Trabajadora Social	\N	\N
2156	100	105	\N	Técnico en Trabajo Social	AC	38	14/2013	\N	Tecnico en Trabajo Social	\N	\N
2157	6	105	\N	Trabajador Social	AC	13	14/2013	\N	Trabajadora Social	\N	\N
2158	100	105	\N	Técnico en Trabajo Social	AC	29	14/2013	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
2159	100	105	\N	Técnico en Trabajo Social	AC	50	14/2013	\N	Tecnico en Trabajo Social	\N	\N
2160	100	105	\N	Técnico en Trabajo Social	AC	14	14-2013	Oficio 50-2014-rrhh-clrp	Tecnico en Trabajo Social	\N	\N
2161	100	105	\N	Técnico en Trabajo Social	AC	27	ene-13	\N	Tecnico en Trabajo Social	\N	\N
2162	100	105	\N	Técnico en Trabajo Social	AC	23	ene-13	\N	Tecnico en Trabajo Social	\N	\N
2163	6	105	\N	Trabajador Social	AC	8	ene-13	\N	Trabajadora Social	\N	\N
2164	6	105	\N	Trabajador Social	AC	41	ene-13	\N	Trabajadora Social	\N	\N
2165	6	105	\N	Trabajador Social	AC	22	ene-13	\N	Trabajadora Social	\N	\N
2166	6	105	\N	Trabajador Social	AC	41	ene-13	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
2167	104	22	\N	Secretario Recepcionista I	AC	31	ene-13	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista I	\N	\N
2168	163	30	\N	Defensor Público en Formación I	AC	2	ene-13	\N	Defensora Pública en Fomación I	\N	\N
2169	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2170	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2171	283	28	\N	Defensor Público Intercultural en Formacion II	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Defensora Pública Intercultural en Formacion II	\N	\N
2172	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	46	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2173	155	27	\N	Consultor	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Consultora	\N	\N
2174	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	46	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2175	284	23	\N	Asistente de Abogado	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2176	124	31	\N	Asistente Administrativo	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2177	124	31	\N	Asistente Administrativo	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2178	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	46	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2179	183	81	\N	Defensor Público en Formación I	AC	45	ene-13	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2180	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	46	ene-13	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2181	285	32	\N	Secretario Recepcionista	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2182	286	31	\N	Asistente Administrativo	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2183	125	4	\N	Asistente de Logística	AC	44	ene-13	Oficio 50-2014-rrhh-clrp	Asistente de Logistica	\N	\N
2184	1	24	\N	Asistente de Abogado	AC	36	Acuerdo 04-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2185	4	22	\N	Defensor Público de Planta I	AC	6	Acuerdo 01-2013	\N	Defensora Pública de Planta I	\N	\N
2186	287	5	\N	Jefe de la Sección de monitoreo y evaluación de proyectos	AC	44	Acuerdo 05-2013	Acuerdo 49-2014	Jefa de la Sección de monitoreo y evaluación de proyectos	\N	\N
2187	6	105	\N	Trabajador Social	AC	29	ene-13	\N	Trabajadora Social	\N	\N
2188	6	81	\N	Trabajador Social	AC	45	ene-13	Oficio 50-2014-rrhh-clrp	Trabajadora Social	\N	\N
2189	136	95	\N	Asesor Especifica en Planificación Estratégica	AC	35	ene-13	Oficio 50-2014-rrhh-clrp	Asesora Especifica en Planificación Estrategica	\N	\N
2192	290	5	\N	Coordinador de la Unidad Ejecutora. Préstamo BID No. 1905/OC-GU	AC	35	ME-28-2013/DERH/RLRB/bl	me-28-2013	oordinador de la Unidad Ejecutora. Préstamo BID No. 1905/OC-GU	\N	\N
2193	3	17	\N	Conserje	AC	35	107-2013	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2194	59	20	\N	Auxiliar de Tesorería	AC	35	ME-19-2013/DERH/RLRB/bl	Acuerdo 49-2014	Auxiliar de Tesorería	\N	\N
2195	291	8	\N	Asesora Jurídica	AC	35	127-2013-RRHH-LAMM/hgs	Oficio 50-2014-rrhh-clrp	Asesora Jurídica 	\N	\N
2196	292	91	\N	Analista en la Actualización y Visibilización de la Página Web y del Servicio Social	AC	35	148-2013-RRHH-LAMM/higsm	Oficio 50-2014-rrhh-clrp	Analista en la Actualización y Visibilización de la Página Web y del Servicio Social	\N	\N
2197	10	22	\N	Defensor Público en Pasantía	AC	24	189-2013-RRHH-LAMM	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2198	10	22	\N	Defensor Público en Pasantía	AC	23	190-2013-RRHH-LAMM	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2199	35	14	\N	Auxiliar Administrativo	AC	35	ME-58-2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2200	110	31	\N	Secretario Recepcionista III	AC	35	ME-72/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista III	\N	\N
2201	110	34	\N	secretario III	AC	35	ME-72/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	secretaria III	\N	\N
2202	35	81	\N	Auxiliar Administrativo	AC	45	ME-71/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2203	293	34	\N	secretario III	AC	35	ME72/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	secretaria III	\N	\N
2204	294	10	\N	secretario III	AC	35	ME84/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	secretaria III	\N	\N
2205	206	22	\N	Asistente Administrativo	AC	23	ME92/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2206	192	22	\N	Auxiliar Administrativo	AC	34	ME88/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2207	1	22	\N	Asistente de Abogado	AC	21	ME89/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2208	226	22	\N	Defensor Público en Formación II	AC	26	ME90/2013/DERH/RLRB	\N	Defensora Pública en Formación II	\N	\N
2209	93	25	\N	Psicólogo	AC	43	ME69/2013/DERH/RLRB	\N	Psicóloga	\N	\N
2210	35	22	\N	Auxiliar Administrativo	AC	23	ME92/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2211	4	22	\N	Defensor Público de Planta I	AC	13	\N	Acuerdo 49-2014	Defensora Pública de Planta I	\N	\N
2212	55	18	\N	Auxiliar de Presupuesto	AC	35	ME100/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar de Presupuesto	\N	\N
2217	295	19	\N	Auxiliar de Contabilidad	AC	35	ME100/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar de Contabilidad	\N	\N
2218	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2219	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2220	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2221	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2222	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2223	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2224	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2225	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2226	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2227	187	23	\N	Defensor Público de Oficio	AC	35	39-2013	\N	Defensora Pública de Oficio	\N	\N
2228	181	22	\N	Defensor Público en Formación I	AC	23	me108/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2229	35	9	\N	Auxiliar Administrativo	AC	35	ME112-2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2230	182	102	\N	Defensor Público en Formación II	AC	26	ME90/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2231	182	102	\N	Defensor Público en Formación II	AC	26	ME90-2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2232	296	14	\N	Auxiliar Administrativo en la Sección de Compras	AC	35	ME58-2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa en la Sección de Compras	\N	\N
2233	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2234	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2235	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2236	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2237	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2238	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2239	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2240	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2241	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2242	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2243	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2244	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2245	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2246	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2247	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2248	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2249	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2250	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2251	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2252	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2253	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2254	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2255	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2256	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2257	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2258	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2259	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2260	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2261	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2262	187	23	\N	Defensor Público de Oficio	AC	35	95-2013/DERH/RLRB	\N	Defensora Pública de Oficio	\N	\N
2263	192	22	\N	Auxiliar Administrativo	AC	50	ME-130/2013/DERH/RLRB	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2264	297	4	\N	Docente Capacitador	AC	44	me143-2013 DERH RLRB	Oficio 50-2014-rrhh-clrp	Docente Capacitadora	\N	\N
2265	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2266	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2267	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2268	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2269	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2270	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2271	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2272	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2273	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2274	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2275	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2276	187	23	\N	Defensor Público de Oficio	AC	35	ME-111-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2277	298	30	\N	Defensor Público en Formación II	AC	2	ME-146-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2278	298	9	\N	Defensor Público en Formación II	AC	35	ME-146-2013-DERH-RLRB	\N	Defensora Pública en Formación II	\N	\N
2279	298	9	\N	Defensor Público en Formación II	AC	35	ME-146-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2280	298	9	\N	Defensor Público en Formación II	AC	35	ME-146-2013-DERH-RLRB	\N	Defensora Pública en Formación II	\N	\N
2281	183	81	\N	Defensor Público en Pasantía	AC	45	ME-124-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2282	183	81	\N	Defensor Público en Pasantía	AC	45	ME-124-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2283	183	81	\N	Defensor Público en Pasantía	AC	45	ME-124-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2284	183	81	\N	Defensor Público en Pasantía	AC	45	ME-124-2013-DERH-RLRB	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2285	284	23	\N	Asistente Administrativo	AC	32	me-120-213-derh-rlrb	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2286	284	23	\N	Asistente Administrativo	AC	32	me-120-213-derh-rlrb	Oficio 50-2014-rrhh-clrp	Asistente Administativo	\N	\N
2287	235	14	\N	Auxiliar Administrativo	AC	35	ME-100-2013-DERH-RLRB-bl	Acuerdo 49-2014	auxiliar administrativa	\N	\N
2288	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2289	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2290	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2291	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2292	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2293	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2294	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2295	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2296	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2297	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2298	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2299	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2300	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2301	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2302	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2303	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2304	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2305	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2306	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2307	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2308	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2309	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2310	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2311	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2312	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2313	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2314	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2315	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2316	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2317	187	23	\N	Defensor Público de Oficio	AC	35	141-2013-DERH-RLRB	\N	Defensora Pública de Oficio	\N	\N
2318	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2319	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2320	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2321	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2322	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2323	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2324	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2325	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2326	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2327	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2328	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2329	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2330	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2331	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2332	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2333	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2334	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2335	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2336	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2337	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2338	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2339	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2340	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2341	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2342	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2343	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2344	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2345	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2346	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2347	187	23	\N	Defensor Público de Oficio	AC	35	me-152-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2348	10	22	\N	Defensor Público en Pasantía	AC	41	me-131-2013-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
2349	10	22	\N	Defensor Público en Pasantía	AC	41	me-131-2013-derh-rlrb	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2350	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
2351	300	23	\N	Asistente Administrativo	AC	32	me-120-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
2352	300	23	\N	Asistente Administrativo	AC	32	me-120-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
2353	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2354	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2355	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2356	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2357	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2358	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2359	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2360	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2361	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2362	186	81	\N	Defensor Público de Oficio	AC	45	ME 121-2013-DERH	\N	Defensora Pública de Oficio	\N	\N
2363	186	81	\N	Defensor Público de Oficio	AC	14	121-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2364	186	81	\N	Defensor Público de Oficio	AC	14	121-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2365	186	81	\N	Defensor Público de Oficio	AC	14	121-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2366	186	81	\N	Defensor Público de Oficio	AC	14	121-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2367	186	81	\N	Defensor Público de Oficio	AC	14	121-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2368	187	23	\N	Defensor Público de Oficio	AC	14	me-163-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2369	187	23	\N	Defensor Público de Oficio	AC	14	me-163-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2370	187	23	\N	Defensor Público de Oficio	AC	14	me-163-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2371	187	23	\N	Defensor Público de Oficio	AC	14	me-163-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2372	187	23	\N	Defensor Público de Oficio	AC	23	163-2012-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2373	187	23	\N	Defensor Público de Oficio	AC	23	163-2012-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2374	187	23	\N	Defensor Público de Oficio	AC	23	163-2012-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2375	187	23	\N	Defensor Público de Oficio	AC	23	163-2012-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2376	182	81	\N	Defensor Público en Formación II	AC	14	me-121-2012-derh	\N	Defensora Pública en Formación II	\N	\N
2377	182	81	\N	Defensor Público en Formación II	AC	14	me-121-2012-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2378	192	81	\N	Auxiliar Administrativo	AC	14	me-121-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2379	192	81	\N	Auxiliar Administrativo	AC	14	me-121-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2380	181	22	\N	Defensor Público en Formación I	AC	24	me-153-2013-derh-rlrb	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2381	181	22	\N	Defensor Público en Formación I	AC	24	me-153-2013-derh-rlrb	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2382	30	81	\N	Secretario II	AC	45	me-166-2013-derh	Oficio 50-2014-rrhh-clrp	Secretaria II	\N	\N
2383	30	81	\N	Secretario II	AC	45	me-166-2013-derh	Oficio 50-2014-rrhh-clrp	Secretaria II	\N	\N
2384	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2385	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2386	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2387	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2388	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2389	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2390	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2391	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2392	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2393	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2394	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2395	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2396	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2397	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2398	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2399	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2400	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2401	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2402	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2403	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2404	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2405	187	23	\N	Defensor Público de Oficio	AC	8	168-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2406	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2407	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2408	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2409	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2410	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2411	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2412	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2413	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2414	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2415	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2416	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2417	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2418	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2419	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2420	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2421	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2422	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2423	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2424	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2425	187	23	\N	Defensor Público de Oficio	AC	35	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2426	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2427	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2428	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2429	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2430	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2431	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2432	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2433	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2434	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2435	187	23	\N	Defensor Público de Oficio	AC	38	174-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2436	192	22	\N	Auxiliar Administrativo	AC	14	me-173-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2437	192	22	\N	Auxiliar Administrativo	AC	14	me-173-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2438	192	22	\N	Auxiliar Administrativo	AC	14	me-173-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2439	187	23	\N	Defensor Público de Oficio	AC	38	179-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2440	187	23	\N	Defensor Público de Oficio	AC	38	179-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2441	187	23	\N	Defensor Público de Oficio	AC	38	179-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2442	187	23	\N	Defensor Público de Oficio	AC	38	179-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2443	187	23	\N	Defensor Público de Oficio	AC	38	179-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
2444	192	30	\N	Auxiliar Administrativo	AC	2	188-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2445	192	30	\N	Auxiliar Administrativo	AC	2	188-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2446	192	27	\N	Auxiliar Administrativo	AC	35	186-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2447	192	27	\N	Auxiliar Administrativo	AC	35	186-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2448	208	5	\N	Especialista en Monitoreo y Evaluacion	AC	44	191-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en Monitoreo y Evaluacion	\N	\N
2449	208	5	\N	Especialista en Monitoreo y Evaluacion	AC	44	191-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en Monitoreo y Evaluacion	\N	\N
2450	212	5	\N	Especialista en Formulación de Planes, programas y proyectos	AC	44	191-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en Formulación de Planes, programas y proyectos 	\N	\N
2451	212	5	\N	Especialista en Formulación de Planes, programas y proyectos	AC	44	191-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en Formulación de Planes, programas y proyectos 	\N	\N
2452	187	23	\N	Defensor Público de Oficio	AC	6	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2453	187	23	\N	Defensor Público de Oficio	AC	6	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2454	187	23	\N	Defensor Público de Oficio	AC	38	185-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2455	187	23	\N	Defensor Público de Oficio	AC	38	185-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2456	187	23	\N	Defensor Público de Oficio	AC	18	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2457	187	23	\N	Defensor Público de Oficio	AC	18	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2458	187	23	\N	Defensor Público de Oficio	AC	35	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2459	187	23	\N	Defensor Público de Oficio	AC	35	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2460	187	23	\N	Defensor Público de Oficio	AC	35	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2461	187	23	\N	Defensor Público de Oficio	AC	35	184-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2462	187	23	\N	Defensor Público de Oficio	AC	24	289-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2463	187	23	\N	Defensor Público de Oficio	AC	24	289-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2464	187	23	\N	Defensor Público de Oficio	AC	24	289-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2465	187	23	\N	Defensor Público de Oficio	AC	24	289-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2466	185	81	\N	Psicólogo	AC	14	33-2013	\N	Psicóloga	\N	\N
2467	96	21	\N	Auxiliar de Inventarios	AC	35	me-204-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar de Inventarios	\N	\N
2641	11	22	\N	Coordinador Departamental	AC	31	Acuerdo 107-2013	\N	Coordinadora Departamental	\N	\N
2468	96	21	\N	Auxiliar de Inventarios	AC	35	me-204-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar de Inventarios	\N	\N
2469	96	21	\N	Auxiliar de Inventarios	AC	35	me-204-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar de Inventarios	\N	\N
2470	301	26	\N	Perito para consultoria	AC	1	206-2013-derh	\N	Perito para consultoria	\N	\N
2471	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	me-210-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2472	302	93	\N	Técnico en Informática	AC	35	me-212-2013-derh	Oficio 50-2014-rrhh-clrp	Técnica en Informatica	\N	\N
2473	302	93	\N	Técnico en Informática	AC	35	me-212-2013-derh	Oficio 50-2014-rrhh-clrp	Técnica en Informatica	\N	\N
2474	12	82	\N	Piloto	AC	35	me-218-2013-derh	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
2475	12	82	\N	Piloto	AC	35	me-218-2013-derh	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
2476	206	22	\N	Asistente Administrativo	AC	38	me-216-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
2477	206	22	\N	Asistente Administrativo	AC	38	me-216-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa	\N	\N
2478	186	102	\N	Defensor Público de Oficio	AC	14	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2479	186	102	\N	Defensor Público de Oficio	AC	14	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2480	186	102	\N	Defensor Público de Oficio	AC	8	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2481	186	102	\N	Defensor Público de Oficio	AC	8	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2482	186	102	\N	Defensor Público de Oficio	AC	13	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2483	186	102	\N	Defensor Público de Oficio	AC	13	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2484	186	102	\N	Defensor Público de Oficio	AC	6	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2485	186	102	\N	Defensor Público de Oficio	AC	6	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2486	186	102	\N	Defensor Público de Oficio	AC	6	me-221-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2489	3	26	\N	Conserje	AC	1	me-231-2013-derh	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2490	303	91	\N	Encargado de Relaciones Públicas	AC	35	Acuerdo 39-2013	\N	Encargada de Relaciones Públicas	\N	\N
2491	4	102	\N	Defensor Público de Planta II	AC	22	Acuerdo 45-2013	Acuerdo 49-2014	Defensora Pública de Planta II	\N	\N
2492	4	4	\N	Defensor Público de Planta I	AC	44	Acuerdo 47-2013	OFICIO 46-2016	Defensora Publico de Planta I	\N	\N
2493	4	102	\N	Defensor Público de Planta I	AC	11	Acuerdo 46-2013	Acuerdo 49-2014	Defensora Publico de Planta I	\N	\N
2494	1	24	\N	Asistente de Abogado	AC	36	37-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2495	1	102	\N	Asistente de Abogado	AC	33	Acuerdo 38-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2497	4	102	\N	Defensor Público de Planta I	AC	19	Acuerdo 49-2013	\N	Defensora Pública de Planta I	\N	\N
2498	304	5	\N	Especialista Financiero en la Unidad Ejecutora del Prgrama BID-IDPP	AC	44	Acuerdo 53-2013	Acuerdo 49-2014	Especialista Financiero en la Unidad Ejecutora del Prgrama BID-IDPP	\N	\N
2499	187	23	\N	Defensor Público de Oficio	AC	19	me-214-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2500	187	23	\N	Defensor Público de Oficio	AC	19	me-214-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2501	187	23	\N	Defensor Público de Oficio	AC	49	me-213-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2502	187	23	\N	Defensor Público de Oficio	AC	49	me-213-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2503	181	22	\N	Defensor Público en Formación I	AC	13	me-238-2013-derh	\N	Defensora Pública en Formación I	\N	\N
2504	181	22	\N	Defensor Público en Formación I	AC	13	me-238-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2505	305	91	\N	Asistente Administrativo de Relaciones Publicas	AC	35	me-227-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa de Relaciones Públicas	\N	\N
2506	305	91	\N	Asistente Administrativo de Relaciones Publicas	AC	35	me-227-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente Administrativa de Relaciones Públicas	\N	\N
2507	115	15	\N	Auxiliar en la Sección de Almacen	AC	35	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar en la Sección de Almacen	\N	\N
2508	115	15	\N	Auxiliar en la Sección de Almacen	AC	35	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar en la Sección de Almacen	\N	\N
2509	306	30	\N	Defensor Público en Formación II	AC	2	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2510	306	30	\N	Defensor Público en Formación II	AC	2	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2511	306	30	\N	Defensor Público en Formación II	AC	2	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2512	226	22	\N	Defensor Público en Formación II	AC	26	me-246-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2513	226	22	\N	Defensor Público en Formación II	AC	26	me-246-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2514	226	22	\N	Defensor Público en Formación II	AC	18	ME-246-2013-DERH	\N	Defensora Pública en Formacion II	\N	\N
2515	226	22	\N	Defensor Público en Formación II	AC	18	ME-246-2013-DERH	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2516	1	23	\N	Asistente de Abogado	AC	35	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2517	1	23	\N	Asistente de Abogado	AC	35	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2518	226	22	\N	Defensor Público en Formación II	AC	19	ME-230-2013-DERH	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2519	226	22	\N	Defensor Público en Formación II	AC	19	ME-230-2013-DERH	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2520	1	24	\N	Asistente de Abogado	AC	36	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2521	1	24	\N	Asistente de Abogado	AC	36	me-235-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2522	35	22	\N	Auxiliar Administrativo	AC	35	me-243-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2523	35	22	\N	Auxiliar Administrativo	AC	35	me-243-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2524	181	24	\N	Defensor Público en Formación I	AC	36	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2525	181	24	\N	Defensor Público en Formación I	AC	36	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2526	306	30	\N	Defensor Público en Formación I	AC	2	me-230-2013-derh	\N	Defensora Pública en Formación I	\N	\N
2527	306	30	\N	Defensor Público en Formación I	AC	2	me-230-2013-derh	\N	Defensora Pública en Formación I	\N	\N
2528	1	22	\N	Asistente de Abogado	AC	32	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2529	1	22	\N	Asistente de Abogado	AC	32	me-230-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2530	307	22	\N	Auxiliar Administrativo e Interprete Intercultural	AC	32	me-253-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa e Interprete Intercultural	\N	\N
2531	192	22	\N	Auxiliar Administrativo	AC	22	me-254-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2532	192	22	\N	Auxiliar Administrativo	AC	22	me-254-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2533	3	22	\N	Conserje	AC	22	me-260-2013-derh	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2534	192	22	\N	Auxiliar Administrativo	AC	5	me-251-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2535	192	22	\N	Auxiliar Administrativo	AC	5	me-251-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2536	93	25	\N	Psicólogo	AC	43	me-2472013-derh	\N	Psicóloga	\N	\N
2537	93	25	\N	Psicólogo	AC	43	me-2472013-derh	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
2538	10	22	\N	Defensor Público en Pasantía	AC	11	me-267-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2539	10	22	\N	Defensor Público en Pasantía	AC	11	me-267-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2540	226	22	\N	Defensor Público en Formación II	AC	27	me-257-2013-derh	\N	Defensora Pública en Formacion II	\N	\N
2541	226	22	\N	Defensor Público en Formación II	AC	27	me-257-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2542	226	22	\N	Defensor Público en Formación II	AC	20	me-257-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2543	226	22	\N	Defensor Público en Formación II	AC	20	me-257-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2544	226	22	\N	Defensor Público en Formación II	AC	20	me-257-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2545	226	22	\N	Defensor Público en Formación II	AC	27	me-257-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formacion II	\N	\N
2546	187	22	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2547	187	22	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2548	187	22	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2549	187	22	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2550	187	23	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2551	187	23	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2552	187	23	\N	Defensor Público de Oficio	AC	34	me-262-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2553	308	17	\N	Asistente de la Sección de Servicios Generales	AC	35	me-264-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de la Sección de Servicios Generales	\N	\N
2554	308	17	\N	Asistente de la Sección de Servicios Generales	AC	35	me-264-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de la Sección de Servicios Generales	\N	\N
2555	95	85	\N	Auxiliar de Mantenimiento	AC	35	me-268-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar de Mantenimiento	\N	\N
2556	95	85	\N	Auxiliar de Mantenimiento	AC	35	me-268-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar de Mantenimiento	\N	\N
2557	30	6	\N	Secretaria Recepcionista	AC	35	me-295-2013-derh	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2558	30	6	\N	Secretaria Recepcionista	AC	35	me-295-2013-derh	Oficio 50-2014-rrhh-clrp	Secretaria Recepcionista	\N	\N
2559	192	22	\N	Auxiliar Administrativo	AC	34	me-284-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2560	192	22	\N	Auxiliar Administrativo	AC	34	me-284-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2561	10	22	\N	Defensor Público en Pasantía	AC	31	me-284-2013-derh	\N	Defensora Pública en Pasantia	\N	\N
2562	10	22	\N	Defensor Público en Pasantía	AC	31	me-284-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2563	117	23	\N	Auxiliar Administrativo	AC	35	me-276-2013	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2564	117	23	\N	Auxiliar Administrativo	AC	35	me-276-2013	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2565	93	81	\N	Psicólogo	AC	45	me-293-2013-derh	Oficio 50-2014-rrhh-clrp	Psicóloga	\N	\N
2566	309	81	\N	Recepcionista	AC	45	me-320-2013-derh	\N	Recepcionista	\N	\N
2567	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	me-352-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2568	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	me-352-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2569	195	81	\N	Defensor Público en Pasantía	AC	45	me-271-2013-derh	\N	Defensora Pública en Pasantia	\N	\N
2570	195	81	\N	Defensor Público en Pasantía	AC	45	me-271-2013-derh	\N	Defensora Pública en Pasantia	\N	\N
2571	192	26	\N	Auxiliar Administrativo	AC	1	me-313-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2572	192	26	\N	Auxiliar Administrativo	AC	1	me-313-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2573	92	23	\N	Abogado de Enlace	AC	35	me-302-2013-derh	\N	Abogada de Enlace	\N	\N
2574	92	23	\N	Abogado de Enlace	AC	35	me-302-2013-derh	Oficio 50-2014-rrhh-clrp	Abogada de Enlace	\N	\N
2575	181	22	\N	Defensor Público en Formación I	AC	14	me-310-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2576	181	22	\N	Defensor Público en Formación I	AC	14	me-310-2013-derh	\N	Defensora Pública en Fomación I	\N	\N
2577	310	24	\N	Asesor Técnico y de apoyo	AC	36	me-299-2013-derh	Oficio 50-2014-rrhh-clrp	Asesora Técnica y de apoyo	\N	\N
2578	192	22	\N	Auxiliar Administrativo	AC	31	me-288-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2579	183	81	\N	Defensor Público en Formación I	AC	45	me-299-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2580	183	81	\N	Defensor Público en Formación I	AC	45	me-299-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2581	183	81	\N	Defensor Público en Formación I	AC	45	me-299-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2582	195	81	\N	Defensor Público en Formación I	AC	45	me-299-2013-derh	\N	Defensora Pública en Formación I	\N	\N
2583	195	81	\N	Defensor Público en Formación I	AC	45	me-299-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2584	187	23	\N	Defensor Público de Oficio	AC	46	me-299-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2585	77	24	\N	Sub Coordinador Defensores Públicos en Formación	AC	36	Acuerdo 81-2013	Acuerdo 49-2014	Sub Coordinadora Defensores Públicos en Formación	\N	\N
2586	1	22	\N	Asistente de Abogado	AC	14	Acuerdo 78-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2587	1	22	\N	Asistente de Abogado	AC	4	Acuerdo 77-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2588	1	9	\N	Asistente de Abogado	AC	35	Acuerdo 76-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2589	203	93	\N	Técnico en Informática	AC	35	Acuerdo 84-2013	Acuerdo 49-2014	Técnica en Informatica	\N	\N
2590	1	22	\N	Asistente de Abogado	AC	12	Acuerdo 86-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2591	1	22	\N	Asistente de Abogado	AC	23	Acuerdo 87-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2592	311	81	\N	Sub-Coordinador	AC	45	Acuerdo 85-2013	Acuerdo 49-2014	Sub-Coordinadora	\N	\N
2593	312	4	\N	Capacitador	AC	35	me318-2013-derh	Oficio 50-2014-rrhh-clrp	Capacitadora	\N	\N
2594	312	4	\N	Capacitador	AC	44	me-318-2013-derh	Oficio 50-2014-rrhh-clrp	Capacitadora	\N	\N
2595	186	102	\N	Defensor Público de Oficio	AC	23	me-331-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2596	186	102	\N	Defensor Público de Oficio	AC	23	me-331-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2597	186	102	\N	Defensor Público de Oficio	AC	23	me-331-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2598	186	102	\N	Defensor Público de Oficio	AC	23	me-331-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2599	186	81	\N	Defensor Público de Oficio	AC	23	me-331-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2600	186	81	\N	Defensor Público de Oficio	AC	14	me-332-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2601	186	81	\N	Defensor Público de Oficio	AC	14	me-332-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2602	192	22	\N	Auxiliar Administrativo	AC	6	me-339-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2603	192	22	\N	Auxiliar Administrativo	AC	6	me-339-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2604	187	23	\N	Defensor Público de Oficio	AC	24	me-337-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2607	313	5	\N	Especialista en Infraestructura del Proyecto BID	AC	43	me-352-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en Infraestructura del Proyecto BID	\N	\N
2608	186	81	\N	Defensor Público de Oficio	AC	14	me-345-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2609	186	81	\N	Defensor Público de Oficio	AC	14	me-345-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2610	187	23	\N	Defensor Público de Oficio	AC	12	me-56-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2611	10	22	\N	Defensor Público en Pasantía	AC	41	me-346-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2612	98	25	\N	Analista de Información I	AC	43	me-349-2013	\N	Analista de Informacion I	\N	\N
2613	98	25	\N	Analista de Información I	AC	43	me-349-2013	Oficio 50-2014-rrhh-clrp	Analista de Informacion I	\N	\N
2614	10	22	\N	Defensor Público en Pasantía	AC	32	ME-420-2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2615	10	22	\N	Defensor Público en Pasantía	AC	32	ME-420-2013	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2616	192	22	\N	Auxiliar Administrativo	AC	33	ME-418-2013	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2617	192	22	\N	Auxiliar Administrativo	AC	33	ME-418-2013	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2618	1	22	\N	Asistente de Abogado	AC	17	Acuerdo noventa y tres guion dos mil trece	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2619	314	5	\N	Secretario de la Unidad Coejecutura del Préstamo BID	AC	43	ME-436-2013-DERH	Oficio 50-2014-rrhh-clrp	Secretaria de la Unidad Coejecutura del Préstamo BID	\N	\N
2620	135	95	\N	Asesor de Cooperación Externa	AC	35	ME-422-2013-DERH	Oficio 50-2014-rrhh-clrp	Asesora de Cooperación Externa	\N	\N
2621	309	17	\N	Recepcionista	AC	35	me-450-2013-derh	Oficio 50-2014-rrhh-clrp	Recepcionista	\N	\N
2622	297	4	\N	Docente Capacitador	AC	44	447-2013-derh	Oficio 50-2014-rrhh-clrp	Docente Capacitadora	\N	\N
2623	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	47	me-441-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2624	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	39	me-423-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2625	315	30	\N	Defensor Público de Enlace	AC	22	me-410-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública de Enlace	\N	\N
2626	1	22	\N	Asistente de Abogado	AC	28	me-424-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2627	1	25	\N	Asistente de Abogado	AC	43	me-434-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2628	307	22	\N	Auxiliar Administrativo e Interprete Intercultural	AC	11	me-446-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa e Interprete Intercultural	\N	\N
2629	307	22	\N	Auxiliar Administrativo e Interprete Intercultural	AC	11	me-446-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa e Interprete Intercultural	\N	\N
2630	192	22	\N	Auxiliar Administrativo	AC	32	me-445-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2631	226	29	\N	Defensor Público en Formación II	AC	36	me-454-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación II	\N	\N
2633	1	22	\N	Asistente	AC	14	Acuerdo 98-2013	Acuerdo 49-2014	Asistente	\N	\N
2634	30	3	\N	Secretario	AC	35	Acuerdo 103-2013	Acuerdo 49-2014	Secretaria	\N	\N
2635	1	22	\N	Asistente de Abogado	AC	29	Acuerdo 104-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
2636	68	22	\N	Intérprete	AC	20	Acuerdo 105-2013	\N	Interprete	\N	\N
2642	17	1	\N	Asistente de Dirección General	AC	35	Acuerdo 21-2013	Acuerdo 49-2014	Asistente de Dirección General	\N	\N
2643	94	92	\N	Técnico	AC	35	jul-98	Acuerdo 66-2014	Tecnico	\N	\N
2644	3	17	\N	Conserje	AC	14	me-472-2013-derh	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2645	186	81	\N	Defensor Público de Oficio	AC	27	me-357-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2646	223	24	\N	Oficinista Notificador	AC	36	me-474-2013-derh	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
2647	223	24	\N	Oficinista Notificador	AC	36	me-474-2013-derh	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
2648	223	24	\N	Oficinista Notificador	AC	36	me-474-2013-derh	Oficio 50-2014-rrhh-clrp	Oficinista Notificadora	\N	\N
2649	192	22	\N	Auxiliar Administrativo	AC	35	me-477-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2650	113	23	\N	Programador	AC	35	me-476-2013-derh	Oficio 50-2014-rrhh-clrp	Programadora	\N	\N
2651	10	22	\N	Defensor Público en Pasantía	AC	30	me-491-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2652	3	102	\N	Conserje	AC	8	me-490-2013-derh	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2653	10	22	\N	Defensor Público en Pasantía	AC	41	me-492-2013-derh	\N	Defensora Pública en Pasantia	\N	\N
2654	100	105	\N	Técnico en Trabajo Social	AC	23	me-468-2013-derh	\N	Técnico en Trabajo Social	\N	\N
2655	1	81	\N	Asistente de Abogado	AC	5	me-486-2013-derh	Oficio 50-2014-rrhh-clrp	Asistente de Abogado	\N	\N
2656	3	84	\N	Conserje	AC	35	me-100-2013-derh	Oficio 50-2014-rrhh-clrp	Conserje	\N	\N
2657	195	81	\N	Defensor Público en Pasantía	AC	41	me-458-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Pasantia	\N	\N
2658	243	11	\N	Auxiliar del Departamento de Asignaciones	AC	48	me-461-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2659	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	51	me-461-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2660	117	23	\N	auxiliar administrativo	AC	35	me-505-2013-derh	Oficio 50-2014-rrhh-clrp	auxiliar administrativa	\N	\N
2661	181	22	\N	Defensor Público en Formación I	AC	21	me-499-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2662	181	23	\N	Defensor Público en Formación I	AC	35	me-500-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2663	10	22	\N	Defensor Público en Pasantía	AC	22	1410-2013-rrhh	\N	Defensora Pública en Pasantia	\N	\N
2664	181	22	\N	Defensor Público en Formación I	AC	28	me-501-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2665	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	39	me-505-2013	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2666	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	39	me-505-2013	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2667	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	39	me-505-2013	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2668	244	11	\N	Auxiliar del Departamento de Asignaciones	AC	39	me-505-2013	Oficio 50-2014-rrhh-clrp	Auxiliar del Departamento de Asignaciones	\N	\N
2669	181	23	\N	Defensor Público en Formación I	AC	35	me-508-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2670	181	23	\N	Defensor Público en Formación I	AC	35	me-508-2013-derh	Oficio 50-2014-rrhh-clrp	Defensora Pública en Formación I	\N	\N
2671	181	22	\N	Defensor Público en Formación I	AC	25	ME-509-2013DERH	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2672	181	22	\N	Defensor Público en Formación I	AC	25	ME-509-2013DERH	Oficio 50-2014-rrhh-clrp	Defensora Pública en Fomación I	\N	\N
2673	123	98	\N	ASISTENTE ADMINISTRATIVO DE SEGURIDAD	AC	35	ME-510-2013DERH	Oficio 50-2014-rrhh-clrp	ASISTENTE ADMINISTRATIVA DE SEGURIDAD	\N	\N
2674	295	19	\N	Auxiliar de Contabilidad	AC	35	ME-527-2013DERH	Oficio 50-2014-rrhh-clrp	Auxiliar de Contabilidad	\N	\N
2675	35	22	\N	Auxiliar Administrativo	AC	6	ME-528-2013DERH	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2676	10	22	\N	Defensor Público en Pasantía	AC	27	ME-529-2013	\N	Defensora Pública en Pasantia	\N	\N
2677	35	22	\N	Auxiliar Administrativo	AC	22	ME-517-2013DERH	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa	\N	\N
2678	12	82	\N	Piloto	AC	35	ME-518-2013DERH	Oficio 50-2014-rrhh-clrp	Piloto	\N	\N
2679	187	23	\N	Defensor Público de Oficio	AC	16	me-514-2013-derh	\N	Defensora Pública de Oficio	\N	\N
2680	316	14	\N	Auxiliar Administrativo en la Sección de Compras	AC	35	me-531-2013-derh	Oficio 50-2014-rrhh-clrp	Auxiliar Administrativa en la Sección de Compras	\N	\N
2681	317	88	\N	Asesor	AC	35	me-539-2013-derh	Oficio 50-2014-rrhh-clrp	Asesora 	\N	\N
2682	212	5	\N	Especialista en la elaboracion seguimiento y evaluacion de proyectos	AC	44	me-520-2013-derh	Oficio 50-2014-rrhh-clrp	Especialista en la elaboracion seguimiento y evaluacion de proyectos	\N	\N
2683	318	9	\N	Asesor en Monitoreo de Garantias Constitucionales	AC	35	me-542-2013-derh	Oficio 50-2014-rrhh-clrp	Asesora en Monitoreo de Garantias Constitucionales	\N	\N
2684	318	9	\N	Asesor en Monitoreo de Garantias Constitucionales	AC	35	me-542-2013-derh	Oficio 50-2014-rrhh-clrp	Asesora en Monitoreo de Garantias Constitucionales	\N	\N
2685	317	88	\N	Asesor	AC	35	me-539-2013-derh	Oficio 50-2014-rrhh-clrp	Asesora	\N	\N
2686	103	90	\N	Analista de Informacion	AC	44	50-2014-RRHH-CLRP	\N	Analista de Informacion	\N	\N
2687	292	91	\N	Asesor Especialista	AC	35	50-2014-DERH-CLRP	\N	Asesora Especialista	\N	\N
2688	129	10	\N	Asesor Especialista IV	AC	35	50-2014-RRHH-CLRP	\N	Asesora Especialista IV	\N	\N
2689	135	95	\N	Asesor Especialista I	AC	35	50-2014-RRHH-CLRP	\N	Asesora Especialista I	\N	\N
2690	221	5	\N	Asesor Especialista VI	AC	43	50-2014-RRHH-CLRP	\N	Asesora Especialista VI	\N	\N
2691	97	86	\N	Asesor Juridico I	AC	35	50-2014-RRHH-CLRP	\N	Asesora Juridica I	\N	\N
2692	97	86	\N	Asesor Juridico II	AC	35	50-2014-RRHH-CLRP	\N	Asesora Juridica II	\N	\N
2693	97	86	\N	Asesor Juridico II	AC	35	50-2014-RRHH-CLRP	\N	Asesora Juridica II	\N	\N
2694	152	86	\N	Asesor Juridico II	AC	35	50-2014-RRHH-CLRP	\N	Asesora Juridica II	\N	\N
2695	319	31	\N	Administrativo I	AC	35	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2696	319	31	\N	Administrativo I	AC	35	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2697	319	4	\N	Administrativo I	AC	44	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2698	319	24	\N	Administrativo I	AC	36	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2699	319	24	\N	Administrativo I	AC	36	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2700	319	24	\N	Administrativo I	AC	36	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2701	319	24	\N	Administrativo I	AC	36	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2702	319	98	\N	Administrativo I	AC	35	50-2014-RRHH-CLRP	\N	Administrativa I	\N	\N
2703	319	86	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2704	319	86	\N	Administrativo II	AC	35	50-2014-rrhh-clrp	\N	Administrativa II	\N	\N
2705	319	10	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2706	319	22	\N	Administrativo I	AC	38	50-2014-rrhh-clrp	\N	Adminstrativa I	\N	\N
2707	319	22	\N	Administrativo I	AC	50	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2708	319	22	\N	Administrativo I	AC	18	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2709	319	22	\N	Administrativo I	AC	7	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2710	319	22	\N	Administrativo I	AC	19	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2711	319	22	\N	Administrativo I	AC	32	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2712	319	22	\N	Administrativo I	AC	32	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2713	319	22	\N	Administrativo I	AC	5	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
2714	308	17	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2715	125	4	\N	Asistente de Logistica	AC	44	50-2014-rrhh-clrp	\N	Asistente de Logistica	\N	\N
2716	209	6	\N	Auditor Informatico	AC	35	50-2014-rrhh-clrp	\N	Auditora Informatica	\N	\N
2717	114	9	\N	Técnico Administrativo IV	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa IV	\N	\N
2718	192	88	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2719	114	14	\N	Técnico Administrativo IV	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa IV	\N	\N
2720	114	14	\N	Técnico Administrativo IV	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa IV	\N	\N
2721	192	19	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2722	192	21	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2723	95	17	\N	Técnico Administrativo II	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa II	\N	\N
2724	95	17	\N	Técnico Administrativo II	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa II	\N	\N
2725	95	17	\N	Técnico Administrativo III	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa III	\N	\N
2726	192	18	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2727	105	94	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
2728	130	17	\N	Técnico Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa I	\N	\N
2729	130	17	\N	Técnico Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa I	\N	\N
2730	192	82	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2731	192	15	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2732	105	6	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
2733	105	6	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
2734	192	16	\N	Técnico Administrativo V	AC	43	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2735	192	15	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2736	192	15	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2737	192	21	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2738	95	85	\N	Técnico Administrativo III	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa III	\N	\N
2739	222	4	\N	Docente Capacitador I	AC	44	50-2014-rrhh-clrp	\N	Docente Capacitadora I	\N	\N
2740	297	4	\N	Docente Capacitador II	AC	44	50-2014-rrhh-clrp	\N	Docente Capacitadora II	\N	\N
2741	297	4	\N	Docente Capacitador II	AC	44	50-2014-rrhh-clrp	\N	Docente Capacitadora II	\N	\N
2742	212	5	\N	Asesor Especialista II	AC	43	50-2014-rrhh-clrp	\N	Asesora Especialista II	\N	\N
2743	212	5	\N	Asesor Especialista II	AC	43	50-2014-rrhh-clrp	\N	Asesora Especialista II 	\N	\N
2744	208	5	\N	Asesor Especialista III	AC	43	50-2014-rrhh-clrp	\N	Asesora Especialista III	\N	\N
2745	133	8	\N	Asesor Especialista V	AC	35	50-2014-rrhh-clrp	\N	Asesora Especialista V	\N	\N
2746	133	8	\N	Asesor Especialista V	AC	35	50-2014-rrhh-clrp	\N	Asesora Especialista V	\N	\N
2747	192	10	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2748	12	82	\N	Conductor Automovilista	AC	35	50-2014-rrhh-clrp	\N	Conductora Automovilista	\N	\N
2749	12	82	\N	Conductor Automovilista	AC	35	50-2014-rrhh-clrp	\N	Conductora Automovilista	\N	\N
2750	12	82	\N	Conductor Automovilista	AC	35	50-2014-rrhh-clrp	\N	Conductora Automovilista	\N	\N
2751	12	82	\N	Conductor Automovilista	AC	35	50-2014-rrhh-clrp	\N	Conductora Automovilista	\N	\N
2752	113	92	\N	Analista Desarrollador	AC	35	50-2014-rrhh-clrp	\N	Analista Desarrolladora	\N	\N
2753	113	92	\N	Desarrollador	AC	35	50-2014-rrhh-clrp	\N	Desarrolladora	\N	\N
2754	113	92	\N	Desarrollador	AC	35	50-2014-rrhh-clrp	\N	Desarrolladora	\N	\N
2755	126	31	\N	Psicólogo de Recursos Humanos	AC	35	50-2014-rrhh-clrp	\N	Psicóloga de Recursos Humanos	\N	\N
2756	309	81	\N	Recepcionista	AC	45	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2757	309	104	\N	Recepcionista	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2758	309	17	\N	Recepcionista	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2759	30	8	\N	Recepcionisto	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2760	30	81	\N	Recepcionisto III	AC	45	50-2014-rrhh-clrp	\N	Recepcionista III	\N	\N
2761	30	25	\N	Recepcionisto	AC	43	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2762	30	33	\N	Recepcionisto I	AC	35	50-2014-rrhh-clrp	\N	Recepcionista I	\N	\N
2763	30	6	\N	Recepcionisto	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2764	30	81	\N	Recepcionisto	AC	45	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2765	30	32	\N	Recepcionisto	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2766	30	14	\N	Recepcionista	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2767	30	12	\N	Recepcionisto	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2768	30	10	\N	Recepcionisto II	AC	35	50-2014-rrhh-clrp	\N	Recepcionista II	\N	\N
2769	30	34	\N	Recepcionisto	AC	35	50-2014-rrhh-clrp	\N	Recepcionista	\N	\N
2770	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2771	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2772	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2773	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2774	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2775	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2776	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica II	\N	\N
2777	3	22	\N	Auxiliar de Servicios	AC	4	50-2014-idpp-clrp	\N	Auxiliar de Servicios	\N	\N
2778	3	22	\N	Auxiliar de Servicios III	AC	38	50-2014-idpp-clrp	\N	Auxiliar de Servicios III	\N	\N
2779	3	22	\N	Auxiliar de Servicios II	AC	50	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2780	3	22	\N	Auxiliar de Servicios II	AC	10	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2781	3	22	\N	Auxiliar de Servicios II	AC	7	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2782	3	22	\N	Auxiliar de Servicios I	AC	8	50-2014-rrhh-clrp	\N	Auxiliar de Servicios I	\N	\N
2783	3	26	\N	Auxiliar de Servicios III	AC	1	50-2014-rrhh-clrp	\N	Auxiliar de Servicios III	\N	\N
2784	3	22	\N	Auxiliar de Servicios II	AC	12	50-2014-rrhh-idpp	\N	Auxiliar de Servicios II	\N	\N
2785	3	22	\N	Auxiliar de Servicios III	AC	14	50-2014-rrhh-clrp	\N	Auxiliar de Servicios III	\N	\N
2786	3	22	\N	Auxiliar de Servicios II	AC	16	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2787	3	22	\N	Auxiliar de Servicios II	AC	15	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2788	3	22	\N	Auxiliar de Servicios II	AC	17	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2789	3	22	\N	Auxiliar de Servicios II	AC	18	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2790	3	22	\N	Auxiliar de Servicios I	AC	13	50-2014-rrhh-clrp	\N	Auxiliar de Servicios I	\N	\N
2791	3	22	\N	Auxiliar de Servicios III	AC	49	50-2014-rrhh-clrp	\N	Auxiliar de Servicios III	\N	\N
2792	3	22	\N	Auxiliar de Servicios I	AC	42	50-2014-rrhh-clrp	\N	Auxiliar de Servicios I	\N	\N
2793	3	22	\N	Auxiliar de Servicios II	AC	19	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2794	3	22	\N	Auxiliar de Servicios III	AC	32	50-2014-rrhh-clrp	\N	Auxiliar de Servicios III	\N	\N
2795	3	22	\N	Auxiliar de Servicios III	AC	5	50-2014-rrhh-clrp	\N	Auxiliar de Servicios III	\N	\N
2796	3	22	\N	Auxiliar de Servicios II	AC	20	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2797	3	84	\N	Auxiliar de Servicios VI	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios VI	\N	\N
2798	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2799	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2800	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2801	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2802	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2803	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2804	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2805	3	84	\N	Auxiliar de Servicios V	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2806	3	84	\N	Auxiliar de Servicios IV	AC	35	50-2014-rrhh-clrp	\N	Auxiliar de Servicios IV	\N	\N
2807	3	22	\N	Auxiliar de Servicios II	AC	21	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2808	3	22	\N	Auxiliar de Servicios II	AC	22	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2809	3	22	\N	Auxiliar de Servicios V	AC	23	50-2014-rrhh-clrp	\N	Auxiliar de Servicios V	\N	\N
2810	3	22	\N	Auxiliar de Servicios II	AC	24	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2811	3	22	\N	Auxiliar de Servicios II	AC	26	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2812	3	22	\N	Auxiliar de Servicios II	AC	30	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2813	3	22	\N	Auxiliar de Servicios II	AC	27	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2814	3	22	\N	Auxiliar de Servicios II	AC	41	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2815	3	22	\N	Auxiliar de Servicios II	AC	28	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2816	3	22	\N	Auxiliar de Servicios II	AC	29	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2817	3	22	\N	Auxiliar de Servicios II	AC	25	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2818	3	22	\N	Auxiliar de Servicios II	AC	31	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2819	3	22	\N	Auxiliar de Servicios II	AC	33	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2820	3	22	\N	Auxiliar de Servicios IV	AC	6	50-2014-rrhh-clrp	\N	Auxiliar de Servicios IV	\N	\N
2821	3	22	\N	Auxiliar de Servicios II	AC	34	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
2822	192	81	\N	Técnico Administrativo V	AC	45	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2823	192	90	\N	Técnico Administrativo V	AC	44	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2824	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2825	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2826	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2827	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2828	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2829	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2830	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2831	192	22	\N	Técnico Administrativo V	AC	50	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2832	192	22	\N	Técnico Administrativo V	AC	11	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2833	192	22	\N	Técnico Administrativo V	AC	8	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2834	192	26	\N	Técnico Administrativo V	AC	1	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2835	192	26	\N	Técnico Administrativo V	AC	1	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2836	192	26	\N	Técnico Administrativo V	AC	1	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2837	192	26	\N	Técnico Administrativo V	AC	1	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2838	192	22	\N	Técnico Administrativo V	AC	12	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2839	192	81	\N	Técnico Administrativo V	AC	14	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2840	192	22	\N	Técnico Administrativo V	AC	14	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2841	192	22	\N	Técnico Administrativo V	AC	17	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2842	192	22	\N	Técnico Administrativo V	AC	18	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2843	192	22	\N	Técnico Administrativo V	AC	32	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2844	192	22	\N	Técnico Administrativo V	AC	5	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2845	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2846	192	23	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2847	192	28	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2848	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2849	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2850	192	18	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2851	192	23	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2852	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2853	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2854	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2855	192	22	\N	Técnico Administrativo V	AC	23	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2856	192	22	\N	Técnico Administrativo V	AC	31	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2857	192	30	\N	Técnico Administrativo V	AC	2	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2858	192	30	\N	Técnico Administrativo V	AC	2	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2859	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2860	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2861	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2862	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2863	192	22	\N	Técnico Administrativo V	AC	34	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2864	192	22	\N	Técnico Administrativo V	AC	34	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
2865	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2866	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2867	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2868	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2869	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2870	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2871	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2872	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2873	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2874	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2875	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2876	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2877	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2878	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2879	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2880	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2881	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2882	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2883	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2884	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2885	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2886	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2887	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2888	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2889	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2890	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2891	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2892	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2893	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2894	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2895	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2896	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
2897	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2898	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2899	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2900	1	25	\N	Procurador Juridico	AC	43	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2901	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2902	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2903	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2904	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2905	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2906	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2907	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2908	1	24	\N	Procurador Juridico	AC	36	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2909	1	22	\N	Procurador Juridico	AC	38	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2910	1	22	\N	Procurador Juridico	AC	38	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2911	1	22	\N	Procurador Juridico	AC	38	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2912	1	22	\N	Procurador Juridico	AC	50	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2913	1	22	\N	Procurador Juridico	AC	10	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2914	1	22	\N	Procurador Juridico	AC	10	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2915	1	22	\N	Procurador Juridico	AC	10	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2916	1	22	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2917	1	22	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2918	1	22	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2919	1	22	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2920	1	22	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2921	1	22	\N	Procurador Juridico	AC	7	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2922	1	22	\N	Procurador Juridico	AC	7	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2923	1	22	\N	Procurador Juridico	AC	8	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2924	1	22	\N	Procurador Juridico	AC	8	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2925	1	22	\N	Procurador Juridico	AC	8	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2926	1	26	\N	Procurador Juridico	AC	1	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2927	1	26	\N	Procurador Juridico	AC	1	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2928	1	26	\N	Procurador Juridico	AC	1	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2929	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2930	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2931	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2932	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2933	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2934	1	81	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2935	1	81	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2936	1	22	\N	Procurador Juridico	AC	12	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2937	1	22	\N	Procurador Juridico	AC	15	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2938	1	22	\N	Procurador Juridico	AC	17	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2939	1	22	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2940	1	22	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2941	1	22	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2942	1	22	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2943	1	22	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2944	1	81	\N	Procurador Juridico	AC	18	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2945	1	22	\N	Procurador Juridico	AC	49	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2946	1	22	\N	Procurador Juridico	AC	42	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2947	1	22	\N	Procurador Juridico	AC	19	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2948	1	22	\N	Procurador Juridico	AC	19	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2949	1	22	\N	Procurador Juridico	AC	32	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2950	1	22	\N	Procurador Juridico	AC	32	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2951	1	22	\N	Procurador Juridico	AC	32	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2952	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2953	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2954	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2955	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2956	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2957	1	22	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2958	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2959	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2960	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2961	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2962	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2963	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2964	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2965	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2966	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2967	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2968	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2969	1	22	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2970	1	22	\N	Procurador Juridico	AC	21	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2971	1	22	\N	Procurador Juridico	AC	22	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2972	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2973	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2974	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2975	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2976	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2977	1	22	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2978	1	22	\N	Procurador Juridico	AC	24	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2979	1	22	\N	Procurador Juridico	AC	24	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2980	1	22	\N	Procurador Juridico	AC	26	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2981	1	22	\N	Procurador Juridico	AC	26	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2982	1	22	\N	Procurador Juridico	AC	26	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2983	1	22	\N	Procurador Juridico	AC	30	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2984	1	22	\N	Procurador Juridico	AC	41	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2985	1	22	\N	Procurador Juridico	AC	41	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2986	1	22	\N	Procurador Juridico	AC	41	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2987	1	22	\N	Procurador Juridico	AC	28	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2988	1	22	\N	Procurador Juridico	AC	29	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2989	1	30	\N	Procurador Juridico	AC	2	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2990	1	22	\N	Procurador Juridico	AC	6	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2991	1	22	\N	Procurador Juridico	AC	6	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2992	1	22	\N	Procurador Juridico	AC	34	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2993	1	22	\N	Procurador Juridico	AC	34	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
2994	93	22	\N	Psicólogo	AC	23	ME-560-2013-DERH-RLRB	\N	Psicóloga	\N	\N
2995	10	22	\N	Defensor Público en Pasantía	AC	35	ME-558-2013-DERH-RLRB	\N	Defensora Pública en Pasantia	\N	\N
2996	10	22	\N	Defensor Público en Pasantía	AC	35	ME-558-2013-DERH-RLRB	\N	Defensora Pública en Pasantia	\N	\N
2997	226	22	\N	Defensor Público en Formación II	AC	5	ME-558-2013-DERH-RLRB	\N	Defensora Pública en Formacion II	\N	\N
2998	306	30	\N	Defensor Público en Formación III	AC	2	ME-555-2013-DERH-RLRB	\N	Defensora Pública en Formación III	\N	\N
2999	226	22	\N	Defensor Público en Formación III	AC	30	ME-555-2013-DERH-RLRB	\N	Defensora Pública en Formación III	\N	\N
3000	226	22	\N	Defensor Público en Formación III	AC	30	ME-555-2013-DERH-RLRB	\N	Defensora Pública en Formación III	\N	\N
3001	319	26	\N	Administrativo I	AC	1	554-2013-DERH-RLRB	\N	Administrativa I	\N	\N
3002	319	26	\N	Administrativo I	AC	1	554-2013-DERH-RLRB	\N	Administrativa I	\N	\N
3003	97	86	\N	Asesor Juridico II	AC	35	50-2014-rrhh-clrp	\N	Asesora Juridica II	\N	\N
3004	97	86	\N	Asesor Juridico II	AC	35	50-2014-rrhh-clrp	\N	Asesora Juridica II	\N	\N
3005	97	86	\N	Asesor Juridico I	AC	35	50-2014-rrhh-clrp	\N	Asesora Juridica I	\N	\N
3006	97	86	\N	Asesor Juridico I	AC	35	50-2014-rrhh-clrp	\N	Asesora Juridica I	\N	\N
3007	152	86	\N	Asesor Juridico II	AC	35	50-2014-rrhh-clrp	\N	Asesora Juridica II	\N	\N
3008	136	95	\N	Asesor Especialista VI	AC	35	50-2014-rrhh-clrp	\N	Asesora Especialista VI	\N	\N
3009	226	24	\N	Defensor Público en Formación II	AC	36	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3010	226	24	\N	Defensor Público en Formación II	AC	36	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3011	306	30	\N	Defensor Público en Formación I	AC	23	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3012	182	81	\N	Defensor Público en Formación II	AC	45	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3013	182	81	\N	Defensor Público en Formación II	AC	45	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3014	183	81	\N	Defensor Público en Formación I	AC	8	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3015	183	81	\N	Defensor Público en Formación I	AC	8	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3016	182	81	\N	Defensor Público en Formación II	AC	8	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3017	182	81	\N	Defensor Público en Formación II	AC	8	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3018	182	81	\N	Defensor Público en Formación II	AC	18	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3019	182	81	\N	Defensor Público en Formación II	AC	18	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3020	30	6	\N	Recepcionisto I	AC	35	50-2014-rrhh-clrp	\N	Recepcionista I	\N	\N
3021	1	29	\N	Procurador Juridico	AC	36	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3022	1	29	\N	Procurador Juridico	AC	36	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3023	1	29	\N	Procurador Juridico	AC	36	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3024	30	8	\N	Recepcionisto III	AC	35	50-2014-rrhh-clrp	\N	Recepcionista III	\N	\N
3025	1	30	\N	Procurador Juridico	AC	2	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3026	1	30	\N	Procurador Juridico	AC	2	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3027	1	30	\N	Procurador Juridico	AC	2	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3028	30	12	\N	Recepcionisto II	AC	35	50-2014-rrhh-clrp	\N	Recepcionista II	\N	\N
3029	95	85	\N	Técnico Administrativo III	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa III	\N	\N
3030	95	85	\N	Técnico Administrativo III	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa III	\N	\N
3031	6	105	\N	Trabajador Social	AC	2	50-2014-rrhh	\N	Trabajadora Social	\N	\N
3032	6	105	\N	Trabajador Social	AC	2	50-2014-rrhh	\N	Trabajadora Social	\N	\N
3033	6	105	\N	Trabajador Social	AC	2	50-2014-rrhh	\N	Trabajadora Social	\N	\N
3034	319	22	\N	Administrativo I	AC	5	50-2014-rrhh	\N	Administrativa I	\N	\N
3035	319	22	\N	Administrativo I	AC	5	50-2014-rrhh	\N	Administrativa I	\N	\N
3036	319	22	\N	Administrativo I	AC	5	50-2014-rrhh	\N	Administrativa I	\N	\N
3037	319	34	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3038	319	34	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3039	319	34	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3040	1	23	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3041	1	23	\N	Procurador Juridico	AC	35	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3042	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3043	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3044	99	81	\N	Operador Jurídico	AC	45	50-2014-rrhh	\N	Operadora Jurídica	\N	\N
3045	99	81	\N	Operador Jurídico	AC	45	50-2014-rrhh	\N	Operadora Jurídica	\N	\N
3046	99	81	\N	Operador Jurídico	AC	45	50-2014-rrhh	\N	Operadora Jurídica	\N	\N
3047	99	81	\N	Operador Jurídico	AC	45	50-2014-rrhh	\N	Operadora Jurídica	\N	\N
3048	99	81	\N	Operador Jurídico	AC	45	50-2014-rrhh	\N	Operadora Jurídica	\N	\N
3049	8	30	\N	Administrativo I	AC	2	50-2014-rrhh	\N	Administrativa I	\N	\N
3050	8	30	\N	Administrativo I	AC	2	50-2014-rrhh	\N	Administrativa I	\N	\N
3051	192	22	\N	Técnico Administrativo V	AC	12	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3052	192	22	\N	Técnico Administrativo V	AC	12	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3053	1	22	\N	Procurador Juridico	AC	7	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3054	1	22	\N	Procurador Juridico	AC	7	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3055	1	22	\N	Procurador Juridico	AC	7	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3056	319	22	\N	Administrativo I	AC	24	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3057	6	105	\N	Trabajador Social	AC	29	50-2014rrhh	\N	Trabajadora Social	\N	\N
3058	319	22	\N	Administrativo I	AC	8	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3059	1	22	\N	Procurador Juridico	AC	50	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3060	1	22	\N	Procurador Juridico	AC	50	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3061	192	81	\N	Técnico Administrativo V	AC	18	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3062	192	81	\N	Técnico Administrativo V	AC	18	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3063	1	23	\N	Procurador Juridico	AC	35	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3064	1	23	\N	Procurador Juridico	AC	35	50-2014-rrhh	\N	Procuradora Juridica	\N	\N
3065	319	22	\N	Administrativo I	AC	18	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3066	30	32	\N	Recepcionisto II	AC	35	50-2014-rrhh	\N	Recepcionista II	\N	\N
3067	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3068	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3069	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3070	1	81	\N	Procurador Juridico	AC	45	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3071	1	81	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3072	1	81	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3073	1	81	\N	Procurador Juridico	AC	5	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3074	1	81	\N	Procurador Juridico	AC	6	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3075	1	81	\N	Procurador Juridico	AC	6	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3076	1	81	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3077	1	81	\N	Procurador Juridico	AC	23	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3078	1	81	\N	Procurador Juridico	AC	8	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3079	1	81	\N	Procurador Juridico	AC	8	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3080	1	81	\N	Procurador Juridico	AC	42	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3081	1	81	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3082	1	81	\N	Procurador Juridico	AC	11	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3083	1	22	\N	Procurador Juridico	AC	13	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3084	183	81	\N	Defensor Público en Formación I	AC	45	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3085	183	81	\N	Defensor Público en Formación I	AC	45	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3086	183	81	\N	Defensor Público en Formación I	AC	45	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3087	30	31	\N	Recepcionisto II	AC	35	50-2014-rrhh-clrp	\N	Recepcionista II	\N	\N
3151	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3088	306	30	\N	Defensor Público en Formación I	AC	2	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3089	306	30	\N	Defensor Público en Formación I	AC	2	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3090	306	30	\N	Defensor Público en Formación I	AC	2	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3091	306	30	\N	Defensor Público en Formación I	AC	2	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3092	1	81	\N	Procurador Juridico	AC	26	50-2014-RRHH	\N	Procuradora Juridica	\N	\N
3093	1	81	\N	Procurador Juridico	AC	26	50-2014-RRHH	\N	Procuradora Juridica	\N	\N
3094	319	98	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3095	182	81	\N	Defensor Público en Formación II	AC	41	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3096	182	81	\N	Defensor Público en Formación II	AC	41	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3097	208	5	\N	Asesor Especialista III	AC	44	50-2014-rrhh-clrp	\N	Asesora Especialista III	\N	\N
3098	3	22	\N	Auxiliar de Servicios I	AC	47	50-2014-rrhh-clrp	\N	Auxiliar de Servicios I	\N	\N
3099	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3100	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3101	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3102	192	22	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3103	192	21	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3104	192	21	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3105	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3106	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3107	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3108	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3109	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3110	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3111	30	81	\N	Recepcionisto I	AC	45	50-2014-rrhh-clrp	\N	Recepcionista I	\N	\N
3112	30	81	\N	Recepcionisto I	AC	45	50-2014-rrhh-clrp	\N	Recepcionista I	\N	\N
3113	192	23	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3114	192	23	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3115	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
3116	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
3117	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
3118	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	50-2014-rrhh-clrp	\N	Auxiliar de Ingreso de Informacion	\N	\N
3119	319	31	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3120	319	31	\N	Administrativo I	AC	35	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3121	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3122	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3123	192	22	\N	Técnico Administrativo V	AC	11	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3124	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3125	113	23	\N	Analista Desarrollador	AC	35	50-2014-rrhh-clrp	\N	Analista Desarrolladora	\N	\N
3126	192	19	\N	Técnico Administrativo V	AC	35	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3127	95	85	\N	Técnico Administrativo II	AC	35	50-2014-rrhh	\N	Técnica Administrativa II	\N	\N
3128	95	85	\N	Técnico Administrativo II	AC	35	50-2014-rrhh	\N	Técnica Administrativa II	\N	\N
3129	10	22	\N	Defensor Público en Pasantía	AC	27	50-2014-rrhh	\N	Defensora Pública en Pasantia	\N	\N
3130	192	22	\N	Técnico Administrativo V	AC	11	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3131	192	22	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-idpp	\N	Técnica Administrativa V	\N	\N
3132	12	82	\N	Conductor Automovilista	AC	35	50-2014-rrhh	\N	Conductora Automovilista	\N	\N
3133	192	24	\N	Técnico Administrativo V	AC	36	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3134	114	14	\N	Técnico Administrativo IV	AC	35	50-2014-rrhh	\N	Técnica Administrativa IV	\N	\N
3135	114	14	\N	Técnico Administrativo IV	AC	35	50-2014-rrhh	\N	Técnica Administrativa IV	\N	\N
3136	192	22	\N	Técnico Administrativo V	AC	14	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3137	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3138	192	30	\N	Técnico Administrativo V	AC	2	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3139	192	30	\N	Técnico Administrativo V	AC	2	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3140	192	30	\N	Técnico Administrativo V	AC	2	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3141	192	9	\N	Técnico Administrativo V	AC	22	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3142	192	22	\N	Técnico Administrativo V	AC	38	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3143	1	22	\N	Procurador Juridico	AC	24	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3144	1	22	\N	Procurador Juridico	AC	24	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3145	192	20	\N	Técnico Administrativo V	AC	35	50-2014-rrhh-clrp	\N	Técnica Administrativa V	\N	\N
3146	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3147	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3148	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3149	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3150	319	24	\N	Administrativo I	AC	36	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3152	319	22	\N	Administrativo I	AC	5	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3153	319	22	\N	Administrativo I	AC	7	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3154	319	22	\N	Administrativo I	AC	7	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3155	319	22	\N	Administrativo I	AC	32	50-2014-rrhh	\N	Administrativa I	\N	\N
3156	319	22	\N	Administrativo I	AC	32	50-2014-rrhh	\N	Administrativa I	\N	\N
3157	319	22	\N	Administrativo I	AC	24	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3158	319	22	\N	Administrativo I	AC	24	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3159	319	22	\N	Administrativo I	AC	19	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3160	319	22	\N	Administrativo I	AC	19	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3161	319	22	\N	Administrativo I	AC	50	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3162	319	22	\N	Administrativo I	AC	50	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3163	319	22	\N	Administrativo I	AC	18	50-2014-rrhh-clrp	\N	Administrativa I	\N	\N
3164	1	22	\N	Procurador Juridico	AC	30	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3165	93	25	\N	Psicólogo	AC	43	50-2014-rrhh-clrp	\N	Psicóloga	\N	\N
3166	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	50-2014-rrhh-clrp	\N	Auxiliar Técnica en Informatica I	\N	\N
3167	108	25	\N	Asistente de Psicología	AC	43	50-2014-rrhh-clrp	\N	Asistente de Psicologia	\N	\N
3168	108	25	\N	Asistente de Psicología	AC	43	50-2014-rrhh-clrp	\N	Asistente de Psicologia	\N	\N
3169	182	81	\N	Defensor Público en Formación II	AC	41	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3170	1	81	\N	Procurador Juridico	AC	41	50-2014-rrhh-clrp	\N	Procuradora Juridica	\N	\N
3171	182	81	\N	Defensor Público en Formación II	AC	26	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3172	182	81	\N	Defensor Público en Formación II	AC	26	50-2014-rrhh-clrp	\N	Defensora Pública en Formacion II	\N	\N
3173	183	81	\N	Defensor Público en Pasantía	AC	27	50-2014-rrhh-clrp	\N	Defensora Pública en Pasantia	\N	\N
3174	183	81	\N	Defensor Público en Pasantía	AC	27	50-2014-rrhh-clrp	\N	Defensora Pública en Pasantia	\N	\N
3175	182	81	\N	Defensor Público en Pasantía	AC	27	50-2014-rrhh-clrp	\N	Defensora Pública en Pasantia	\N	\N
3176	3	22	\N	Auxiliar de Servicios I	AC	8	50-2014-rrhh-clrp	\N	Auxiliar de Servicios I	\N	\N
3177	320	5	\N	Asesor Especialista II	AC	43	50-2014-rrhh-clrp	\N	Asesora Especialista II	\N	\N
3178	321	5	\N	Asesor Especialista II	AC	43	50-2014-rrhh-clrp	\N	Asesora Especialista II	\N	\N
3179	322	4	\N	Docente Capacitador I	AC	44	565-2013-derh-rlrb	\N	Docente Capacitadora I	\N	\N
3180	323	4	\N	Docente Capacitador I	AC	44	me-565-2013-derh-rlrb	\N	Docente Capacitadora I	\N	\N
3181	324	88	\N	Facilitador	AC	35	me-565-2013-derh-rlrb	\N	Facilitadora	\N	\N
3182	1	22	\N	Asistente de Abogado	AC	11	Acuerdo 119-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3183	1	22	\N	Asistente de Abogado	AC	50	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3184	171	22	\N	Asistente Administrativo Financiero	AC	16	Acuerdo 119-2013	Acuerdo 40-2015	Asistente Administrativa Financiero	\N	\N
3185	22	23	\N	Asistente Administrativo	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente Administrativa	\N	\N
3186	325	92	\N	Analista Desarrollador	AC	35	me-565-2013-derh	\N	Analista Desarrolladora	\N	\N
3187	192	21	\N	Técnico Administrativo V	AC	35	me-547-2013-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3188	1	22	\N	Procurador Juridico	AC	16	me-004-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3189	57	21	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 119-2013	\N	Auxiliar de Inventarios	\N	\N
3190	35	14	\N	Auxiliar Administrativo	AC	35	Acuerdo No 119-2013	\N	Auxiliar Administrativa	\N	\N
3191	22	82	\N	Asistente Administrativo	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente Administrativa	\N	\N
3192	3	22	\N	Auxiliar de Servicios II	AC	10	50-2014-rrhh-clrp	\N	Auxiliar de Servicios II	\N	\N
3193	151	90	\N	Asistente	AC	44	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente	\N	\N
3194	30	25	\N	Recepcionisto III	AC	43	50-2014-rrhh-clrp	\N	Recepcionista III	\N	\N
3195	30	25	\N	Recepcionisto III	AC	43	50-2014-rrhh-clrp	\N	Recepcionista III	\N	\N
3196	290	5	\N	Coordinador de la Unidad Ejecutora. Préstamo BID No. 1905/OC-GU	AC	44	me-28-2013-DERH-RLRB-bl	Acuerdo 49-2014	oordinador de la Unidad Ejecutora. Préstamo BID No. 1905/OC-GU	\N	\N
3197	47	83	\N	Mensajero	AC	35	Acuerdo No 119-2013	\N	Mensajera	\N	\N
3198	47	83	\N	Mensajero	AC	35	Acuerdo No 119-2013	\N	Mensajera	\N	\N
3199	239	33	\N	Secretaria Recepcionista	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Secretaria Recepcionista	\N	\N
3200	141	92	\N	Coordinador de la Sección de Análisis y Desarrollo	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Coordinadora de la Sección de Análisis y Desarrollo	\N	\N
3201	205	92	\N	Administrador de Base de Datos	AC	35	Acuerdo No 119-2013	\N	Administradora de Base de Datos	\N	\N
3202	123	98	\N	Administrativo III	AC	35	me-023-2014-derh-rlrb	\N	Administrativa III	\N	\N
3203	326	5	\N	Asesor Especialista III	AC	43	me-035-2014-derh-rlrb	ene-15	Asesora Especialista III	\N	\N
3204	113	92	\N	Programador de Informática	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Programadora de Informatica	\N	\N
3205	170	92	\N	Sub Coordinador de la Sección de Análisis y Desarrollo	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Sub Coordinadora de la Sección de Análisis y Desarrollo	\N	\N
3206	137	95	\N	Asistente de la Cooperación Externa	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente de la Cooperación Externa	\N	\N
3207	95	85	\N	Auxiliar de Mantenimiento	AC	35	Acuerdo 119-2013	Acuerdo 49-2014	Auxiliar de Mantenimiento	\N	\N
3208	192	22	\N	Técnico Administrativo V	AC	16	me-004-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3209	192	22	\N	Técnico Administrativo V	AC	34	me-005-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3210	138	93	\N	Coordinador de Soporte Técnico	AC	35	Acuerdo No 119-2013	\N	Coordinadora de Soporte Técnico	\N	\N
3211	10	22	\N	Defensor Público en Pasantía	AC	11	002-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3212	35	30	\N	Auxiliar Administrativo	AC	2	Acuerdo No 19-2013	OFICIO 46-2016-RRHH	Auxiliar Administrativa	\N	\N
3213	1	22	\N	Asistente de Abogado	AC	33	Acuerdo 119-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3214	143	17	\N	Jefe de Sección de Servicios Generales	AC	35	Acuerdo No 119-2013	\N	Jefa de Sección de Servicios Generales	\N	\N
3215	35	20	\N	Auxiliar Administrativo	AC	35	Acuerdo No 119-2013	\N	Auxiliar Administrativa	\N	\N
3216	171	22	\N	Asistente Administrativo Financiero	AC	41	Acuerdo No 119-2013	\N	Asistente Administrativa Financiero	\N	\N
3217	1	22	\N	Asistente de Abogado	AC	41	Acuerdo No 19-2013	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3218	192	30	\N	Técnico Administrativo V	AC	2	008-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3219	9	21	\N	Asistente Administrativo	AC	35	Acuerdo No 119-2013	Acuerdo 49-2014	Asistente Administrativa	\N	\N
3220	4	22	\N	Defensor Público de Planta I	AC	11	Acuerdo No 1-2014	Acuerdo 49-2014	Defensora Pública de Planta Adolescentes I	\N	\N
3221	4	22	\N	Defensor Público de Planta I	AC	41	Acuerdo No 01-2014	\N	Defensora Pública de Planta I	\N	\N
3222	4	28	\N	Defensor Público de Planta I y Encargado de la Coordinacion de Enfoque Intercultural	AC	35	Acuerdo 01-2014	Acuerdo 49-2014	Defensora Pública de Planta I y Encargada de la Coordinacion de Enfoque Intercultural	\N	\N
3223	4	22	\N	Defensor Público de Planta I y Coordinador	AC	42	Acuerdo No 01-2014	Acuerdo 49-2014	Defensora Pública de Planta I y Coordinador 	\N	\N
3224	1	22	\N	Asistente de Abogado	AC	11	Acuerdo 02-2014	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3225	38	14	\N	Auxiliar de Compras	AC	35	Acuerdo 07-2014	\N	Auxiliar de Compras	\N	\N
3226	181	22	\N	Defensor Público en Formación I	AC	21	50-2014-rrhh-clrp	\N	Defensora Pública en Formación I	\N	\N
3227	192	30	\N	Técnico Administrativo V	AC	2	008-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3228	181	22	\N	Defensor Público en Formación I	AC	34	016-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3229	197	30	\N	Defensor Público en Pasantía	AC	2	me-021-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3230	183	22	\N	Defensor Público en Pasantía	AC	27	50-2014-rrhh-clrp	\N	Defensora Pública en Pasantia	\N	\N
3231	226	29	\N	Defensor Público en Formación III	AC	36	me-033-2014-derh-rlrb	\N	Defensora Pública en Formación III	\N	\N
3232	318	9	\N	Asesor Especialista II	AC	35	me-032-2014-derh-rlrb	\N	Asesora Especialista II	\N	\N
3233	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	me-44-2014-derh-rlrb	\N	Auxiliar de Ingreso de Informacion	\N	\N
3234	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	me-44-2014-derh-rlrb	\N	Auxiliar de Ingreso de Informacion	\N	\N
3235	192	22	\N	Técnico Administrativo V	AC	27	me-039-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3236	10	22	\N	Defensor Público en Pasantía	AC	38	me-056-2014-derh-rlrb	\N	Defensora Pública en Pasantía	\N	\N
3237	309	81	\N	Recepcionisto	AC	45	me-058-2014-derh-rlrb	\N	Recepcionista	\N	\N
3238	283	22	\N	Defensor Público Intercultural en Formacion III	AC	27	me-059-2014-derh-rlrb	\N	Defensora Pública Intercultural en Formacion III	\N	\N
3239	319	81	\N	Administrativo I	AC	45	me-036-2014-derh-rlrb	\N	Administrativa I	\N	\N
3240	319	81	\N	Administrativo I	AC	45	me-036-2014-derh-rlrb	\N	Administrativa I	\N	\N
3241	283	22	\N	Defensor Público Intercultural en Formacion III	AC	20	me-059-2014-derh-rlrb	\N	Defensora Pública Intercultural en Formacion III	\N	\N
3242	10	9	\N	Defensor Público en Pasantía	AC	7	me-052-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3243	10	22	\N	Defensor Público en Pasantía	AC	7	me-052-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3244	319	81	\N	Administrativo I	AC	45	me-036-2014-derh-rlrb	\N	Administrativa I	\N	\N
3245	318	9	\N	Asesor Especialista II	AC	35	me-032-2014-derh-rlrb	\N	Asesora Especialista II	\N	\N
3246	10	24	\N	Defensor Público en Pasantía	AC	36	me-069-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3247	10	24	\N	Defensor Público en Pasantía	AC	36	me-069-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3248	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3249	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3250	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3251	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3252	192	22	\N	Técnico Administrativo V	AC	6	50-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3253	319	23	\N	Administrativo I	AC	35	me-072-2014-derh	\N	Administrativa I	\N	\N
3254	181	22	\N	Defensor Público en Formación I	AC	25	me-085-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3255	181	22	\N	Defensor Público en Formación I	AC	19	me-064-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3256	192	22	\N	Técnico Administrativo V	AC	35	me-075-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3257	192	22	\N	Técnico Administrativo V	AC	35	me-075-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3258	123	98	\N	Técnico Administrativo V	AC	35	me-076-2014-derh	\N	Técnica Administrativa V	\N	\N
3259	123	98	\N	Técnico Administrativo V	AC	35	me-076-2014-derh	\N	Técnica Administrativa V	\N	\N
3260	192	22	\N	Técnico Administrativo V	AC	29	me-077-2014-derh	\N	Técnica Administrativa V	\N	\N
3261	192	22	\N	Técnico Administrativo V	AC	34	me-080-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3262	192	22	\N	Técnico Administrativo V	AC	13	me-087-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3263	1	22	\N	Procurador Juridico I	AC	7	me-094-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3264	1	24	\N	Procurador Juridico I	AC	36	me-099-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3265	1	24	\N	Procurador Juridico I	AC	36	me-099-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3266	181	22	\N	Defensor Público en Formación I	AC	4	me-105-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3267	1	102	\N	Procurador Juridico I	AC	8	me-111-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3268	1	81	\N	Procurador Juridico I	AC	8	me-111-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3269	3	84	\N	Auxiliar de Servicios V	AC	35	me-113-2014-derh-rlrb	\N	Auxiliar de Servicios V	\N	\N
3270	187	23	\N	Defensor Público de Oficio	AC	8	me-092-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3271	186	81	\N	Defensor Público de Oficio	AC	8	me-092-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3272	186	81	\N	Defensor Público de Oficio	AC	8	me-092-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3273	187	23	\N	Defensor Público de Oficio	AC	23	me-562-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3274	187	23	\N	Defensor Público de Oficio	AC	23	me-562-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3275	187	23	\N	Defensor Público de Oficio	AC	23	me-562-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3276	187	23	\N	Defensor Público de Oficio	AC	22	me-043-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3277	187	23	\N	Defensor Público de Oficio	AC	22	me-043-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3278	187	23	\N	Defensor Público de Oficio	AC	22	me-043-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3279	187	23	\N	Defensor Público de Oficio	AC	22	me-043-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3280	187	23	\N	Defensor Público de Oficio	AC	41	me-042-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3281	187	23	\N	Defensor Público de Oficio	AC	41	me-042-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3282	187	23	\N	Defensor Público de Oficio	AC	24	me-081-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3283	187	23	\N	Defensor Público de Oficio	AC	24	me-081-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3284	187	23	\N	Defensor Público de Oficio	AC	24	me-081-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3285	187	23	\N	Defensor Público de Oficio	AC	24	me-081-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3286	186	81	\N	Defensor Público de Oficio	AC	41	me-092-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3287	192	22	\N	Técnico Administrativo V	AC	10	me-121-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3288	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3289	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3290	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3291	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3292	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3293	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3294	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3295	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3296	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3297	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3298	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3299	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3300	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3301	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3302	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3303	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3304	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3305	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3306	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3307	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3308	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3309	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3310	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3311	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3312	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3313	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3314	187	23	\N	Defensor Público de Oficio	AC	35	me-086-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3315	4	22	\N	Defensor Público de Planta I	AC	7	\N	Acuerdo 118-2015	Defensora Pública de Planta I	\N	\N
3316	1	22	\N	Procurador Juridico II	AC	25	me-115-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3317	1	22	\N	Procurador Juridico II	AC	23	me-116-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3318	192	22	\N	Técnico Administrativo V	AC	10	me-121-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3319	12	23	\N	Conductor Automovilista	AC	35	me-133-2014-derh-rlrb	\N	Conductora Automovilista	\N	\N
3320	1	22	\N	Procurador Juridico I	AC	38	me-128-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3321	187	23	\N	Defensor Público de Oficio	AC	33	me-095-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3322	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3323	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3324	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3325	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3326	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3327	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3328	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3329	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3330	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3331	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3332	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3333	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3334	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3335	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3336	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3337	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3338	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3339	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3340	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3341	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3342	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3343	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3344	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3345	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3346	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3347	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3348	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3349	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3350	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3351	186	81	\N	Defensor Público de Oficio	AC	45	me-55-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3352	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3353	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3354	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3355	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3356	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3357	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3358	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3359	186	81	\N	Defensor Público de Oficio	AC	45	me-074-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3360	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3361	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3362	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3363	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3364	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3365	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3366	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3367	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3368	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3369	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3370	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3371	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3372	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3373	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3374	186	81	\N	Defensor Público de Oficio	AC	45	me-552-2013-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3375	181	22	\N	Defensor Público en Formación I	AC	24	me-119-2014-derh-rlrb	\N	Defensora Pública en Fomación I	\N	\N
3376	181	22	\N	Defensor Público en Formación I	AC	24	me-119-2014-derh-rlrb	\N	Defensora Pública en Fomación I	\N	\N
3377	1	22	\N	Procurador Juridico I	AC	50	me-134-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3378	181	22	\N	Defensor Público en Formación I	AC	30	me141-2014-derh-rlrlb	\N	Defensora Pública en Formación I	\N	\N
3379	1	22	\N	Procurador Juridico II	AC	35	me-150-2014-derh	\N	Procuradora Juridica II	\N	\N
3380	1	22	\N	Procurador Juridico II	AC	35	me-150-2014-derh	\N	Procuradora Juridica II	\N	\N
3381	1	22	\N	Procurador Juridico	AC	50	me-158-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3382	1	22	\N	Procurador Juridico	AC	50	me-158-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3383	243	11	\N	Auxiliar de Ingreso de Informacion	AC	39	me-172-2014-derh-rlrb	\N	Auxiliar de Ingreso de Informacion	\N	\N
3384	243	11	\N	Auxiliar de Ingreso de Informacion	AC	39	me-172-2014-derh-rlrb	\N	Auxiliar de Ingreso de Informacion	\N	\N
3385	1	22	\N	Procurador Juridico I	AC	49	me-161-2014-derh	\N	Procuradora Juridica I	\N	\N
3386	192	23	\N	Técnico Administrativo V	AC	35	me-159-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3387	192	23	\N	Técnico Administrativo V	AC	35	me-159-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3388	126	81	\N	Psicólogo	AC	14	me-153-2014-derh-rlrb	existe duplicidad	Psicóloga	\N	\N
3389	1	22	\N	Procurador Juridico I	AC	35	me-183-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3390	1	22	\N	Procurador Juridico I	AC	35	me-183-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3391	1	24	\N	Procurador Juridico	AC	36	me-191-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3392	1	24	\N	Procurador Juridico	AC	36	me-191-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3393	4	22	\N	Defensor Público de Planta I	AC	35	\N	\N	Defensora Pública de Planta I	\N	\N
3394	1	22	\N	Asistente de Abogado	AC	26	Acuerdo 36-2014	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3395	1	22	\N	Asistente de Abogado	AC	11	Acuerdo 37-2014	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3396	327	30	\N	Técnico Administrativo	AC	2	me-176-2014-derh-rlrb	\N	Técnica Administrativa	\N	\N
3397	327	30	\N	Técnico Administrativo	AC	2	me-176-2014-derh-rlrb	\N	Técnica Administrativa	\N	\N
3398	181	22	\N	Defensor Público en Formación I	AC	13	me-175-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3399	181	22	\N	Defensor Público en Formación I	AC	13	me-175-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3400	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3401	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3402	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3403	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3404	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3405	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3406	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3407	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3408	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3409	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3410	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3411	187	23	\N	Defensor Público de Oficio	AC	35	me-154-2014-derh-rlrb	\N	Defensora Pública de Oficio	\N	\N
3412	1	22	\N	Técnico Administrativo	AC	35	me-195-2014-derh-rlrb	\N	Técnica Administrativa	\N	\N
3413	1	22	\N	Técnico Administrativo	AC	35	me-195-2014-derh-rlrb	\N	Técnica Administrativa	\N	\N
3414	1	22	\N	Procurador Juridico	AC	41	me-199-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3415	1	81	\N	Procurador Juridico II	AC	27	me-205-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3416	3	81	\N	Auxiliar de Servicios II	AC	41	me-203-2014-derh-rlrb	\N	Auxiliar de Servicios II	\N	\N
3417	192	20	\N	Técnico Administrativo III	AC	35	me-223-2014-derh-rlrb	\N	Técnica Administrativa III	\N	\N
3418	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	me-218-2014-derh-rlrb	\N	Auxiliar Técnica en Informatica II	\N	\N
3419	181	22	\N	Defensor Público en Formación I	AC	28	212-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3420	181	22	\N	Defensor Público en Formación I	AC	34	me-226-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3421	123	98	\N	Administrativo IV	AC	35	me-258-2014-derh-rlrb	\N	Administrativa IV	\N	\N
3422	3	22	\N	Auxiliar de Servicios I	AC	47	me-235-2014-derh-rlrb	\N	Auxiliar de Servicios I	\N	\N
3423	10	22	\N	Defensor Público en Pasantía	AC	27	me-236-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3424	181	22	\N	Defensor Público en Formación I	AC	27	me-236-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3425	1	22	\N	Procurador Juridico I	AC	27	me-236-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3426	309	81	\N	Recepcionista	AC	45	me-250-22014-derh-rlrb	\N	Recepcionista	\N	\N
3427	328	9	\N	Asesor	AC	35	me-245-2014-derh-rlrb	\N	Asesora	\N	\N
3428	222	4	\N	Docente Capacitador	AC	35	me-265-2014-derh	\N	Docente Capacitadora	\N	\N
3429	1	22	\N	Procurador Juridico I	AC	41	me-255-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3430	1	22	\N	Procurador Juridico I	AC	5	me-256-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3431	10	29	\N	Defensor Público en Pasantía	AC	35	me-260-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3432	243	11	\N	Auxiliar de Ingreso de Informacion	AC	39	me-256-2014-derh-rlrb	\N	Auxiliar de Ingreso de Informacion	\N	\N
3434	192	22	\N	Técnico Administrativo V	AC	29	me-259-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3435	1	22	\N	Procurador Juridico II	AC	29	me-267-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3436	93	81	\N	Psicólogo	AC	14	me-266-2014-derh-rlrb	\N	Psicóloga	\N	\N
3437	93	81	\N	Psicólogo	AC	14	me-266-2014-derh-rlrb	\N	Psicóloga	\N	\N
3438	123	98	\N	Administrativo IV	AC	35	me-272-2014-derh-rlrb	\N	Administrativa IV	\N	\N
3439	30	10	\N	Recepcionisto I	AC	35	me-283-2014-derh-rlrb	\N	Recepcionista I	\N	\N
3440	192	22	\N	Técnico Administrativo V	AC	13	737-2014-rrhh	\N	Técnica Administrativa V	\N	\N
3441	3	22	\N	Auxiliar de Servicios I	AC	27	me-302-2014-derh-rlrb	\N	Auxiliar de Servicios I	\N	\N
3442	329	92	\N	Analista Programador	AC	35	Acuerdo 49-2014	\N	Analista Programador	\N	\N
3443	330	4	\N	Asistente Administrativo de Biblioteca	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo de Biblioteca	\N	\N
3444	331	5	\N	Asistente Administrativo I	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo I	\N	\N
3445	332	22	\N	Asistente Administrativo II	AC	8	Acuerdo 49-2014	Acuerdo 60-2014	Asistente Administrativo II	\N	\N
3446	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3447	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3448	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3449	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3450	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3451	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3452	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3453	1	24	\N	Procurador Juridico	AC	52	me-294-2014-derh-rlrb	\N	Procuradora Juridica	\N	\N
3454	332	12	\N	Asistente Administrativo II	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo II	\N	\N
3455	332	12	\N	Asistente Administrativo II	AC	35	Acuerdo 49-2014	Acuerdo 76-2016	Asistente Administrativo II	\N	\N
3456	332	34	\N	Asistente Administrativo II	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo II	\N	\N
3457	332	82	\N	Asistente Administrativo II	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo II	\N	\N
3458	332	21	\N	Asistente Administrativo II	AC	35	Acuerdo 49-2014	\N	Asistente Administrativo II	\N	\N
3459	334	95	\N	Asistente de Cooperación Internacional y Proyectos	AC	35	Acuerdo 49-2014	\N	Asistente de Cooperación Internacional y Proyectos	\N	\N
3460	335	88	\N	Asistente de Defensor Público	AC	35	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3461	336	1	\N	Asistente de Dirección General	AC	35	Acuerdo 49-2014	\N	Asistente de Dirección General	\N	\N
3462	62	8	\N	Asistente de División	AC	35	Acuerdo 49-2014	\N	Asistente de División	\N	\N
3463	337	90	\N	Asistente de Estadística	AC	35	Acuerdo 49-2014	\N	Asistente de Estadística	\N	\N
3464	339	3	\N	Asistente de Supervisor	AC	35	Acuerdo 49-2014	\N	Asistente de Supervisor	\N	\N
3465	340	7	\N	Auditor Auxiliar	AC	35	Acuerdo 49-2014	\N	Auditor Auxiliar	\N	\N
3466	340	7	\N	Auditor Auxiliar	AC	35	Acuerdo 49-2014	\N	Auditor Auxiliar	\N	\N
3467	342	1	\N	Auxiliar de Dirección General I	AC	35	Acuerdo 49-2014	Acuerdo 78-2016	Auxiliar de Dirección General I	\N	\N
3468	343	1	\N	Auxiliar de Dirección General II	AC	35	Acuerdo 49-2014	\N	Auxiliar de Dirección General II	\N	\N
3469	344	85	\N	Auxiliar de Mantenimiento I	AC	35	Acuerdo 49-2014	Acuerdo 121-2015	Auxiliar de Mantenimiento I	\N	\N
3472	345	85	\N	Auxiliar de Mantenimiento II	AC	35	Acuerdo 49-2014	\N	Auxiliar de Mantenimiento II	\N	\N
3473	348	92	\N	Coordinador de Análisis y Desarrollo	AC	35	Acuerdo 49-2014	\N	Coordinador de Análisis y Desarrollo	\N	\N
3474	350	94	\N	Coordinador de Redes y Telecomunicaciones	AC	35	Acuerdo 49-2014	\N	Coordinador de Redes y Telecomunicaciones	\N	\N
3475	356	8	\N	Director de División Administrativa Financiera	AC	35	Acuerdo 49-2014	\N	Director de División Administrativa Financiera	\N	\N
3476	358	10	\N	Director de División Ejecutiva y de Recursos Humanos	AC	35	Acuerdo 49-2014	\N	Director de División Ejecutiva y de Recursos Humanos	\N	\N
3477	359	20	\N	Encargado de Fondo Rotativo	AC	35	Acuerdo 49-2014	\N	Encargado de Fondo Rotativo	\N	\N
3478	360	21	\N	Encargado de Inventarios	AC	35	Acuerdo 49-2014	\N	Encargada de Inventarios	\N	\N
3479	361	34	\N	Encargado de Nóminas y Planillas	AC	35	Acuerdo 49-2014	\N	Encargado de Nóminas y Planillas	\N	\N
3480	386	5	\N	Especialista Financiero en la Unidad Ejecutora del Programa BID IDPP	AC	35	Acuerdo 49-2014	\N	Especialista Financiero en la Unidad Ejecutora del Programa BID IDPP	\N	\N
3481	363	7	\N	Jefe de la Unidad de Auditoría Interna	AC	35	Acuerdo 49-2014	\N	Jefe de la Unidad de Auditoría Interna	\N	\N
3482	364	4	\N	Jefe de la Unidad de Formación y Capacitación	AC	35	Acuerdo 49-2014	\N	Jefe de la Unidad de Formación y Capacitación	\N	\N
3483	365	3	\N	Jefe de la Unidad de Supervisión General	AC	35	Acuerdo 49-2014	\N	Jefe de la Unidad de Supervisión General	\N	\N
3484	366	33	\N	Jefe de Sección de Admisión de Personal	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Admisión de Personal	\N	\N
3485	367	15	\N	Jefe de Sección de Almacén	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Almacén	\N	\N
3486	56	19	\N	Jefe de Sección de Contabilidad	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Contabilidad	\N	\N
3487	368	18	\N	Jefe de Sección de Presupuesto	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Presupuesto	\N	\N
3488	369	12	\N	Jefe del Departamento Administrativo	AC	35	Acuerdo 49-2014	Acuerdo 72-2016	Jefe del Departamento Administrativo	\N	\N
3489	370	16	\N	Jefe del Departamento de Cobro y Pago Administrativo	AC	35	Acuerdo 49-2014	\N	Jefe del Departamento de Cobro y Pago Administrativo	\N	\N
3490	371	90	\N	Jefe del Departamento de Información y Estadística	AC	35	Acuerdo 49-2014	\N	Jefe del Departamento de Información y Estadística	\N	\N
3491	372	6	\N	Jefe del Departamento de Informática	AC	35	Acuerdo 49-2014	\N	Jefe del Departamento de Informática	\N	\N
3492	373	5	\N	Jefe del Departamento de Planificación	AC	35	Acuerdo 49-2014	\N	Jefe del Departamento de Planificación	\N	\N
3493	374	13	\N	Jefe del Departamento Financiero	AC	35	Acuerdo 49-2014	\N	Jefe del Departamento Financiero	\N	\N
3494	113	92	\N	Programador	AC	35	Acuerdo 49-2014	\N	Programador	\N	\N
3495	309	104	\N	Recepcionista	AC	35	Acuerdo 49-2014	Ref 326-2017-RRHH-CLRP-hbg	Recepcionista	\N	\N
3496	375	12	\N	Secretaria I	AC	35	Acuerdo 49-2014	\N	Secretaria I	\N	\N
3497	376	32	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3498	376	13	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3499	376	31	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3500	376	33	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3501	376	7	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3502	376	3	\N	Secretaria II	AC	35	Acuerdo 49-2014	\N	Secretaria II	\N	\N
3503	381	10	\N	Sub Director de División Ejecutiva y de Recursos Humanos	AC	35	Acuerdo 49-2014	\N	Sub Director de División Ejecutiva y de Recursos Humanos	\N	\N
3504	37	14	\N	Sub Jefe de Sección de Compras	AC	35	Acuerdo 49-2014	Acuerdo 65-2015	Sub Jefe de Sección de Compras	\N	\N
3505	382	12	\N	Sub Jefe del Departamento Administrativo	AC	35	Acuerdo 49-2014	\N	Sub Jefe del Departamento Administrativo	\N	\N
3506	383	94	\N	Técnico de Redes y Telecomunicaciones	AC	35	Acuerdo 49-2014	\N	Técnico de Redes y Telecomunicaciones	\N	\N
3507	384	93	\N	Técnico de Soporte y Mantenimiento	AC	35	Acuerdo 49-2014	\N	Técnico de Soporte y Mantenimiento	\N	\N
3508	387	31	\N	Técnico en Administración de Recursos Humanos	AC	35	Acuerdo 66-2014	\N	Técnico en Administración de Recursos Humanos	\N	\N
3509	341	81	\N	Auxiliar de Coordinación	AC	43	Acuerdo 49-2014	\N	Auxiliar de Coordinación	\N	\N
3510	353	81	\N	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	AC	43	Acuerdo 49-2014	Acuerdo 49-2014	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	\N	\N
3511	377	81	\N	Sub Coordinador de Asistencia Legal Gratuita a la Víctima y sus Familiares	AC	43	Acuerdo 49-2014	\N	Sub Coordinador de Asistencia Legal Gratuita a la Víctima y sus Familiares	\N	\N
3512	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3513	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3514	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3515	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3516	335	22	\N	Asistente de Defensor Público	AC	26	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3517	335	22	\N	Asistente de Defensor Público	AC	26	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3518	335	22	\N	Asistente de Defensor Público	AC	10	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3519	335	22	\N	Asistente de Defensor Público	AC	11	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3520	335	22	\N	Asistente de Defensor Público	AC	11	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3521	335	22	\N	Asistente de Defensor Público	AC	11	Acuerdo 49-2014	Acuerdo 68-2014	Asistente de Defensor Público	\N	\N
3522	335	22	\N	Asistente de Defensor Público	AC	11	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3523	346	22	\N	Conserje de Coordinación	AC	11	Acuerdo 49-2014	\N	Conserje de Coordinación	\N	\N
3524	354	22	\N	Defensor Público de Planta I	AC	11	Acuerdo 49-2014	\N	Defensor Público de Planta I	\N	\N
3525	335	22	\N	Asistente de Defensor Público	AC	12	Acuerdo 49-2014	Acuerdo 17-2016	Asistente de Defensor Público	\N	\N
3526	335	22	\N	Asistente de Defensor Público	AC	13	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3527	335	22	\N	Asistente de Defensor Público	AC	13	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3528	346	22	\N	Conserje de Coordinación	AC	13	Acuerdo 49-2014	\N	Conserje de Coordinación	\N	\N
3529	335	22	\N	Asistente de Defensor Público	AC	29	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3530	335	22	\N	Asistente de Defensor Público	AC	29	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3531	335	22	\N	Asistente de Defensor Público	AC	4	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3532	335	22	\N	Asistente de Defensor Público	AC	4	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3534	333	23	\N	Asistente Administrativo Legal	AC	52	Acuerdo 49-2014	Acuerdo 120-2015	Asistente Administrativo Legal	\N	\N
3535	335	26	\N	Asistente de Defensor Público	AC	1	Acuerdo 49-2014	Acuerdo 65-2014	Asistente de Defensor Público	\N	\N
3536	335	26	\N	Asistente de Defensor Público	AC	1	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3537	335	24	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	Acuerdo 30-2015	Asistente de Defensor Público	\N	\N
3538	335	24	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3539	335	30	\N	Asistente de Defensor Público	AC	2	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3540	335	30	\N	Asistente de Defensor Público	AC	2	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3541	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3542	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3543	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3544	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3545	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3546	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3547	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3548	335	29	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3556	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3557	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3558	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3559	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3560	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3562	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3563	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3564	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3565	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3566	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3567	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3568	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3569	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3570	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3571	335	9	\N	Asistente de Defensor Público	AC	35	Acuerdo 49-2014	Acuerdo 29-2015	Asistente de Defensor Público	\N	\N
3572	335	9	\N	Asistente de Defensor Público	AC	35	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3573	335	9	\N	Asistente de Defensor Público	AC	35	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3574	338	22	\N	Asistente de Notificaciones	AC	52	Acuerdo 49-2014	\N	Asistente de Notificaciones	\N	\N
3575	349	28	\N	Coordinador de Enfoque Intercultural	AC	35	Acuerdo 49-2014	\N	Coordinador de Enfoque Intercultural	\N	\N
3576	351	22	\N	Coordinador Departamental de Guatemala	AC	52	Acuerdo 49-2014	\N	Coordinador Departamental de Guatemala	\N	\N
3577	352	27	\N	Coordinador Enfoque de Género y Derechos Humanos	AC	35	Acuerdo 49-2014	\N	Coordinador Enfoque de Género y Derechos Humanos	\N	\N
3578	215	23	\N	Coordinador Nacional de Defensores de Oficio	AC	52	Acuerdo 49-2014	Ref 326-2017-RRHH-CLRP-hbg	Coordinador Nacional de Defensores de Oficio	\N	\N
3579	357	9	\N	Director de División de Coordinaciones Técnico Profesionales	AC	35	Acuerdo 49-2014	\N	Director de División de Coordinaciones Técnico Profesionales	\N	\N
3580	362	106	\N	Encargado de Psicología	AC	35	Acuerdo 49-2014	\N	Encargado de Psicología	\N	\N
3581	378	22	\N	Sub Coordinador de Coordinación Departamental	AC	52	Acuerdo 49-2014	\N	Sub Coordinador de Coordinación Departamental	\N	\N
3582	379	24	\N	Sub Coordinador de Defensores Públicos en Formación	AC	52	Acuerdo 49-2014	\N	Sub Coordinador de Defensores Públicos en Formación	\N	\N
3583	380	9	\N	Sub Director de División De Coordinaciones Técnico Profesionales	AC	35	Acuerdo 49-2014	\N	Sub Director de División De Coordinaciones Técnico Profesionales	\N	\N
3584	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3585	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3586	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3587	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3588	335	22	\N	Asistente de Defensor Público	AC	6	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3589	335	22	\N	Asistente de Defensor Público	AC	6	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3590	335	22	\N	Asistente de Defensor Público	AC	14	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3591	335	22	\N	Asistente de Defensor Público	AC	14	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3592	335	22	\N	Asistente de Defensor Público	AC	14	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3593	355	22	\N	Defensor Público de Planta, Responsable de Sede	AC	49	Acuerdo 49-2014	\N	Defensor Público de Planta Responsable de Sede	\N	\N
3594	335	22	\N	Asistente de Defensor Público	AC	17	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3595	335	22	\N	Asistente de Defensor Público	AC	18	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3596	335	22	\N	Asistente de Defensor Público	AC	41	Acuerdo 49-2014	Acuerdo 69-2015	Asistente de Defensor Público	\N	\N
3597	335	22	\N	Asistente de Defensor Público	AC	41	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3598	355	22	\N	Defensor Público de Planta, Responsable de Sede	AC	42	Acuerdo 49-2014	\N	Defensor Público de Planta Responsable de Sede	\N	\N
3599	335	22	\N	Asistente de Defensor Público	AC	7	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3600	335	22	\N	Asistente de Defensor Público	AC	23	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3601	335	22	\N	Asistente de Defensor Público	AC	23	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3602	335	22	\N	Asistente de Defensor Público	AC	23	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3603	335	22	\N	Asistente de Defensor Público	AC	23	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3604	335	22	\N	Asistente de Defensor Público	AC	20	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3605	335	22	\N	Asistente de Defensor Público	AC	27	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3606	335	22	\N	Asistente de Defensor Público	AC	27	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3607	335	22	\N	Asistente de Defensor Público	AC	24	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3608	335	22	\N	Asistente de Defensor Público	AC	30	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3609	335	22	\N	Asistente de Defensor Público	AC	30	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3610	335	22	\N	Asistente de Defensor Público	AC	50	Acuerdo 49-2014	Ref.1093-2014-RRHH-CLRP-hbg	Asistente de Defensor Público	\N	\N
3611	335	22	\N	Asistente de Defensor Público	AC	25	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3612	335	22	\N	Asistente de Defensor Público	AC	31	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3613	335	22	\N	Asistente de Defensor Público	AC	31	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3614	335	22	\N	Asistente de Defensor Público	AC	32	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3615	335	22	\N	Asistente de Defensor Público	AC	33	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3616	335	22	\N	Asistente de Defensor Público	AC	33	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3617	235	20	\N	Auxiliar Administrativo	AC	35	Acuerdo 49-2014	\N	Auxiliar Administrativa	\N	\N
3618	385	5	\N	Coordinador de la Unidad Ejecutora BID IDPP	AC	35	Acuerdo 49-2014	\N	Coordinador de la Unidad Ejecutora BID IDPP	\N	\N
3619	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3620	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3621	335	22	\N	Asistente de Defensor Público	AC	6	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3622	1	22	\N	Asistente de Abogado	AC	23	Acuerdo 52-2014	Acuerdo 49-2014	Asistente de Abogado	\N	\N
3623	3	22	\N	Auxiliar de Servicios II	AC	27	me-302-2014-derh-rlrb	\N	Auxiliar de Servicios II	\N	\N
3624	3	22	\N	Auxiliar de Servicios II	AC	27	me-302-2014-derh-rlrb	\N	Auxiliar de Servicios II	\N	\N
3625	1	24	\N	Procurador Juridico I	AC	52	me-306-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3626	332	23	\N	Asistente Administrativo II	AC	52	Acuerdo 49-2014	ACUERDO NO. 51-2015	Asistente Administrativo II	\N	\N
3627	335	22	\N	Asistente de Defensor Público	AC	23	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3628	335	22	\N	Asistente de Defensor Público	AC	35	Acuerdo 49-2014	\N	Asistente de Defensor Público	\N	\N
3629	388	24	\N	Coordinador de Defensores Públicos en Formación	AC	52	Acuerdo 49-2014	\N	Coordinador de Defensores Públicos en Formación	\N	\N
3630	389	14	\N	Jefe de Sección de Compras	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Compras	\N	\N
3631	390	20	\N	Jefe de Sección de Tesorería	AC	35	Acuerdo 49-2014	\N	Jefe de Sección de Tesorería	\N	\N
3632	1	22	\N	Procurador Juridico I	AC	52	me-320-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3633	1	22	\N	Procurador Juridico I	AC	52	me-320-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3634	391	9	\N	Procurador Juridico II	AC	35	me-325-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3635	1	30	\N	Procurador Juridico II	AC	2	me-319-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3636	392	30	\N	Trabajador Social II	AC	2	Acuerdo 57-2014	\N	Trabajadora Social II	\N	\N
3637	1	81	\N	Procurador Juridico I	AC	41	me-334-2014-derh	\N	Procuradora Juridica I	\N	\N
3638	10	24	\N	Defensor Público en Pasantía	AC	52	me-343-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3639	181	22	\N	Defensor Público en Formación I	AC	21	me-367-2014-derh-rlrb	\N	Defensora Pública en Formación I	\N	\N
3640	192	24	\N	Técnico Administrativo V	AC	52	me-360-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3641	192	24	\N	Técnico Administrativo V	AC	52	me-360-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3642	192	22	\N	Técnico Administrativo V	AC	8	me-365-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3643	6	105	\N	Trabajador Social	AC	18	me-361-2014-derh-rlrb	\N	Trabajadora Social	\N	\N
3644	353	81	\N	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	AC	45	Acuerdo 49-2014	\N	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	\N	\N
3645	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 60-2014	\N	Asistente de Defensor Público	\N	\N
3646	354	22	\N	Defensor Público de Planta I	AC	11	Acuerdo 61-2014	\N	Defensora Publico de Planta I	\N	\N
3647	392	105	\N	Trabajador Social II	AC	52	Acuerdo 59-2014	Acuerdo 01-2015	Trabajadora Social II	\N	\N
3648	335	22	\N	Asistente de Defensor Público	AC	53	Oficio 1093-2014-RRHH-CLRP-hbg	\N	Asistente de Defensor Público	\N	\N
3649	11	22	\N	Coordinador Departamental	AC	53	Oficio 1093-2014-RRHH-CLRP-hbg	\N	Coordinadora Departamental	\N	\N
3650	354	22	\N	Defensor Público de Planta I	AC	53	Oficio 1093-2014-RRHH-CLRP-hbg	se cierra el puesto por cambio de nivel de carrera	Defensor Público de Planta I	\N	\N
3651	354	22	\N	Defensor Público de Planta I	AC	53	Oficio 1093-2014-RRHH-CLRP-hbg	\N	Defensor Público de Planta I	\N	\N
3652	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 65-2014	\N	Asistente de Defensor Público	\N	\N
3653	335	22	\N	Asistente de Defensor Público	AC	34	Acuerdo 68-2014	Acuerdo 70-2015	Asistente de Defensor Público	\N	\N
3654	115	15	\N	Técnico Administrativo V	AC	35	me-386-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3655	115	15	\N	Técnico Administrativo V	AC	35	me-386-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3656	1	26	\N	Procurador Juridico II	AC	1	me-389-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3657	192	81	\N	Técnico Administrativo V	AC	45	me-395-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3658	115	15	\N	Técnico Administrativo V	AC	35	me-397-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3659	115	15	\N	Técnico Administrativo V	AC	35	me-397-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3660	115	15	\N	Técnico Administrativo V	AC	35	me-397-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3661	192	90	\N	Técnico Administrativo V	AC	35	me-399-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3662	319	90	\N	Técnico Administrativo V	AC	35	 me-399-2014-derh-rlrb	\N	Técnica Administrativa V	\N	\N
3663	321	5	\N	Asesor Especialista II	AC	35	me-405-2014-derh-rlrb	\N	Asesora Especialista II	\N	\N
3664	30	25	\N	Secretaria I	AC	52	me-407-2014-derh-rlrb	\N	Secretaria I	\N	\N
3665	1	22	\N	Procurador Juridico I	AC	34	me-390-2014-derh-rlrb	\N	Procuradora Juridica I	\N	\N
3666	1	22	\N	Procurador Juridico II	AC	11	me-400-2014-derh-rlrb	\N	Procuradora Juridica II	\N	\N
3667	98	25	\N	Analista de Información I	AC	52	me-418-2014-derh-rlrb	\N	Analista de Informacion I	\N	\N
3668	1	29	\N	Técnico Administrativo	AC	52	me-411-2014-derh-rlrb	\N	Técnica Administrativa	\N	\N
3669	14	1	\N	Director General en Funciones	AC	35	Acta 53-2014	\N	Directora General en Funciones 	\N	\N
3670	354	22	\N	Defensor Público de Planta I	AC	14	Acuerdo 79-2014	\N	Defensor Público de Planta I	\N	\N
3671	354	22	\N	Defensor Público de Planta I	AC	10	Acuerdo 80-2014	\N	Defensor Público de Planta I	\N	\N
3672	354	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 81-2014	\N	Defensora Publico de Planta I	\N	\N
3673	182	81	\N	Defensor Público en Formación II	AC	5	me-440-2014-derh-rlrb	\N	Defensora Pública en Formacion II	\N	\N
3674	10	22	\N	Defensor Público en Pasantía	AC	6	me-440-2014-derh-rlrb	\N	Defensora Pública en Pasantia	\N	\N
3675	181	22	\N	Defensor Público en Formación I	AC	49	me-427-2014-derh-rlrb	\N	Defensora Pública en Fomación I	\N	\N
3676	319	22	\N	Administrativo I	AC	53	ene-15	\N	Administrativa I	\N	\N
3677	3	22	\N	Auxiliar de Servicios II	AC	53	ene-15	\N	Auxiliar de Servicios II	\N	\N
3678	1	22	\N	Procurador Juridico	AC	53	ene-15	\N	Procuradora Juridica	\N	\N
3679	1	22	\N	Procurador Juridico I	AC	53	ene-15	\N	Procuradora Juridica I	\N	\N
3680	100	105	\N	Técnico en Trabajo Social	AC	53	ene-15	\N	Tecnico en Trabajo Social	\N	\N
3681	192	81	\N	Técnico Administrativo	AC	45	ene-15	\N	Técnica Administrativa	\N	\N
3682	192	81	\N	Técnico Administrativo	AC	45	ene-15	\N	Técnica Administrativa	\N	\N
3683	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3684	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3685	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3686	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3687	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3688	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3689	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3690	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3691	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3692	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3693	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3694	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3695	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3696	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3697	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3698	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3699	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3700	1	22	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3701	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3702	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3703	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3704	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3705	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3706	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3707	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3708	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3709	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3710	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3711	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3712	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3713	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3714	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3715	226	24	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3716	10	22	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3717	10	22	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3718	10	22	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3719	181	22	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3720	181	22	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3721	181	22	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3722	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3723	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3724	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3725	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3726	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3727	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3728	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3729	226	22	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3730	319	24	\N	Administrativo I	AC	52	ene-15	\N	Administrativa I	\N	\N
3731	319	24	\N	Administrativo I	AC	52	ene-15	\N	Administrativa I	\N	\N
3732	319	24	\N	Administrativo I	AC	52	ene-15	\N	Administrativa I	\N	\N
3733	319	24	\N	Administrativo I	AC	52	ene-15	\N	Administrativa I	\N	\N
3734	319	24	\N	Administrativo I	AC	52	ene-15	\N	Administrativa I	\N	\N
3735	125	4	\N	Asistente de Logistica	AC	35	ene-15	\N	Asistente de Logistica	\N	\N
3736	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3737	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3738	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3739	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3740	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3741	226	29	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3742	226	29	\N	Defensor Público en Formación II	AC	52	ene-15	\N	Defensora Pública en Formacion II	\N	\N
3743	226	29	\N	Defensor Público en Formación III	AC	52	ene-15	\N	Defensora Pública en Formación III	\N	\N
3744	226	29	\N	Defensor Público en Formación III	AC	52	ene-15	\N	Defensora Pública en Formación III	\N	\N
3745	192	24	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3746	192	24	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3747	192	24	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3751	192	24	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3752	192	24	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3753	192	22	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3754	192	22	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3758	192	22	\N	Técnico Administrativo V	AC	52	ene-15	\N	Técnica Administrativa V	\N	\N
3759	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3760	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3761	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3762	1	24	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3763	1	24	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3764	1	24	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3765	1	24	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3766	1	22	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3767	1	22	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3768	1	22	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3769	1	22	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3770	1	22	\N	Procurador Juridico I	AC	52	ene-15	\N	Procuradora Juridica I	\N	\N
3771	319	4	\N	Administrativo I	AC	35	ene-15	\N	Administrativa I	\N	\N
3772	222	4	\N	Docente Capacitador	AC	35	ene-15	\N	Docente Capacitadora	\N	\N
3773	1	29	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3774	1	25	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3775	1	25	\N	Procurador Juridico	AC	52	ene-15	\N	Procuradora Juridica	\N	\N
3776	6	105	\N	Trabajador Social	AC	52	ene-15	\N	Trabajadora Social	\N	\N
3777	6	105	\N	Trabajador Social	AC	52	ene-15	\N	Trabajadora Social	\N	\N
3778	309	104	\N	Recepcionista	AC	52	ene-15	\N	Recepcionista	\N	\N
3779	108	25	\N	Asistente de Psicología	AC	52	ene-15	\N	Asistente de Psicologia	\N	\N
3780	192	16	\N	Técnico Administrativo V	AC	35	ene-15	\N	Técnica Administrativa V	\N	\N
3781	103	90	\N	Analista de Información	AC	35	ene-15	\N	Analista de Información	\N	\N
3782	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3783	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3784	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3785	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3786	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3788	132	5	\N	Asesor Especialista III	AC	35	ene-15	\N	Asesora Especialista III	\N	\N
3789	320	5	\N	Asesor Especialista II	AC	35	ene-15	\N	Asesora Especialista II	\N	\N
3790	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3791	92	23	\N	Abogado de Enlace	AC	44	ene-15	\N	Abogada de Enlace	\N	\N
3792	98	25	\N	Analista de Información I	AC	52	ene-15	\N	Analista de Informacion I	\N	\N
3793	98	25	\N	Analista de Información I	AC	52	ene-15	\N	Analista de Informacion I	\N	\N
3794	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3795	181	24	\N	Defensor Público en Formación I	AC	52	ene-15	\N	Defensora Pública en Formación I	\N	\N
3796	98	25	\N	Analista de Información I	AC	52	ene-15	\N	Analista de Información I	\N	\N
3797	322	4	\N	Docente Capacitador I	AC	35	ene-15	\N	Docente Capacitadora I	\N	\N
3798	322	4	\N	Docente Capacitador I	AC	35	ene-15	\N	Docente Capacitadora I	\N	\N
3799	59	20	\N	Auxiliar Administrativo	AC	35	ME 017 2015 DERH JASG aso	\N	Auxiliar Administrativa	\N	\N
3800	226	24	\N	Defensor Público en Formación III	AC	52	ene-15	\N	Defensora Pública en Formación III	\N	\N
3801	183	81	\N	Defensor Público en Formación I	AC	45	ene-15	\N	Defensora Pública en Formación I	\N	\N
3802	183	81	\N	Defensor Público en Formación I	AC	45	ene-15	\N	Defensora Pública en Formación I	\N	\N
3803	93	106	\N	Psicólogo	AC	52	ene-15	\N	Psicóloga	\N	\N
3804	93	106	\N	Psicólogo	AC	52	ene-15	\N	Psicóloga	\N	\N
3805	93	106	\N	Psicólogo	AC	52	ene-15	\N	Psicóloga	\N	\N
3806	184	22	\N	Defensor Público en Formación I Intercultural	AC	26	ene-15	\N	Defensora Público en Formación I Intercultural	\N	\N
3807	192	22	\N	Técnico Administrativo V	AC	38	ene-15	\N	Técnica Administrativa V	\N	\N
3808	192	22	\N	Técnico Administrativo V	AC	38	ene-15	\N	Técnica Administrativa V	\N	\N
3809	319	81	\N	Administrativo I	AC	45	ene-15	\N	Administrativa I	\N	\N
3810	319	81	\N	Administrativo I	AC	45	ene-15	\N	Administrativa I	\N	\N
3811	297	4	\N	Docente Capacitador II	AC	35	ene-15	\N	Docente Capacitadora II	\N	\N
3812	297	4	\N	Docente Capacitador II	AC	35	ene-15	\N	Docente Capacitadora II	\N	\N
3813	93	81	\N	Psicólogo	AC	45	ene-15	\N	Psicóloga	\N	\N
3814	93	81	\N	Psicólogo	AC	45	ene-15	\N	Psicóloga	\N	\N
3815	309	104	\N	Recepcionista	AC	52	ene-15	\N	Recepcionista	\N	\N
3816	309	104	\N	Recepcionista	AC	52	ene-15	\N	Recepcionista	\N	\N
3817	6	81	\N	Trabajador Social	AC	45	ene-15	\N	Trabajadora Social	\N	\N
3818	6	81	\N	Trabajador Social	AC	45	ene-15	\N	Trabajadora Social	\N	\N
3819	1	81	\N	Procurador Juridico	AC	45	ene-15	\N	Procuradora Juridica	\N	\N
3820	1	81	\N	Procurador Juridico	AC	45	ene-15	\N	Procuradora Juridica	\N	\N
3821	1	102	\N	Procurador Juridico	AC	5	ene-15	\N	Procuradora Juridica	\N	\N
3822	1	102	\N	Procurador Juridico	AC	5	ene-15	\N	Procuradora Juridica	\N	\N
3823	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3824	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3825	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3826	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3827	1	22	\N	Procurador Juridico II	AC	52	ene-15	\N	Procuradora Juridica II	\N	\N
3828	1	22	\N	Procurador Juridico II	AC	52	ene-15	\N	Procuradora Juridica II	\N	\N
3829	12	23	\N	Conductor Automovilista	AC	44	ene-15	\N	Conductora Automovilista	\N	\N
3830	97	86	\N	Defensor Público en Pasantía	AC	35	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3831	113	23	\N	Analista Desarrollador	AC	44	ene-15	\N	Analista Desarrolladora	\N	\N
3832	192	81	\N	Técnico Administrativo	AC	45	ene-15	\N	Técnica Administrativa	\N	\N
3833	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3834	192	23	\N	Técnico Administrativo V	AC	44	ene-15	\N	Técnica Administrativa V	\N	\N
3835	6	105	\N	Trabajador Social	AC	18	ene-15	\N	Trabajadora Social	\N	\N
3836	195	81	\N	Defensor Público en Pasantía	AC	27	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3837	319	23	\N	Administrativo I	AC	44	ene-15	\N	Administrativa I	\N	\N
3838	319	23	\N	Administrativo I	AC	44	ene-15	\N	Administrativa I	\N	\N
3839	393	27	\N	Consultor	AC	35	ene-15	\N	Consultora	\N	\N
3840	192	81	\N	Técnico Administrativo	AC	45	ene-15	\N	Técnica Administrativa	\N	\N
3841	183	81	\N	Defensor Público en Pasantía	AC	27	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3842	183	81	\N	Defensor Público en Pasantía	AC	41	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3843	183	81	\N	Defensor Público en Pasantía	AC	41	ene-15	\N	Defensora Pública en Pasantia	\N	\N
3844	99	81	\N	Operador Jurídico	AC	35	ene-15	\N	Operadora Jurídica	\N	\N
3845	99	81	\N	Operador Jurídico	AC	35	ene-15	\N	Operadora Jurídica	\N	\N
3846	99	81	\N	Operador Jurídico	AC	35	ene-15	\N	Operadora Jurídica	\N	\N
3847	99	81	\N	Operador Jurídico	AC	35	ene-15	\N	Operadora Jurídica	\N	\N
3848	184	22	\N	Defensor Público en Formación I Intercultural	AC	16	me-03-2015-derh-jasg	\N	Defensora Público en Formación I Intercultural	\N	\N
3849	394	5	\N	Asesor Especialista III	AC	35	ene-15	\N	Asesora Especialista III	\N	\N
3850	320	5	\N	Asesor Especialista II	AC	35	ene-15	\N	Asesora Especialista II	\N	\N
3851	1	23	\N	Procurador Juridico	AC	44	ene-15	\N	Procuradora Juridica	\N	\N
3852	1	23	\N	Procurador Juridico	AC	44	ene-15	\N	Procuradora Juridica	\N	\N
3853	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantía	\N	\N
3854	10	24	\N	Defensor Público en Pasantía	AC	52	ene-15	\N	Defensora Pública en Pasantía	\N	\N
3855	100	105	\N	Técnico en Trabajo Social	AC	52	ene-15	\N	Tecnico en Trabajo Social	\N	\N
3856	185	25	\N	Psicólogo	AC	52	Acuerdo 01-2015	\N	Psicóloga	\N	\N
3857	354	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 14-2015	se cierra el puesto por cambio de nivel de carrera	Defensor Público de Planta I	\N	\N
3858	354	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 14-2015	\N	Defensora Pública de Planta I	\N	\N
3859	354	22	\N	Defensor Público de Planta I	AC	20	Acuerdo 09-2015	\N	Defensor Público de Planta I	\N	\N
3860	395	28	\N	Experto Intercultural	AC	35	ene-15	\N	Experta Intercultural	\N	\N
3861	282	98	\N	Auxiliar de Seguridad II	AC	35	ene-15	\N	Auxiliar de Seguridad II	\N	\N
3862	1	22	\N	Procurador Juridico I	AC	13	me-028-2015-derh	\N	Procuradora Juridica I	\N	\N
3863	1	22	\N	Procurador Juridico I	AC	13	me-028-2015-derh	\N	Procuradora Juridica I	\N	\N
3864	183	81	\N	Defensor Público en Pasantía	AC	54	me-28-2015-derh	\N	Defensora Pública en Pasantía	\N	\N
3865	1	22	\N	Procurador Juridico I	AC	23	me-033-2015-derh	\N	Procuradora Juridica I	\N	\N
3866	1	22	\N	Procurador Juridico I	AC	23	me-033-2015-derh	\N	Procuradora Juridica I	\N	\N
3867	226	22	\N	Defensor Público en Formación III	AC	52	me-039-2015-derh	\N	Defensora Pública en Formación III	\N	\N
3868	226	22	\N	Defensor Público en Formación III	AC	52	me-039-2015-derh	\N	Defensora Pública en Formación III	\N	\N
3869	10	22	\N	Defensor Público en Pasantía	AC	18	me-039-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
3870	10	22	\N	Defensor Público en Pasantía	AC	18	me-039-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
3871	306	30	\N	Defensor Público en Formación I	AC	2	me-037A-2015-derh	\N	Defensora Pública en Formación I	\N	\N
3872	306	30	\N	Defensor Público en Formación I	AC	2	me-037A-2015-derh	\N	Defensora Pública en Formación I	\N	\N
3873	309	9	\N	Recepcionisto III	AC	35	me-039-2015-derh	\N	Recepcionista III	\N	\N
3874	30	9	\N	Recepcionisto III	AC	35	me-039-2015-derh	\N	Recepcionista III	\N	\N
3875	192	22	\N	Técnico Administrativo V	AC	17	me-040-2015-derh	\N	Técnica Administrativa V	\N	\N
3876	222	4	\N	Docente Capacitador	AC	35	me-044a-2015-derh	\N	Docente Capacitadora	\N	\N
3877	354	26	\N	Defensor Público de Planta I	AC	1	Acuerdo 18-2015	\N	Defensora Pública de Planta I	\N	\N
3878	335	22	\N	Asistente de Defensor Público	AC	52	Acuerdo 30-2015	\N	Asistente de Defensor Público	\N	\N
3879	335	22	\N	Asistente de Defensor Público	AC	8	Acuerdo 29-2015	\N	Asistente de Defensor Público	\N	\N
3880	192	22	\N	Técnico Administrativo V	AC	12	me-060-2015-derh	\N	Técnica Administrativa V	\N	\N
3881	192	29	\N	Técnico Administrativo V	AC	52	me-066-2015-derh	\N	Técnica Administrativa V	\N	\N
3882	184	22	\N	Defensor Publico en Pasantia Intercultural	AC	41	me-069-2015-derh-rlrb	\N	Defensora Publica en Pasantia Intercultural	\N	\N
3883	99	81	\N	Técnico Administrativo	AC	35	me-084-2015-derh	\N	Técnica Administrativa	\N	\N
3884	187	23	\N	Defensor Público de Oficio	AC	11	me-045-2015-derh	\N	Defensora Pública de Oficio	\N	\N
3885	187	23	\N	Defensor Público de Oficio	AC	11	me-045-2015-derh	\N	Defensora Pública de Oficio	\N	\N
3886	182	81	\N	Defensor Público en Formación II	AC	45	156-2015	\N	Defensora Pública en Formación II	\N	\N
3887	182	81	\N	Defensor Público en Formación II	AC	45	156-2015	\N	Defensora Pública en Formación II	\N	\N
3888	182	81	\N	Defensor Público en Formación II	AC	45	156-2015	\N	Defensora Pública en Formación II	\N	\N
3889	192	22	\N	Técnico Administrativo V	AC	16	ME-096-2015-DERH	\N	Técnica Administrativa V	\N	\N
3890	1	81	\N	Procurador Juridico I	AC	26	me-109-2015-derh	\N	Procuradora Juridica I	\N	\N
3891	195	81	\N	Defensor Público en Pasantía	AC	26	me-094-2015-derh	\N	Defensora Pública en Pasantía	\N	\N
3892	10	22	\N	Defensor Público en Pasantía	AC	12	me-105-2015-derh	\N	Defensora Pública en Pasantía	\N	\N
3893	192	22	\N	Técnico Administrativo V	AC	24	 me-116-2015-derh	\N	Técnica Administrativa V	\N	\N
3894	97	86	\N	Abogado de Enlace	AC	35	feb-15	\N	Abogada de Enlace	\N	\N
3895	152	86	\N	Enlace Juridico con el Sector Justicia	AC	35	feb-15	\N	Enlace Juridico con el Sector Justicia	\N	\N
3896	320	5	\N	Experto	AC	35	feb-15	\N	Experta	\N	\N
3897	321	5	\N	Experto en planificacion	AC	35	feb-15	\N	Experta en planificacion	\N	\N
3898	394	5	\N	Experto II	AC	35	feb-15	\N	Experta II	\N	\N
3899	135	95	\N	Abogado de Enlace con Cooperacion Internacional	AC	35	feb-15	\N	Abogada de Enlace con Cooperacion Internacional	\N	\N
3900	396	95	\N	Experto en Cooperacion Externa	AC	35	feb-15	\N	Experta en Cooperacion Externa	\N	\N
3901	292	91	\N	Especialista en Comunicacion Social	AC	35	feb-15	\N	Especialista en Comunicacion Social	\N	\N
3902	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 41-2015	\N	Asistente de Defensor Público	\N	\N
3903	3	81	\N	Auxiliar de Servicios I	AC	8	nov-15	\N	Auxiliar de Servicios I	\N	\N
3904	1	22	\N	Procurador Juridico	AC	6	me-123-2015-derh	\N	Procuradora Juridica	\N	\N
3905	1	22	\N	Procurador Juridico	AC	6	me-123-2015-derh	\N	Procuradora Juridica	\N	\N
3906	226	24	\N	Defensor Público en Formación II	AC	52	me-123-2015-derh	\N	Defensora Pública en Formación II	\N	\N
3907	226	24	\N	Defensor Público en Formación II	AC	52	me-123-2015-derh	\N	Defensora Pública en Formación II	\N	\N
3908	192	81	\N	Técnico Administrativo V	AC	11	me-137-2015-derh	\N	Técnica Administrativa V	\N	\N
3909	319	25	\N	Administrativo I	AC	52	me-145-2015-derh	\N	Administrativa I	\N	\N
3910	192	22	\N	Técnico Administrativo V	AC	23	me-150-2015-derh	\N	Técnica Administrativa V	\N	\N
3911	3	84	\N	Conserje	AC	35	ME-167-2015-DERH	\N	Conserje	\N	\N
3912	3	84	\N	Conserje	AC	35	ME-167-2015-DERH	\N	Conserje	\N	\N
3913	3	84	\N	Conserje	AC	35	ME-167-2015-DERH	\N	Conserje	\N	\N
3914	1	30	\N	Procurador Juridico II	AC	52	Me-172-2015-derh	\N	Procuradora Juridica II	\N	\N
3915	319	5	\N	Administrativo I	AC	35	Me-178-2015-DERH	\N	Administrativa I	\N	\N
3916	1	22	\N	Procurador Juridico I	AC	41	Me-183-2015-derh	\N	Procuradora Juridica I	\N	\N
3917	1	23	\N	Asistente de Defensor Público	AC	44	ME-168-2015	119-2015	Asistente de Defensor Público	\N	\N
3918	35	19	\N	Auxiliar Administrativo	AC	35	ACUERDO 52-2015	\N	Auxiliar Administrativa	\N	\N
3919	229	14	\N	Técnico Administrativo II	AC	35	feb-15	\N	Técnica Administrativa II	\N	\N
3920	229	14	\N	Técnico Administrativo II	AC	35	feb-15	\N	Técnica Administrativa II	\N	\N
3921	229	14	\N	Técnico Administrativo II	AC	35	feb-15	\N	Técnica Administrativa II	\N	\N
3922	115	15	\N	Técnico Administrativo IV	AC	35	feb-15	\N	Técnica Administrativa IV	\N	\N
3923	115	15	\N	Técnico Administrativo IV	AC	35	feb-15	\N	Técnica Administrativa IV	\N	\N
3924	115	15	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3925	115	15	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3926	95	85	\N	Técnico Administrativo III	AC	35	feb-15	\N	Técnica Administrativa III	\N	\N
3927	95	85	\N	Técnico Administrativo III	AC	35	feb-15	\N	Técnica Administrativa III	\N	\N
3928	95	85	\N	Técnico Administrativo III	AC	35	feb-15	\N	Técnica Administrativa III	\N	\N
3929	95	85	\N	Técnico Administrativo III	AC	35	feb-15	\N	Técnica Administrativa III	\N	\N
3930	95	85	\N	Técnico Administrativo III	AC	35	feb-15	\N	Técnica Administrativa III	\N	\N
3931	95	85	\N	Técnico Administrativo V	AC	35	feb-15	\N	Técnica Administrativa V	\N	\N
3932	95	85	\N	Técnico Administrativo V	AC	35	feb-15	\N	Técnica Administrativa V	\N	\N
3933	192	18	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3934	192	18	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3935	192	19	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3936	192	19	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3937	192	21	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3938	192	21	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3939	192	21	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3940	192	21	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3941	192	21	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3942	192	16	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3943	192	90	\N	Técnico Administrativo IV	AC	35	feb-15	\N	Técnica Administrativa IV	\N	\N
3944	192	22	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3945	192	22	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3946	192	22	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3947	192	22	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3948	192	10	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3949	192	88	\N	Técnico Administrativo I	AC	35	feb-15	\N	Técnica Administrativa I	\N	\N
3950	192	23	\N	Técnico Administrativo I	AC	44	feb-15	\N	Técnica Administrativa I	\N	\N
3951	192	23	\N	Técnico Administrativo I	AC	44	feb-15	\N	Técnica Administrativa I	\N	\N
3952	192	23	\N	Técnico Administrativo I	AC	44	feb-15	\N	Técnica Administrativa I	\N	\N
3953	192	23	\N	Técnico Administrativo I	AC	44	feb-15	\N	Técnica Administrativa I	\N	\N
3954	192	23	\N	Técnico Administrativo I	AC	44	feb-15	\N	Técnica Administrativa I	\N	\N
3955	192	24	\N	Técnico Administrativo V	AC	52	feb-15	\N	Técnica Administrativa V	\N	\N
3956	192	24	\N	Técnico Administrativo V	AC	52	feb-15	\N	Técnica Administrativa V	\N	\N
3957	192	24	\N	Técnico Administrativo V	AC	52	feb-15	\N	Técnica Administrativa V	\N	\N
3960	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3961	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3962	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3963	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3964	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3965	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3966	192	24	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3967	192	30	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3968	192	30	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3969	192	30	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3970	192	30	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3971	192	30	\N	Técnico Administrativo I	AC	52	feb-15	\N	Técnica Administrativa I	\N	\N
3972	192	22	\N	Técnico Administrativo I	AC	6	feb-15	\N	Técnica Administrativa I	\N	\N
3973	192	22	\N	Técnico Administrativo II	AC	12	feb-15	\N	Técnica Administrativa II	\N	\N
3974	192	22	\N	Técnico Administrativo I	AC	10	feb-15	\N	Técnica Administrativa I	\N	\N
3975	192	22	\N	Técnico Administrativo I	AC	13	feb-15	\N	Técnica Administrativa I	\N	\N
3976	192	22	\N	Técnico Administrativo I	AC	13	feb-15	\N	Técnica Administrativa I	\N	\N
3977	192	22	\N	Técnico Administrativo I	AC	13	feb-15	\N	Técnica Administrativa I	\N	\N
3978	192	22	\N	Técnico Administrativo I	AC	29	feb-15	\N	Técnica Administrativa I	\N	\N
3979	192	22	\N	Técnico Administrativo I	AC	29	feb-15	\N	Técnica Administrativa I	\N	\N
3980	192	22	\N	Técnico Administrativo I	AC	31	feb-15	\N	Técnica Administrativa I	\N	\N
3981	192	22	\N	Técnico Administrativo I	AC	23	feb-15	\N	Técnica Administrativa I	\N	\N
3982	192	22	\N	Técnico Administrativo I	AC	32	feb-15	\N	Técnica Administrativa I	\N	\N
3983	192	22	\N	Técnico Administrativo I	AC	14	feb-15	\N	Técnica Administrativa I	\N	\N
3984	192	22	\N	Técnico Administrativo I	AC	27	feb-15	\N	Técnica Administrativa I	\N	\N
3985	192	22	\N	Técnico Administrativo I	AC	8	feb-15	\N	Técnica Administrativa I	\N	\N
3986	192	22	\N	Técnico Administrativo I	AC	8	feb-15	\N	Técnica Administrativa I	\N	\N
3987	192	22	\N	Técnico Administrativo I	AC	22	feb-15	\N	Técnica Administrativa I	\N	\N
3988	192	22	\N	Técnico Administrativo I	AC	22	feb-15	\N	Técnica Administrativa I	\N	\N
3989	192	22	\N	Técnico Administrativo I	AC	22	feb-15	\N	Técnica Administrativa I	\N	\N
3990	192	22	\N	Técnico Administrativo I	AC	22	feb-15	\N	Técnica Administrativa I	\N	\N
3991	192	22	\N	Técnico Administrativo I	AC	34	feb-15	\N	Técnica Administrativa I	\N	\N
3992	192	22	\N	Técnico Administrativo I	AC	11	feb-15	\N	Técnica Administrativa I	\N	\N
3993	192	22	\N	Técnico Administrativo I	AC	17	feb-15	\N	Técnica Administrativa I	\N	\N
3994	192	26	\N	Técnico Administrativo I	AC	1	feb-15	\N	Técnica Administrativa I	\N	\N
3995	192	26	\N	Técnico Administrativo I	AC	1	feb-15	\N	Técnica Administrativa I	\N	\N
3996	192	26	\N	Técnico Administrativo I	AC	1	feb-15	\N	Técnica Administrativa I	\N	\N
3997	192	81	\N	Tecnico Administrativo VI	AC	45	feb-15	\N	Tecnica Administrativa VI	\N	\N
3998	192	81	\N	Tecnico Administrativo VI	AC	45	feb-15	\N	Tecnica Administrativa VI	\N	\N
3999	192	81	\N	Técnico Administrativo IV	AC	45	feb-15	\N	Técnica Administrativa IV	\N	\N
4000	192	81	\N	Técnico Administrativo I	AC	14	feb-15	\N	Técnica Administrativa I	\N	\N
4001	192	81	\N	Técnico Administrativo I	AC	18	feb-15	\N	Técnica Administrativa I	\N	\N
4002	192	22	\N	Técnico Administrativo IV	AC	17	feb-15	\N	Técnica Administrativa IV	\N	\N
4003	192	22	\N	Técnico Administrativo I	AC	16	feb-15	\N	Técnica Administrativa I	\N	\N
4004	192	28	\N	Técnico Administrativo IV	AC	35	feb-15	\N	Técnica Administrativa IV	\N	\N
4005	192	22	\N	Técnico Administrativo I	AC	24	feb-15	\N	Técnica Administrativa I	\N	\N
4006	192	22	\N	Técnico Administrativo I	AC	38	feb-15	\N	Técnica Administrativa I	\N	\N
4007	192	22	\N	Técnico Administrativo I	AC	12	feb-15	\N	Técnica Administrativa I	\N	\N
4008	192	81	\N	Técnico Administrativo IV	AC	45	feb-15	\N	Técnica Administrativa IV	\N	\N
4009	192	22	\N	Técnico Administrativo II	AC	23	feb-15	\N	Técnica Administrativa II	\N	\N
4010	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4011	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4012	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4013	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4014	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4015	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4016	306	30	\N	Defensor Público en Formación I	AC	52	feb-15	\N	Defensora Pública en Formación I	\N	\N
4017	306	30	\N	Defensor Público en Pasantía	AC	52	feb-15	\N	Defensora Pública en Pasantia	\N	\N
4018	306	30	\N	Defensor Público en Pasantía	AC	52	feb-15	\N	Defensora Pública en Pasantia	\N	\N
4019	1	30	\N	Procurador Juridico	AC	52	feb-15	\N	Procuradora Juridica	\N	\N
4020	1	30	\N	Procurador Juridico	AC	52	feb-15	\N	Procuradora Juridica	\N	\N
4021	1	30	\N	Procurador Juridico II	AC	52	feb-15	\N	Procuradora Juridica II	\N	\N
4022	1	30	\N	Procurador Juridico II	AC	52	feb-15	\N	Procuradora Juridica II	\N	\N
4023	397	84	\N	Auxiliar de Servicios V	AC	35	me-190-2015-derh	\N	Auxiliar de Servicios V	\N	\N
4024	397	84	\N	Auxiliar de Servicios V	AC	35	me-190-2015-derh	\N	Auxiliar de Servicios V	\N	\N
4025	397	84	\N	Auxiliar de Servicios V	AC	35	me-190-2015-derh	\N	Auxiliar de Servicios V	\N	\N
4026	397	26	\N	Auxiliar de Servicios III	AC	1	feb-15	\N	Auxiliar de Servicios III	\N	\N
4027	293	9	\N	Recepcionisto III	AC	35	feb-15	\N	Recepcionista III	\N	\N
4028	30	9	\N	Recepcionisto III	AC	35	feb-15	\N	Recepcionista III	\N	\N
4029	325	23	\N	Analista Desarrollador	AC	44	mar-15	\N	Analista Desarrolladora	\N	\N
4030	397	84	\N	Auxiliar de Servicios IV	AC	35	mar-15	\N	Auxiliar de Servicios IV	\N	\N
4031	397	84	\N	Auxiliar de Servicios IV	AC	35	mar-15	\N	Auxiliar de Servicios IV	\N	\N
4032	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4033	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4034	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4035	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4036	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4037	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4038	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4039	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4040	397	84	\N	Auxiliar de Servicios V	AC	35	mar-15	\N	Auxiliar de Servicios V	\N	\N
4041	397	22	\N	Auxiliar de Servicios III	AC	5	mar-15	\N	Auxiliar de Servicios III	\N	\N
4042	325	92	\N	Analista Desarrollador	AC	44	mar-15	\N	Analista Desarrolladora	\N	\N
4043	397	22	\N	Auxiliar de Servicios	AC	4	mar-15	\N	Auxiliar de Servicios	\N	\N
4044	397	22	\N	Auxiliar de Servicios IV	AC	6	mar-15	\N	Auxiliar de Servicios IV	\N	\N
4045	397	22	\N	Auxiliar de Servicios II	AC	12	mar-15	\N	Auxiliar de Servicios II	\N	\N
4046	397	22	\N	Auxiliar de Servicios II	AC	10	mar-15	\N	Auxiliar de Servicios II	\N	\N
4047	397	22	\N	Auxiliar de Servicios I	AC	47	mar-15	\N	Auxiliar de Servicios I	\N	\N
4048	397	22	\N	Auxiliar de Servicios II	AC	29	mar-15	\N	Auxiliar de Servicios II	\N	\N
4049	397	22	\N	Auxiliar de Servicios II	AC	31	mar-15	\N	Auxiliar de Servicios II	\N	\N
4050	397	22	\N	Auxiliar de Servicios II	AC	25	mar-15	\N	Auxiliar de Servicios II	\N	\N
4051	397	22	\N	Auxiliar de Servicios II	AC	33	mar-15	\N	Auxiliar de Servicios II	\N	\N
4052	397	22	\N	Auxiliar de Servicios V	AC	23	mar-15	\N	Auxiliar de Servicios V	\N	\N
4053	397	22	\N	Auxiliar de Servicios II	AC	7	mar-15	\N	Auxiliar de Servicios II	\N	\N
4054	397	22	\N	Auxiliar de Servicios III	AC	32	mar-15	\N	Auxiliar de Servicios III	\N	\N
4055	397	22	\N	Auxiliar de Servicios II	AC	24	mar-15	\N	Auxiliar de Servicios II	\N	\N
4056	397	22	\N	Auxiliar de Servicios II	AC	30	mar-15	\N	Auxiliar de Servicios II	\N	\N
4057	397	22	\N	Auxiliar de Servicios II	AC	19	mar-15	\N	Auxiliar de Servicios II	\N	\N
4058	397	22	\N	Auxiliar de Servicios II	AC	15	mar-15	\N	Auxiliar de Servicios II	\N	\N
4059	397	22	\N	Auxiliar de Servicios III	AC	14	mar-15	\N	Auxiliar de Servicios III	\N	\N
4060	397	22	\N	Auxiliar de Servicios III	AC	49	mar-15	\N	Auxiliar de Servicios III	\N	\N
4061	397	22	\N	Auxiliar de Servicios II	AC	28	mar-15	\N	Auxiliar de Servicios II	\N	\N
4062	397	22	\N	Auxiliar de Servicios II	AC	27	mar-15	\N	Auxiliar de Servicios II	\N	\N
4063	397	22	\N	Auxiliar de Servicios II	AC	20	mar-15	\N	Auxiliar de Servicios II	\N	\N
4064	397	22	\N	Auxiliar de Servicios II	AC	26	mar-15	\N	Auxiliar de Servicios II	\N	\N
4065	397	81	\N	Auxiliar de Servicios I	AC	8	mar-15	\N	Auxiliar de Servicios I	\N	\N
4066	397	22	\N	Auxiliar de Servicios II	AC	41	mar-15	\N	Auxiliar de Servicios II	\N	\N
4067	397	22	\N	Auxiliar de Servicios II	AC	21	mar-15	\N	Auxiliar de Servicios II	\N	\N
4068	397	22	\N	Auxiliar de Servicios II	AC	22	mar-15	\N	Auxiliar de Servicios II	\N	\N
4069	397	22	\N	Auxiliar de Servicios II	AC	34	mar-15	\N	Auxiliar de Servicios II	\N	\N
4070	397	22	\N	Auxiliar de Servicios II	AC	17	mar-15	\N	Auxiliar de Servicios II	\N	\N
4071	397	22	\N	Auxiliar de Servicios II	AC	53	mar-15	\N	Auxiliar de Servicios II	\N	\N
4072	397	81	\N	Auxiliar de Servicios II	AC	41	mar-15	\N	Auxiliar de Servicios II	\N	\N
4073	397	22	\N	Auxiliar de Servicios II	AC	18	mar-15	\N	Auxiliar de Servicios II	\N	\N
4074	397	22	\N	Auxiliar de Servicios I	AC	42	mar-15	\N	Auxiliar de Servicios I	\N	\N
4075	397	22	\N	Auxiliar de Servicios II	AC	16	mar-15	\N	Auxiliar de Servicios II	\N	\N
4076	397	22	\N	Auxiliar de Servicios III	AC	38	mar-15	\N	Auxiliar de Servicios III	\N	\N
4077	6	105	\N	Trabajador Social	AC	1	mar-15	\N	Trabajadora Social	\N	\N
4078	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	mar-15	\N	Auxiliar Técnica en Informatica I	\N	\N
4079	105	93	\N	Auxiliar Técnico en Informatica I	AC	35	mar-15	\N	Auxiliar Técnica en Informatica I	\N	\N
4080	192	14	\N	Técnico Administrativo II	AC	35	mar-15	\N	Técnica Administrativa II	\N	\N
4081	192	14	\N	Técnico Administrativo II	AC	35	mar-15	\N	Técnica Administrativa II	\N	\N
4082	192	14	\N	Técnico Administrativo II	AC	35	mar-15	\N	Técnica Administrativa II	\N	\N
4083	192	14	\N	Técnico Administrativo II	AC	35	mar-15	\N	Técnica Administrativa II	\N	\N
4084	181	22	\N	Defensor Público en Formación I	AC	13	abr-15	\N	Defensora Pública en Formación I	\N	\N
4085	181	22	\N	Defensor Público en Formación I	AC	38	abr-15	\N	Defensora Pública en Formación I	\N	\N
4086	6	22	\N	Trabajador Social	AC	14	may-15	\N	Trabajadora Social	\N	\N
4087	1	24	\N	Procurador Juridico I	AC	52	abr-15	\N	Procuradora Juridica I	\N	\N
4088	1	24	\N	Procurador Juridico I	AC	52	abr-15	\N	Procuradora Juridica I	\N	\N
4089	192	25	\N	Técnico Administrativo IV	AC	52	me-189-2015-derh	\N	Técnica Administrativa IV	\N	\N
4090	6	22	\N	Trabajador Social	AC	38	may-15	\N	Trabajadora Social	\N	\N
4091	30	9	\N	Recepcionisto III	AC	35	may-15	\N	Recepcionista III	\N	\N
4092	192	22	\N	Técnico Administrativo I	AC	7	me-224-2015-derh	\N	Técnica Administrativa I	\N	\N
4093	192	22	\N	Técnico Administrativo	AC	13	me-222-2015-derh	\N	Técnico Administrativa	\N	\N
4094	192	22	\N	Técnico Administrativo I	AC	41	me-236-2015-derh	\N	Técnica Administrativa I	\N	\N
4095	192	81	\N	Tecnico Administrativo VI	AC	45	me-223-2015-derh	\N	Tecnica Administrativa VI	\N	\N
4096	187	23	\N	Defensor Público de Oficio	AC	53	me-210-2015-derh	\N	Defensora Pública de Oficio	\N	\N
4097	187	23	\N	Defensor Público de Oficio	AC	53	me-210-2015-derh	\N	Defensora Pública de Oficio	\N	\N
4098	187	23	\N	Defensor Público de Oficio	AC	53	me-210-2015-derh	\N	Defensora Pública de Oficio	\N	\N
4099	187	23	\N	Defensor Público de Oficio	AC	53	me-210-2015-derh	\N	Defensora Pública de Oficio	\N	\N
4100	192	91	\N	Tecnico Administrativo VI	AC	35	me-239-2015-derh	\N	Tecnica Administrativa VI	\N	\N
4101	10	22	\N	Defensor Público en Pasantía	AC	27	me-254-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4102	10	22	\N	Defensor Público en Pasantía	AC	27	me-254-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4103	192	22	\N	Tecnico Administrativo VI	AC	38	me-231-2015-derh	\N	Tecnica Administrativa VI	\N	\N
4104	354	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 68-2015	\N	Defensora Pública de Planta I	\N	\N
4105	354	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 66-2015	\N	Defensor Público de Planta I	\N	\N
4106	335	22	\N	Asistente de Defensor Público	AC	11	Acuerdo 70-2015	\N	Asistente de Defensor Público	\N	\N
4107	354	26	\N	Defensor Público de Planta I	AC	1	Acuerdo 67-2015	\N	Defensor Público de Planta I	\N	\N
4108	355	22	\N	Defensor Público de Planta, Responsable de Sede	AC	21	Acuerdo 59-2015	\N	Defensor Público de Planta Responsable de Sede	\N	\N
4109	335	22	\N	Asistente de Defensor Público	AC	42	Acuerdo 69-2015	\N	Asistente de Defensor Público	\N	\N
4110	192	5	\N	Técnico Administrativo I	AC	35	me-267-2015-derh	\N	Técnica Administrativa I	\N	\N
4111	398	5	\N	Documentador del Sistema de Gestion de Calidad	AC	35	may-15	\N	Documentador del Sistema de Gestion de Calidad	\N	\N
4112	319	22	\N	Administrativo I	AC	52	jun-15	\N	Administrativa I	\N	\N
4113	10	22	\N	Defensor Público en Pasantía	AC	34	me-266-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4114	10	22	\N	Defensor Público en Pasantía	AC	34	me-266-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4115	320	5	\N	Especialista en Planificacion	AC	35	me-273-2015-derh	\N	Especialista en Planificacion	\N	\N
4116	1	22	\N	Procurador Juridico I	AC	34	me-277-2015-derh	\N	Procuradora Juridica I	\N	\N
4117	1	22	\N	Procurador Juridico I	AC	34	me-277-2015-derh	\N	Procuradora Juridica I	\N	\N
4118	309	81	\N	Tecnico Administrativo VI	AC	45	me-283-2015-derh	\N	Tecnica Administrativa VI	\N	\N
4119	113	92	\N	Analista Desarrollador	AC	35	me-278-2015-derh	\N	Analista Desarrolladora	\N	\N
4120	192	30	\N	Técnico Administrativo IV	AC	52	me-272-2015-derh	\N	Técnica Administrativa IV	\N	\N
4121	192	31	\N	Técnico Administrativo I	AC	35	me-287-2015-derh	\N	Técnica Administrativa I	\N	\N
4122	187	22	\N	Defensor Público en Pasantía	AC	23	me-299-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4123	187	22	\N	Defensor Público en Pasantía	AC	23	me-299-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4124	187	22	\N	Defensor Público en Pasantía	AC	23	me-299-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4125	187	22	\N	Defensor Público en Pasantía	AC	23	me-299-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4126	399	34	\N	Encargado de Nóminas y Planillas	AC	35	Acuerdo 74-2015	\N	Encargado de Nóminas y Planillas	\N	\N
4127	399	34	\N	Encargado de Nóminas y Planillas	AC	35	Acuerdo 74-2015	Acuerdo 77-2016	Encargado de Nóminas y Planillas	\N	\N
4128	10	22	\N	Defensor Público en Pasantía	AC	38	ME-297-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4129	10	22	\N	Defensor Público en Pasantía	AC	38	ME-297-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4130	98	25	\N	Analista de Informacion II	AC	52	me-295-2015-derh	\N	Analista de Informacion II	\N	\N
4131	98	25	\N	Analista de Informacion II	AC	52	me-295-2015-derh	\N	Analista de Informacion II	\N	\N
4132	187	23	\N	Defensor Público de Oficio	AC	20	me-284-2015-derh	\N	Defensora Pública de Oficio	\N	\N
4133	192	82	\N	Técnico Administrativo I	AC	35	jun-15	\N	Técnica Administrativa I	\N	\N
4134	113	23	\N	Analista Desarrollador	AC	44	me-307-2015-derh	\N	Analista Desarrolladora	\N	\N
4135	192	26	\N	Técnico Administrativo IV	AC	1	me-298-2015-derh	\N	Técnica Administrativa IV	\N	\N
4136	113	92	\N	Analista Desarrollador	AC	35	307-2015-derh	\N	Analista Desarrolladora	\N	\N
4137	192	14	\N	Técnico Administrativo IV	AC	35	me-312-2015-derh	\N	Técnica Administrativa IV	\N	\N
4138	309	104	\N	Recepcionisto I	AC	52	me-313-2015-derh	\N	Recepcionista I	\N	\N
4139	192	22	\N	Técnico Administrativo II	AC	52	me-312-2015-derh	\N	Técnica Administrativa II	\N	\N
4140	400	22	\N	Defensor Público en Formación III	AC	52	may-15	\N	Defensora Pública en Formación III	\N	\N
4141	400	22	\N	Defensor Público en Formación III	AC	52	may-15	\N	Defensora Pública en Formación III	\N	\N
4142	400	24	\N	Defensor Público en Formación III	AC	52	jun-15	\N	Defensora Pública en Formación III	\N	\N
4143	400	24	\N	Defensor Público en Formación III	AC	52	jun-15	\N	Defensora Pública en Formación III	\N	\N
4144	401	22	\N	Auxiliar Legal	AC	52	Acuerdo 77-2015	\N	Auxiliar Legal	\N	\N
4145	155	27	\N	Consultor	AC	35	me-317-2015-derh	\N	Consultora	\N	\N
4146	222	32	\N	Docente Capacitador	AC	35	me-335-2015-derh	\N	Docente Capacitadora	\N	\N
4147	10	22	\N	Defensor Público en Pasantía	AC	11	me-325-2015-derh	\N	Defensora Pública en Pasantia	\N	\N
4148	402	81	\N	Asistente de la Coordinacion Nacional de Asistencia Legal Gratuita a la Victima y a sus Familiares	AC	45	ACUERDO 94-2015	Acuerdo 62-2016	Asistente de la Coordinación Nacional de Asistencia Legal Gratuita  a la Victima y a sus Familiares 	\N	\N
4149	403	9	\N	Técnico en Sistemas de Información	AC	35	ACUERDO 95-2015	\N	Técnico en Sistemas de Información 	\N	\N
4150	192	22	\N	Técnico Administrativo I	AC	38	Modificacion 16-2015	\N	Técnica Administrativa I	\N	\N
4151	404	5	\N	Encargado de Organización y Métodos	AC	35	ACUERDO 97-2015	\N	Encargada de Organización y Métodos 	\N	\N
4157	406	81	\N	Defensor Público de Planta II	AC	45	ACUERDO 80-2015	\N	Defensora Pública de Planta II	\N	\N
4158	4	22	\N	Defensor Público de Planta I	AC	38	\N	\N	Defensora Pública de Planta I	\N	\N
4159	409	22	\N	Defensor Público de Planta III	AC	52	ACUERDO 88-2015	\N	Defensora Pública de Planta III	\N	\N
4162	410	26	\N	Defensor Público de Planta II	AC	1	ACUERDO 87-2015	\N	Defensora Pública de Planta II	\N	\N
4163	335	22	\N	Asistente de Defensor Público	AC	52	\N	\N	Asistente de Defensora Pública	\N	\N
4164	411	22	\N	Asistente de  Coordinación Departamental	AC	52	ACUERDO 96-2015	ACUERDO 96-2015	Asistente de  Coordinación Departamental 	\N	\N
4165	410	26	\N	Defensor Público de Planta II	AC	1	\N	\N	Defensora Pública de Planta II	\N	\N
4166	412	90	\N	Técnico de Estadistica	AC	35	Acuerdo 99-2015	\N	Técnica de Estadistica 	\N	\N
4167	409	100	\N	Defensor Público de Planta III	AC	52	ACUERDO 99-2015	\N	Defensora Pública de Planta III	\N	\N
4168	413	100	\N	Defensor Público de Planta II	AC	52	ACUERDO 99-2015	\N	Defensora Pública de Planta II	\N	\N
4169	413	100	\N	Defensor Público de Planta II	AC	52	ACUERDO 100-2015	\N	Defensora Pública de Planta II	\N	\N
4170	415	100	\N	Defensor Público de Planta I	AC	52	ACUERDO 101-2015	\N	Defensora Pública de Planta I	\N	\N
4171	416	100	\N	Defensor Público de Planta I	AC	52	ACUERDO 102-2015	\N	Defensora Publico de Planta I	\N	\N
4172	416	100	\N	Defensor Público de Planta I	AC	52	ACUERDO 102-2015	se cierra el puesto por cambio de nivel de carrera	Defensora Publico de Planta I	\N	\N
4173	416	100	\N	Defensor Público de Planta I	AC	52	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta I	\N	\N
4175	192	22	\N	Técnico Administrativo I	AC	38	me-348-2015-derh	\N	Técnica Administrativa I	\N	\N
4176	4	22	\N	Defensor Público de Planta I	AC	38	\N	\N	Defensora Pública de Planta I	\N	\N
4177	4	22	\N	Defensor Público de Planta I	AC	38	\N	\N	Defensora Pública de Planta I	\N	\N
4178	307	22	\N	Procurador Juridico	AC	32	ago-15	\N	Procuradora Juridica	\N	\N
4179	307	22	\N	Técnico Administrativo I	AC	11	oct-15	\N	Técnica Administrativa I	\N	\N
4180	135	10	\N	Abogado de Enlace con Cooperacion Internacional	AC	35	15-2015	\N	Abogada de Enlace con Cooperacion Internacional	\N	\N
4181	292	10	\N	Especialista en Comunicacion Social	AC	35	16-2015	\N	Especialista en Comunicacion Social	\N	\N
4182	12	82	\N	Conductor Automovilista	AC	35	ene-16	\N	Conductora Automovilista	\N	\N
4183	192	22	\N	Técnico Administrativo I	AC	5	ME-379-2016	\N	Técnica Administrativa I	\N	\N
4184	192	22	\N	Técnico Administrativo I	AC	38	me-379-2016	\N	Técnica Administrativa I	\N	\N
4185	192	22	\N	Técnico Administrativo I	AC	13	me-379-2015	\N	Técnica Administrativa I	\N	\N
4186	192	81	\N	Técnico Administrativo I	AC	13	me-385-2015	\N	Técnica Administrativa I	\N	\N
4187	192	81	\N	Técnico Administrativo I	AC	45	me-379-2015-derh	\N	Técnica Administrativa I	\N	\N
4188	192	81	\N	Técnico Administrativo I	AC	41	me-381-2015	\N	Técnica Administrativa I	\N	\N
4189	308	17	\N	Técnico Administrativo II	AC	35	mar-16	\N	Técnica Administrativa II	\N	\N
4190	306	30	\N	Defensor Público en Formación I	AC	52	ene-16	\N	Defensora Pública en Formación I	\N	\N
4191	10	22	\N	Defensor Público en Pasantía	AC	7	me-369-2015	\N	Defensora Pública en Pasantia	\N	\N
4192	10	22	\N	Defensor Público en Pasantía	AC	7	me-369-2015	\N	Defensora Pública en Pasantia	\N	\N
4193	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4194	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4195	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4196	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4197	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4198	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4199	187	23	\N	Defensor Público en Pasantía	AC	2	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4200	187	23	\N	Defensor Público en Pasantía	AC	51	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4201	187	23	\N	Defensor Público en Pasantía	AC	51	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4202	187	23	\N	Defensor Público en Pasantía	AC	51	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4203	187	23	\N	Defensor Público en Pasantía	AC	51	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4204	187	23	\N	Defensor Público en Pasantía	AC	46	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4205	187	23	\N	Defensor Público en Pasantía	AC	46	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4206	187	23	\N	Defensor Público en Pasantía	AC	46	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4207	187	23	\N	Defensor Público en Pasantía	AC	46	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4208	187	23	\N	Defensor Público en Pasantía	AC	39	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4209	187	23	\N	Defensor Público en Pasantía	AC	39	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4210	187	23	\N	Defensor Público en Pasantía	AC	39	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4211	187	23	\N	Defensor Público en Pasantía	AC	39	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4212	187	23	\N	Defensor Público en Pasantía	AC	47	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4213	187	23	\N	Defensor Público en Pasantía	AC	47	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4214	187	23	\N	Defensor Público en Pasantía	AC	47	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4215	187	23	\N	Defensor Público en Pasantía	AC	47	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4216	187	23	\N	Defensor Público en Pasantía	AC	48	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4217	187	23	\N	Defensor Público en Pasantía	AC	48	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4218	187	23	\N	Defensor Público en Pasantía	AC	48	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4219	187	23	\N	Defensor Público en Pasantía	AC	48	me-366-2015	\N	Defensora Pública en Pasantia	\N	\N
4220	181	22	\N	Defensor Público en Formación I	AC	29	me-378-2015-derh	\N	Defensora Pública en Formación I	\N	\N
4221	181	22	\N	Defensor Público en Formación I	AC	29	me-378-2015-derh	\N	Defensora Pública en Formación I	\N	\N
4222	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4223	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4224	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4225	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4226	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4227	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4228	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4229	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4230	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4231	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4232	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4233	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4234	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4235	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4236	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4237	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4238	187	23	\N	Defensor Público de Oficio	AC	51	abr-16	\N	Defensora Pública de Oficio	\N	\N
4239	187	23	\N	Defensor Público de Oficio	AC	27	jun-16	\N	Defensora Pública de Oficio	\N	\N
4240	187	23	\N	Defensor Público de Oficio	AC	27	jun-16	\N	Defensora Pública de Oficio	\N	\N
4241	187	23	\N	Defensor Público de Oficio	AC	27	jun-16	\N	Defensora Pública de Oficio	\N	\N
4242	187	23	\N	Defensor Público de Oficio	AC	27	jun-16	\N	Defensora Pública de Oficio	\N	\N
4243	187	23	\N	Defensor Público de Oficio	AC	20	abr-16	\N	Defensora Pública de Oficio	\N	\N
4244	187	23	\N	Defensor Público de Oficio	AC	20	abr-16	\N	Defensora Pública de Oficio	\N	\N
4245	192	22	\N	Técnico Administrativo I	AC	19	jul-15	\N	Técnica Administrativa I	\N	\N
4246	407	22	\N	Defensor Público de Planta I	AC	6	Acuerdo 117-2015	\N	Defensor Público de Planta I	\N	\N
4247	1	22	\N	Asistente de Defensor Público	AC	52	119-2015	\N	Asistente de Defensor Público	\N	\N
4248	309	104	\N	Recepcionisto II	AC	52	me-001-2015-derh	\N	Recepcionista II	\N	\N
4249	22	100	\N	Asistente Administrativo Legal	AC	52	120-2015	\N	Asistente Administrativo Legal	\N	\N
4250	192	81	\N	Técnico Administrativo IV	AC	54	ME-001-2016-DERH	\N	Técnica Administrativa IV	\N	\N
4251	3	84	\N	Conserje	AC	35	Acuerdo 121-2015	\N	Conserje	\N	\N
4252	3	84	\N	Conserje	AC	35	ME-008-2016-DERH-OARP-ldv	\N	Conserje	\N	\N
4253	49	22	\N	Coordinador Municipal	AC	19	Acuerdo 118-2015	\N	Coordinadora Municipal	\N	\N
4254	397	84	\N	Auxiliar de Servicios V	AC	35	me-013-2016-derh	\N	Auxiliar de Servicios V	\N	\N
4255	397	84	\N	Auxiliar de Servicios V	AC	35	me-013-2016-derh	\N	Auxiliar de Servicios V	\N	\N
4256	192	81	\N	Técnico Administrativo V	AC	13	me-010-2016-derh	\N	Técnica Administrativa V	\N	\N
4257	402	81	\N	Asistente de Coordinación Nacional	AC	45	Oficio Ref 46-2016-RRHH-CLRP-hbg	Acuerdo 50-22016	Asistente de Coordinación Nacional	\N	\N
4258	51	25	\N	Coordinador Unidad de Apoyo Técnico	AC	52	Ref 46-2016-RRHH-CLRP-hbg	\N	Coordinadora Unidad de Apoyo Técnico	\N	\N
4259	341	81	\N	Auxiliar de Coordinación	AC	45	 Ref 46-2016-RRHH-CLRP-hbg	\N	Auxiliar de Coordinación	\N	\N
4260	377	81	\N	Sub Coordinador de Asistencia Legal Gratuita a la Víctima y sus Familiares	AC	45	Oficio Ref 46-2016-RRHH-CLRP-hbg	\N	Sub Coordinador de Asistencia Legal Gratuita a la Víctima y sus Familiares	\N	\N
4261	215	23	\N	Coordinador Nacional de Defensores de Oficio	AC	44	Oficio Ref 46-2016-RRHH-CLRP-hbg	Duplicado 	Coordinador Nacional de Defensores de Oficio	\N	\N
4262	1	30	\N	Asistente de Defensor Público	AC	52	Ref 46-2016-RRHH-CLRP-hbg	\N	Asistente de Defensor Público	\N	\N
4263	392	30	\N	Trabajador Social II	AC	52	Ref 46-2016-RRHH-CLRP-hbg	\N	Trabajadora Social II	\N	\N
4264	335	30	\N	Asistente de Defensor Público	AC	52	Ref 46-2016-RRHH-CLRP-hbg	\N	Asistente de Defensor Público	\N	\N
4265	408	30	\N	Defensor Público de Planta I	AC	52	Ref 46-2016-RRHH-CLRP-hbg	\N	Defensor Público de Planta I	\N	\N
4266	30	9	\N	Recepcionisto II	AC	35	modificacion 5-2016	\N	Recepcionista II	\N	\N
4267	192	81	\N	Técnico Administrativo I	AC	13	Modificacion 2-2016	\N	Técnica Administrativa I	\N	\N
4268	309	104	\N	Recepcionisto III	AC	52	Modificacion 4-2016	\N	Recepcionista III	\N	\N
4269	1	81	\N	Procurador Juridico I	AC	45	Modificacion 6-2016	\N	Procuradora Juridica I	\N	\N
4271	408	30	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4272	35	30	\N	Auxiliar Administrativo	AC	52	OFICIO 46-2016-RRHH	\N	Auxiliar Administrativa	\N	\N
4273	52	30	\N	Coordinador Nacional de Ejecución	AC	52	OFICIO 46-2016-RRHH	\N	Coordinadora Nacional de Ejecución	\N	\N
4274	65	29	\N	Coordinador Nacional de Impugnaciones	AC	52	OFICIO 46-2016-RRHH	\N	Coordinadora Nacional de Impugnaciones	\N	\N
4275	406	29	\N	Defensor Público de Planta II	AC	52	OFICIO 46-2016-RRHH	\N	Defensora Pública de Planta II	\N	\N
4276	406	29	\N	Defensor Público de Planta II	AC	52	\N	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
4277	407	29	\N	Defensor Público de Planta I	AC	52	OFICIO 46-2016-RRHH	\N	Defensor Público de Planta I	\N	\N
4278	407	29	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4279	406	29	\N	Defensor Público de Planta II	AC	52	OFICIO 46-2016-RRHH	\N	Defensora Pública de Planta II	\N	\N
4280	406	29	\N	Defensor Público de Planta II	AC	52	OFICIO 46-2016-RRHH	\N	Defensora Pública de Planta II	\N	\N
4281	406	29	\N	Defensor Público de Planta II	AC	52	OFICIO 46-2016-RRHH	se cierra el puesto por cambio de nivel de carrera	Defensora Pública de Planta II	\N	\N
4282	409	29	\N	Defensor Público de Planta III	AC	52	OFICIO 46-2016-RRHH	\N	Defensora Pública de Planta III	\N	\N
4283	412	90	\N	Técnico de Estadistica	AC	35	OFICIO46-2016-RRHH	\N	Técnica de Estadistica 	\N	\N
4284	7	105	\N	Trabajador Social I	AC	52	OFICIO 46-2016-RRHH	\N	Trabajadora Social I	\N	\N
4285	392	105	\N	Trabajador Social II	AC	52	ACUERDO 46-2016-RRHH	\N	Trabajadora Social II	\N	\N
4286	392	105	\N	Trabajador Social II	AC	52	OFICIO 46-2016-RRHH	\N	Trabajadora Social II	\N	\N
4287	213	4	\N	Diseñador Gráfico	AC	35	OFICIO 46-2016	\N	Diseñadora Gráfica	\N	\N
4288	10	22	\N	Defensor Público en Pasantía	AC	21	me-035-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4289	70	4	\N	Capacitador Tutor	AC	35	OFICIO 46-2016-RRHH	\N	Capacitadora Tutora	\N	\N
4290	407	4	\N	Defensor Público de Planta I	AC	35	OFICIO 46-2016-RRHH	\N	Defensor Público de Planta I	\N	\N
4291	192	22	\N	Técnico Administrativo I	AC	23	me-048-2016-derh	\N	Técnica Administrativa I	\N	\N
4292	192	22	\N	Técnico Administrativo I	AC	12	me-057-2016-derh	\N	Técnica Administrativa I	\N	\N
4293	192	22	\N	Técnico Administrativo I	AC	12	me-057-2016	\N	Técnica Administrativa I	\N	\N
4294	192	1	\N	Técnico Administrativo III	AC	35	me-053-2016-derh	\N	Técnica Administrativa III	\N	\N
4295	182	81	\N	Defensor Público en Formación II	AC	27	me-047-2016-derh	\N	Defensora Pública en Formacion II	\N	\N
4296	192	22	\N	Técnico Administrativo I	AC	5	me-050-2016-derh	\N	Técnica Administrativa I	\N	\N
4297	195	81	\N	Defensor Público en Pasantía	AC	23	me-037-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4298	171	22	\N	Asistente Administrativo Financiero	AC	11	Acuerdo 12-2016	\N	Asistente Administrativa Financiero	\N	\N
4299	35	20	\N	Auxiliar Administrativo	AC	35	Acuerdo 13-2016	\N	Auxliar Administrativa	\N	\N
4300	329	92	\N	Programador	AC	35	Acuerdo 16-2016	\N	Programadora	\N	\N
4301	335	22	\N	Asistente de Defensor Público	AC	5	Acuerdo 17-2016	\N	Asistente de Defensora Pública	\N	\N
4302	397	84	\N	Auxiliar de Servicios III	AC	35	Me-089-2016-derh	\N	Auxiliar de Servicios III	\N	\N
4303	10	22	\N	Defensor Público en Pasantía	AC	23	Me-088-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4304	10	22	\N	Defensor Público en Pasantía	AC	23	Me-088-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4305	10	22	\N	Defensor Público en Pasantía	AC	23	ME-088-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4306	10	22	\N	Defensor Público en Pasantía	AC	23	ME-088-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4307	335	22	\N	Asistente de Defensor Público	AC	6	Memorando 090-2016-DERH-OARP-ldv	\N	Asistente de Defensor Público	\N	\N
4308	187	23	\N	Defensor Público en Pasantía	AC	47	me-087-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4309	10	22	\N	Defensor Público en Pasantía	AC	20	me-046-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4310	10	22	\N	Defensor Público en Pasantía	AC	26	me-102-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4311	192	22	\N	Técnico Administrativo I	AC	23	me-123-2016-derh	\N	Técnica Administrativa I	\N	\N
4312	1	22	\N	Procurador Juridico I	AC	26	me-121-2016-derh	\N	Procuradora Juridica I	\N	\N
4313	192	9	\N	Técnico Administrativo III	AC	35	me-131-2016-derh	\N	Técnica Administrativa III	\N	\N
4314	335	102	\N	Asistente de Defensor Público	AC	6	Acuerdo 26-2016	\N	Asistente de Defensor Público	\N	\N
4315	406	9	\N	Defensor Público de Planta II	AC	35	Acuerdo 31-2016	\N	Defensora Pública de Planta II	\N	\N
4316	406	29	\N	Defensor Público de Planta I	AC	52	OFICIO 46-2016-RRHH	\N	Defensora Pública de Planta I	\N	\N
4317	416	100	\N	Defensor Público de Planta III	AC	52	\N	\N	Defensora Pública de Planta III	\N	\N
4318	406	29	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4319	123	98	\N	Administrativo V	AC	35	me-152-2016-derh	\N	Administrativa V	\N	\N
4320	418	1	\N	Experto Legal Administrativo	AC	35	me-160-2016-derh	\N	Experto Legal Administrativo	\N	\N
4321	319	1	\N	Administrativo I	AC	35	me-152A-2016-derh	\N	Administrativa I	\N	\N
4322	192	1	\N	Especialista	AC	35	me-153A-2016-derh	\N	Especialista	\N	\N
4323	123	98	\N	Administrativo I	AC	35	me-160A-2016-derh	\N	Administrativa I	\N	\N
4324	192	22	\N	Técnico Administrativo I	AC	38	me-172-2016-derh	\N	Técnica Administrativa I	\N	\N
4325	1	100	\N	Procurador Juridico	AC	52	me-177-2016-derh	\N	Procuradora Juridica	\N	\N
4326	419	81	\N	Coodinador de la Coordinación Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	AC	45	Acuerdo 53-2016	\N	Coordinadora de al Coordinación Nacional de Asistencia Legal Grauita a la Víctima y a sus Familiares	\N	\N
4327	419	81	\N	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	AC	45	Acuerdo 53-2016	\N	Coordinador Nacional de Asistencia Legal Gratuita a la Víctima y a sus Familiares	\N	\N
4328	319	22	\N	Administrativo I	AC	32	me-178-2016-derh	\N	Administrativa I	\N	\N
4329	319	22	\N	Administrativo I	AC	24	me-178-2016-derh	\N	Administrativa I	\N	\N
4330	113	92	\N	Auxiliar Técnico en Informatica II	AC	35	me-178-2016-derh	\N	Auxiliar Técnica en Informatica II	\N	\N
4331	30	100	\N	Recepcionisto I	AC	52	me-177-2016-derh	\N	Recepcionista I	\N	\N
4332	319	100	\N	Procurador Juridico	AC	52	me-177-2016-derh	\N	Procuradora Juridica	\N	\N
4333	407	29	\N	Defensor Público de Planta I	AC	52	Acuerdo 33-2016	\N	Defensora Pública de Planta I	\N	\N
4334	416	100	\N	Defensor Público de Planta II	AC	52	ACUERDO 102-2015	\N	Defensora Pública de Planta II	\N	\N
4335	406	9	\N	Defensor Público de Planta II	AC	35	Acuerdo 44-2016	\N	Defensora Pública de Planta II	\N	\N
4336	4	22	\N	Defensor Público de Planta III	AC	52	Acuerdo 47-2016	\N	Defensora Pública de Planta III	\N	\N
4337	335	25	\N	Asistente de Defensor Público	AC	52	Acuerdo 55-2016	\N	Asistente de Defensor Público	\N	\N
4338	30	32	\N	Recepcionisto II	AC	35	me-200-2016-derh	\N	Recepcionista II	\N	\N
4339	175	32	\N	Médico Personal	AC	35	me-201-2016-derh-	\N	Medico Personal	\N	\N
4340	10	22	\N	Defensor Público en Pasantía	AC	11	me-192-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4341	30	104	\N	Recepcionisto III	AC	52	me-199-2016-derh	\N	Recepcionista III	\N	\N
4342	181	29	\N	Defensor Público en Formación I	AC	8	ME-190-2016-DERH	\N	Defensora Pública en Formación I	\N	\N
4343	1	22	\N	Procurador Juridico	AC	14	ME-214-2016-DERH	\N	Procuradora Juridica	\N	\N
4344	1	22	\N	Procurador Juridico	AC	14	ME-214-2016-DERH	\N	Procuradora Juridica	\N	\N
4345	197	30	\N	Defensor Público en Pasantía	AC	52	me-223-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4346	197	30	\N	Defensor Público en Pasantía	AC	52	me-223-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4347	192	29	\N	Técnico Administrativo III	AC	52	Me-215-2016-derh	\N	Técnica Administrativa III	\N	\N
4348	192	29	\N	Técnico Administrativo I	AC	52	me-211-2016-derh	\N	Técnica Administrativa I	\N	\N
4349	192	9	\N	Técnico Administrativo I	AC	35	Me-215-2016-derh	\N	Técnica Administrativa I	\N	\N
4350	192	9	\N	Técnico Administrativo I	AC	35	Me-215-2016-derh	\N	Técnica Administrativa I	\N	\N
4351	192	9	\N	Técnico Administrativo I	AC	35	me-215-2016-derh	\N	Técnica Administrativa I	\N	\N
4352	30	27	\N	Recepcionisto II	AC	44	me-236-2016-derh	\N	Recepcionista II	\N	\N
4353	192	27	\N	Técnico Administrativo IV	AC	44	me-236-2016-derh	\N	Técnica Administrativa IV	\N	\N
4354	420	27	\N	Defensor Público en Pasantía	AC	44	me-229-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4355	420	27	\N	Defensor Público en Pasantía	AC	44	me-229-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4356	420	27	\N	Defensor Público en Pasantía	AC	44	me-229-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4357	420	27	\N	Defensor Público en Pasantía	AC	44	me-229-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4358	421	1	\N	Experto en Administracion Publica	AC	35	006-2016	\N	Experto en Administracion Publica	\N	\N
4359	181	22	\N	Defensor Público en Formación I	AC	32	me-234-2016-derh	\N	Defensora Pública en Formación I	\N	\N
4360	181	22	\N	Defensor Público en Formación I	AC	32	me-234-2016-derh	\N	Defensora Pública en Formación I	\N	\N
4361	408	22	\N	Defensor Público de Planta I y Coordinador	AC	20	Acuerdo 59-2016	\N	Defensora Pública de Planta I y Coordinador 	\N	\N
4362	408	22	\N	Defensor Público de Planta I y Coordinador Municipal	AC	20	Acuerdo 59-2016	\N	Defensora Pública de Planta I y Coordinador Municipal	\N	\N
4363	15	12	\N	Encargado de Seguimiento Monitoreo Supervisión Administrativo	AC	35	Acuerdo 62-2016	\N	Encargada de Seguimiento Monitoreo Supervisión Administrativo	\N	\N
4364	335	10	\N	Asistente de Defensor Público	AC	35	Acuerdo 68-2016	\N	Asistente de Defensora Pública	\N	\N
4365	335	10	\N	Asistente de Defensor Público	AC	35	Acuerdo 68-2016	\N	Asistente de Defensora Pública	\N	\N
4366	192	27	\N	Técnico Administrativo IV	AC	44	Me-236-2016-derh	\N	Técnica Administrativa IV	\N	\N
4367	400	29	\N	Defensor Público en Formación III	AC	52	Me-244-2016-derh	\N	Defensora Pública en Formación III	\N	\N
4368	1	26	\N	Procurador Juridico	AC	1	abr-16	\N	Procuradora Juridica	\N	\N
4369	1	26	\N	Procurador Juridico	AC	1	abr-16	\N	Procuradora Juridica	\N	\N
4370	1	26	\N	Procurador Juridico I	AC	1	abr-16	\N	Procuradora Juridica I	\N	\N
4371	1	26	\N	Procurador Juridico II	AC	1	abr-16	\N	Procuradora Juridica II	\N	\N
4372	1	24	\N	Procurador Juridico	AC	52	abr-16	\N	Procuradora Juridica	\N	\N
4373	1	24	\N	Procurador Juridico	AC	52	abr-16	\N	Procuradora Juridica	\N	\N
4374	1	24	\N	Procurador Juridico	AC	52	abr-16	\N	Procuradora Juridica	\N	\N
4375	1	24	\N	Procurador Juridico	AC	52	abr-16	\N	Procuradora Juridica	\N	\N
4376	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4377	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4378	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4379	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4380	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4381	1	24	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4382	1	27	\N	Procurador Juridico II	AC	44	abr-16	\N	Procuradora Juridica II	\N	\N
4383	1	81	\N	Procurador Juridico II	AC	45	abr-16	\N	Procuradora Juridica II	\N	\N
4384	1	81	\N	Procurador Juridico III	AC	45	abr-16	\N	Procuradora Juridica III	\N	\N
4385	1	81	\N	Procurador Juridico II	AC	54	abr-16	\N	Procuradora Juridica II	\N	\N
4386	1	22	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4387	1	81	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4388	1	81	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4389	1	81	\N	Procurador Juridico I	AC	14	abr-16	\N	Procuradora Juridica I	\N	\N
4390	1	81	\N	Procurador Juridico I	AC	18	abr-16	\N	Procuradora Juridica I	\N	\N
4391	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4392	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4393	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4394	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4395	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4396	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4397	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4398	1	30	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4399	1	29	\N	Procurador Juridico II	AC	52	abr-16	\N	Procuradora Juridica II	\N	\N
4400	1	22	\N	Procurador Juridico I	AC	38	abr-16	\N	Procuradora Juridica I	\N	\N
4401	1	22	\N	Procurador Juridico I	AC	38	abr-16	\N	Procuradora Juridica I	\N	\N
4402	1	22	\N	Procurador Juridico I	AC	38	abr-16	\N	Procuradora Juridica I	\N	\N
4403	1	22	\N	Procurador Juridico I	AC	38	abr-16	\N	Procuradora Juridica I	\N	\N
4404	1	22	\N	Procurador Juridico I	AC	38	abr-16	\N	Procuradora Juridica I	\N	\N
4405	1	22	\N	Procurador Juridico I	AC	11	abr-16	\N	Procuradora Juridica I	\N	\N
4406	1	22	\N	Procurador Juridico I	AC	7	abr-16	\N	Procuradora Juridica I	\N	\N
4407	1	22	\N	Procurador Juridico I	AC	8	abr-16	\N	Procuradora Juridica I	\N	\N
4408	1	22	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4409	1	22	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4410	1	22	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4411	1	22	\N	Procurador Juridico I	AC	52	abr-16	\N	Procuradora Juridica I	\N	\N
4412	1	22	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4413	1	22	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4414	1	22	\N	Procurador Juridico I	AC	13	abr-16	\N	Procuradora Juridica I	\N	\N
4415	1	22	\N	Procurador Juridico I	AC	12	abr-16	\N	Procuradora Juridica I	\N	\N
4416	1	22	\N	Procurador Juridico I	AC	12	abr-16	\N	Procuradora Juridica I	\N	\N
4417	1	22	\N	Procurador Juridico I	AC	14	abr-16	\N	Procuradora Juridica I	\N	\N
4418	1	22	\N	Procurador Juridico	AC	17	abr-16	\N	Procuradora Juridica	\N	\N
4419	1	22	\N	Procurador Juridico I	AC	19	abr-16	\N	Procuradora Juridica I	\N	\N
4420	1	22	\N	Procurador Juridico I	AC	5	abr-16	\N	Procuradora Juridica I	\N	\N
4421	1	22	\N	Procurador Juridico I	AC	22	abr-16	\N	Procuradora Juridica I	\N	\N
4422	1	22	\N	Procurador Juridico I	AC	23	abr-16	\N	Procuradora Juridica I	\N	\N
4423	1	22	\N	Procurador Juridico I	AC	23	abr-16	\N	Procuradora Juridica I	\N	\N
4424	1	22	\N	Procurador Juridico I	AC	23	abr-16	\N	Procuradora Juridica I	\N	\N
4425	1	22	\N	Procurador Juridico I	AC	23	abr-16	\N	Procuradora Juridica I	\N	\N
4426	1	22	\N	Procurador Juridico II	AC	23	abr-16	\N	Procuradora Juridica II	\N	\N
4427	1	22	\N	Procurador Juridico I	AC	41	abr-16	\N	Procuradora Juridica I	\N	\N
4428	1	22	\N	Procurador Juridico I	AC	29	abr-16	\N	Procuradora Juridica I	\N	\N
4429	1	22	\N	Procurador Juridico I	AC	6	abr-16	\N	Procuradora Juridica I	\N	\N
4430	192	31	\N	Técnico Administrativo II	AC	35	abr-16	\N	Técnica Administrativa II	\N	\N
4431	1	81	\N	Procurador Juridico I	AC	45	abr-16	\N	Procuradora Juridica I	\N	\N
4432	1	81	\N	Procurador Juridico I	AC	45	abr-16	\N	Procuradora Juridica I	\N	\N
4433	1	22	\N	Procurador Juridico I	AC	22	abr-16	\N	Procuradora Juridica I	\N	\N
4434	1	22	\N	Procurador Juridico I	AC	22	abr-16	\N	Procuradora Juridica I	\N	\N
4435	1	29	\N	Procurador Juridico II	AC	52	abr-16	\N	Procuradora Juridica II	\N	\N
4436	1	29	\N	Procurador Juridico II	AC	52	abr-16	\N	Procuradora Juridica II	\N	\N
4437	319	90	\N	Administrativo I	AC	35	abr-16	\N	Administrativa I	\N	\N
4438	1	27	\N	Procurador Juridico II	AC	44	may-16	\N	Procuradora Juridica II	\N	\N
4439	369	12	\N	Jefe del Departamento Administrativo	AC	35	Acuerdo No 72-2016	\N	Jefe del Departamento Administrativo	\N	\N
4440	307	22	\N	Procurador Juridico I	AC	11	may-16	\N	Procuradora Juridica I	\N	\N
4441	319	32	\N	Administrativo I	AC	35	me-274-2016	\N	Administrativa I	\N	\N
4442	319	30	\N	Administrativo I	AC	52	me-279-2016-derh	\N	Administrativa I	\N	\N
4443	1	22	\N	Procurador Juridico I	AC	17	may-16	\N	Procuradora Juridica I	\N	\N
4444	181	22	\N	Defensor Público en Formación I	AC	31	may-16	\N	Defensora Pública en Formación I	\N	\N
4445	1	100	\N	Procurador Juridico III	AC	52	may-16	\N	Procuradora Juridica III	\N	\N
4446	1	100	\N	Procurador Juridico III	AC	52	may-16	\N	Procuradora Juridica III	\N	\N
4447	1	22	\N	Procurador Juridico I	AC	16	may-16	\N	Procuradora Juridica I	\N	\N
4448	1	27	\N	Procurador Juridico	AC	44	me-268-2016-derh	\N	Procuradora Juridica	\N	\N
4449	319	8	\N	Administrativo I	AC	35	ME-264-2016-DERH	\N	Administrativa I	\N	\N
4450	319	1	\N	Administrativo I	AC	35	Me-264-2016-derh	\N	Administrativa I	\N	\N
4451	1	22	\N	Procurador Juridico I	AC	31	may-16	\N	Procuradora Juridica I	\N	\N
4452	1	30	\N	Procurador Juridico	AC	52	may-16	\N	Procuradora Juridica	\N	\N
4453	192	12	\N	Técnico Administrativo I	AC	35	may-16	\N	Técnica Administrativa I	\N	\N
4454	332	5	\N	Asistente Administrativo II	AC	35	Acuerdo  76-2016	\N	Asistente Administrativo II	\N	\N
4455	184	22	\N	Defensor Público en Pasantía	AC	26	me-259-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4456	184	22	\N	Defensor Publico en Pasantia Intercultural	AC	26	Me-259-2016-derh	\N	Defensora Publica en Pasantia Intercultural	\N	\N
4457	97	86	\N	Defensor Público en Formación I	AC	35	Me-275-2016-derh	\N	Defensora Pública en Formación I	\N	\N
4458	10	22	\N	Defensor Público en Pasantía	AC	14	Me-269-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4459	319	90	\N	Administrativo I	AC	35	may-16	\N	Administrativa I	\N	\N
4460	422	27	\N	Sub Coordinador de Enfoque de Genero y Derechos Humanos	AC	44	Acuerdo 75-2016	\N	Sub Coordinadora de Enfoque de Genero y Derechos Humanos 	\N	\N
4461	335	22	\N	Asistente de Defensor Público	AC	38	Acuerdo 77-2016	\N	Asistente de Defensor Público	\N	\N
4462	332	32	\N	Asistente Administrativo II	AC	35	Acuerdo 78-2016	\N	Asistente Administrativo II	\N	\N
4463	192	17	\N	Técnico Administrativo I	AC	35	Me-278-2016-derh	\N	Técnica Administrativa I	\N	\N
4464	1	27	\N	Procurador Juridico	AC	44	may-16	\N	Procuradora Juridica	\N	\N
4465	1	27	\N	Procurador Juridico	AC	44	may-16	\N	Procuradora Juridica	\N	\N
4466	423	5	\N	Jefe del Departamento de Planificación	AC	35	Acuerdo 84-2016	\N	Jefe del Departamento de Planificación	\N	\N
4467	182	81	\N	Defensor Público en Formación II	AC	8	Me-286-2016-derh	\N	Defensora Pública en Formacion II	\N	\N
4468	182	81	\N	Defensor Público en Formación II	AC	8	Me-286-2016-derh	\N	Defensora Pública en Formacion II	\N	\N
4469	424	22	\N	Técnico Administrativo II	AC	25	jun-16	\N	Técnica Administrativa II	\N	\N
4470	425	91	\N	Especialista en Protocolo Institucional y Cooperacion Externa	AC	35	may-17	\N	Especialista en Protocolo Institucional y Cooperacion Externa	\N	\N
4471	425	91	\N	Especialista en Protocolo Institucional	AC	35	jun-16	\N	Especialista en Protocolo Institucional	\N	\N
4472	420	27	\N	Defensor Público en Formación I	AC	44	me-299-2016-derh	\N	Defensora Pública en Formación I	\N	\N
4473	420	27	\N	Defensor Público en Formación I	AC	44	me-299-2016-derh	\N	Defensora Pública en Formación I	\N	\N
4474	1	27	\N	Procurador Juridico	AC	44	me-301-2016-derh	\N	Procuradora Juridica	\N	\N
4475	1	27	\N	Procurador Juridico	AC	44	me-301-2016-derh	\N	Procuradora Juridica	\N	\N
4476	10	22	\N	Defensor Público en Pasantía	AC	53	me-296-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4477	192	22	\N	Técnico Administrativo II	AC	25	me-304-2016-derh	\N	Técnica Administrativa II	\N	\N
4478	426	7	\N	Jefe de la Unidad de Auditoría Interna	AC	35	Acuerdon No 95-2016	\N	Jefe de la Unidad de Auditoría Interna	\N	\N
4480	10	22	\N	Defensor Público en Pasantía	AC	53	31-2016	\N	Defensora Pública en Pasantía	\N	\N
4481	408	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 85-2016	\N	Defensora Publico de Planta I	\N	\N
4482	407	22	\N	Defensor Público de Planta I	AC	13	Acuerdo 87-2016	\N	Defensor Público de Planta I	\N	\N
4483	427	12	\N	Asistente Administrativo II	AC	35	Acuerdo 97-2016	\N	Asistente Administrativo II	\N	\N
4484	4	22	\N	Defensor Público de Planta II	AC	52	Acuerdo 98-2016	\N	Defensora Pública de Planta II	\N	\N
4485	370	16	\N	Jefe del Departamento de Cobro y Pago Administrativo Interino	AC	35	Acuerdo 92-2016	\N	Jefe del Departamento de Cobro y Pago Administrativo	\N	\N
4486	429	89	\N	Director de División de Fortalecimiento Institucional	AC	35	Acuerdo 93-2016	\N	Directora de División de Fortalecimiento Institucional	\N	\N
4487	428	11	\N	Jefe del Departamento de Asignación de Casos	AC	2	Acuerdo 99-2016	\N	Jefa del Departamento de Asignación de Casos	\N	\N
4488	6	30	\N	Trabajador Social	AC	52	me-315-2016-derh	\N	Trabajadora Social	\N	\N
4489	187	23	\N	Defensor Público en Pasantía	AC	23	me-318-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4490	187	23	\N	Defensor Público en Pasantía	AC	23	me-318-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4491	10	22	\N	Defensor Público en Pasantía	AC	41	me-317-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4492	10	22	\N	Defensor Público en Pasantía	AC	41	me-317-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4493	1	22	\N	Procurador Juridico I	AC	5	me-320-2016-derh	\N	Procuradora Juridica I	\N	\N
4494	1	22	\N	Procurador Juridico I	AC	5	me-320-2016-derh	\N	Procuradora Juridica I	\N	\N
4495	226	22	\N	Defensor Público en Formación II	AC	5	Modificacion 39-2016	\N	Defensora Pública en Formación II	\N	\N
4496	1	22	\N	Procurador Juridico	AC	26	me-333-2016-derh	\N	Procuradora Juridica	\N	\N
4497	319	22	\N	Administrativo I	AC	34	Me-332-2016-derh	\N	Administrativa I	\N	\N
4498	1	9	\N	Procurador Juridico	AC	35	me-326-2016-derh	\N	Procuradora Juridica	\N	\N
4499	319	14	\N	Administrativo I	AC	35	Me-343-2016-derh	\N	Administrativa I	\N	\N
4500	10	22	\N	Defensor Público en Pasantía	AC	22	Me-340-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4501	10	22	\N	Defensor Público en Pasantía	AC	22	Me-340-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4502	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4503	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4504	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4505	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4506	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4507	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4508	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4509	1	24	\N	Procurador Juridico	AC	52	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4510	1	81	\N	Procurador Juridico	AC	45	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4511	1	81	\N	Procurador Juridico	AC	45	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4512	1	81	\N	Procurador Juridico	AC	45	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4513	1	81	\N	Procurador Juridico	AC	45	me-347-2016-derh	\N	Procuradora Juridica	\N	\N
4514	1	81	\N	Procurador Juridico	AC	14	Modificacion 41-2016	\N	Procuradora Juridica	\N	\N
4515	1	22	\N	Procurador Juridico	AC	14	Modificacion 42-2016	\N	Procuradora Juridica	\N	\N
4516	1	22	\N	Procurador Juridico	AC	14	Modificacion 42-2016	\N	Procuradora Juridica	\N	\N
4517	1	22	\N	Procurador Juridico	AC	14	Modificacion 42-2016	\N	Procuradora Juridica	\N	\N
4518	6	30	\N	Trabajador Social	AC	52	Modificacion 44-2016	\N	Trabajadora Social	\N	\N
4519	1	22	\N	Procurador Juridico	AC	53	me-345-2016-derh	\N	Procuradora Juridica	\N	\N
4520	1	22	\N	Procurador Juridico	AC	8	me-341-2016-derh	\N	Procuradora Juridica	\N	\N
4521	1	22	\N	Procurador Juridico	AC	8	me-341-2016-derh	\N	Procuradora Juridica	\N	\N
4522	10	22	\N	Defensor Público en Pasantía	AC	8	Me-341-2016-derh	\N	Defensora Pública en Pasantia	\N	\N
4523	243	11	\N	Auxiliar de Ingreso de Informacion	AC	46	ME-339-2016-DERH 	\N	Auxiliar de Ingreso de Informacion	\N	\N
4524	243	11	\N	Auxiliar de Ingreso de Informacion	AC	46	ME-339-2016-DERH 	\N	Auxiliar de Ingreso de Informacion	\N	\N
4525	1	27	\N	Procurador Juridico	AC	44	ME-354-2016-DERH	\N	Procuradora Juridica	\N	\N
4526	1	27	\N	Procurador Juridico	AC	44	ME-354-2016-DERH	\N	Procuradora Juridica	\N	\N
4527	1	27	\N	Procurador Juridico	AC	44	ME-354-2016-DERH	\N	Procuradora Juridica	\N	\N
4528	1	27	\N	Procurador Juridico	AC	44	ME-354-2016-DERH	\N	Procuradora Juridica	\N	\N
4529	1	27	\N	Procurador Juridico	AC	44	ME-354-2016-DERH	\N	Procuradora Juridica	\N	\N
4530	1	86	\N	Procurador Juridico	AC	35	ME-359-2016-DERH	\N	Procuradora Juridica	\N	\N
4531	1	86	\N	Procurador Juridico	AC	35	ME-359-2016-DERH	\N	Procuradora Juridica	\N	\N
4532	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4533	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4534	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4535	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4536	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4537	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4538	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4539	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4540	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4541	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4542	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4543	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4544	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4545	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4546	408	22	\N	Defensor Público de Planta I	AC	52	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensora Pública de Planta I	\N	\N
4547	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4548	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4549	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4550	415	22	\N	Defensor Público de Planta II	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Defensora Pública de Planta II	\N	\N
4551	415	22	\N	Defensor Público de Planta II	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Defensora Pública de Planta II	\N	\N
4552	415	22	\N	Defensor Público de Planta II	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Defensora Pública de Planta II	\N	\N
4553	415	22	\N	Defensor Público de Planta II	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Defensora Pública de Planta II	\N	\N
4554	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4555	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4556	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4557	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4558	362	106	\N	Encargado de Psicología	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Encargado de Psicología	\N	\N
4559	415	22	\N	Defensor Público de Planta II	AC	52	\N	\N	ADefensora Pública de Planta II	\N	\N
4560	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4561	335	22	\N	Asistente de Defensor Público	AC	52	Ref 824-2016-RRHH-CLRP-hbg	\N	Asistente de Defensor Público	\N	\N
4562	415	22	\N	Defensor Público de Planta II	AC	52	\N	\N	ADefensora Pública de Planta II	\N	\N
4563	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4564	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4565	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4566	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4567	408	22	\N	Defensor Público de Planta I	AC	52	\N	\N	Defensora Pública de Planta I	\N	\N
4568	422	27	\N	Coordinador Enfoque de Género y Derechos Humanos	AC	44	Ref 824-2016-RRHH-CLRP-hbg	\N	Coordinador Enfoque de Género y Derechos Humanos	\N	\N
4569	49	22	\N	Coordinador Municipal	AC	20	Ref 824-2016-RRHH-CLRP-hbg	\N	Coordinadora Municipal	\N	\N
4570	416	26	\N	Defensor Público de Planta I	AC	6	Ref 824-2016-RRHH-CLRP-hbg	\N	Defensor Público de Planta I	\N	\N
4571	335	102	\N	Asistente de Defensor Público	AC	6	Ref 824-2016-RRHH-CLRP-hbg	\N	Asistente de Defensora Pública	\N	\N
4572	415	22	\N	Defensor Público de Planta II	AC	52	\N	\N	ADefensora Pública de Planta II	\N	\N
4573	415	22	\N	Defensor Público de Planta II	AC	52	\N	\N	ADefensora Pública de Planta II	\N	\N
4574	335	22	\N	Asistente de Defensor Público	AC	52	\N	\N	Asistente de Defensor Público	\N	\N
4575	416	26	\N	Defensor Público de Planta I	AC	6	\N	\N	Defensora Pública de Planta I	\N	\N
4576	335	102	\N	Asistente de Defensor Público	AC	6	\N	\N	Asistente de Defensor Público	\N	\N
4577	335	81	\N	Asistente de Defensor Público	AC	6	Ref 824-2016-RRHH-CLRP-hbg	\N	Asistente de Defensor Público	\N	\N
4578	319	89	\N	Administrativo I	AC	35	ME-371-2016-DERH	\N	Administrativa I	\N	\N
4579	309	104	\N	Recepcionisto III	AC	35	ME-370-2016-DERH	\N	Recepcionista III	\N	\N
4580	1	22	\N	Procurador Juridico	AC	24	ME-376-2016-DERH	\N	Procuradora Juridica	\N	\N
4581	10	22	\N	Defensor Público en Pasantía	AC	24	ME-373-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4582	1	22	\N	Procurador Juridico	AC	11	ME-377-2016-DERH	\N	Procuradora Juridica	\N	\N
4583	197	30	\N	Defensor Público en Pasantía	AC	52	ME-372-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4584	197	30	\N	Defensor Público en Pasantía	AC	52	ME-372-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4585	1	23	\N	Procurador Juridico	AC	44	ME-378-2016-DERH	\N	Procuradora Juridica	\N	\N
4586	1	23	\N	Procurador Juridico	AC	44	ME-378-2016-DERH	\N	Procuradora Juridica	\N	\N
4587	309	104	\N	Recepcionista	AC	52	ME-384-2016-DERH	\N	Recepcionista	\N	\N
4588	430	14	\N	Sub jefe de la Sección de Compras	AC	35	Acuerdo numero 111-2016	\N	Sub jefe de la Sección de Compras	\N	\N
4590	319	14	\N	Administrativo I	AC	35	ME-384-2016-DERH	\N	Administrativa I	\N	\N
4591	354	22	\N	Defensor Público de Planta II	AC	53	Oficio 1093-2014-RRHH-CLRP-hbg	\N	Defensora Pública de Planta II	\N	\N
4592	341	27	\N	Auxiliar de Coordinación	AC	52	Acuerdo 117-2016	\N	Auxiliar de Coordinación	\N	\N
4593	1	22	\N	Procurador Juridico	AC	11	jun-16	\N	Procuradora Juridica	\N	\N
4594	10	22	\N	Defensor Público en Pasantía	AC	17	ME-388-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4595	187	23	\N	Defensor Público en Pasantía	AC	51	ME-396-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4596	187	23	\N	Defensor Público en Pasantía	AC	51	ME-396-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4597	187	23	\N	Defensor Público en Pasantía	AC	51	ME-396-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4598	319	89	\N	Administrativo I	AC	35	ME-371-2016-DERH	\N	Administrativa I	\N	\N
4599	187	23	\N	Defensor Público en Pasantía	AC	2	ME-395-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4600	187	23	\N	Defensor Público en Pasantía	AC	2	ME-395-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4601	187	23	\N	Defensor Público en Pasantía	AC	2	ME-395-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4602	187	23	\N	Defensor Público en Pasantía	AC	2	ME-395-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
4603	99	81	\N	Técnico Administrativo	AC	35	ME-394-2016-DERH	\N	Técnica Administrativa	\N	\N
4604	99	81	\N	Técnico Administrativo	AC	35	ME-394-2016-DERH	\N	Técnica Administrativa	\N	\N
4605	93	81	\N	Psicólogo	AC	23	ME-400-2016-DERH	\N	Psicóloga	\N	\N
4606	1	22	\N	Procurador Juridico	AC	41	ME-399-2016-DERH	\N	Procuradora Juridica	\N	\N
4607	319	33	\N	Administrativo I	AC	35	ME-402-2016-DERH	\N	Administrativa I	\N	\N
4608	1	26	\N	Procurador Juridico	AC	1	ME-406-2016-DERH	\N	Procuradora Juridica	\N	\N
4609	1	26	\N	Procurador Juridico	AC	1	ME-406-2016-DERH	\N	Procuradora Juridica	\N	\N
4610	195	81	\N	Defensor Público en Pasantía	AC	45	ME-407-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4611	195	81	\N	Defensor Público en Pasantía	AC	45	ME-407-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4612	10	27	\N	Defensor Público en Pasantía	AC	44	7	\N	Defensora Pública en Pasantía	\N	\N
4613	320	5	\N	Experto	AC	35	ME-411-2016-DERH	\N	Experta	\N	\N
4614	420	27	\N	Defensor Público en Pasantía	AC	44	ME-410-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4615	420	27	\N	Defensor Público en Pasantía	AC	44	ME-410-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4616	431	10	\N	Sub Director de División Ejecutiva y de Recursos Humanos	AC	35	Acuerdo No 123-2016	\N	Sub Director de División Ejecutiva y de Recursos Humanos	\N	\N
4617	50	3	\N	Supervisor	AC	35	Acuerdo 122-2016	\N	Supervisora	\N	\N
4618	408	26	\N	Defensor Público de Planta I	AC	6	Ref 824-2016-RRHH-CLRP-hgb	\N	Defensor Público de Planta I	\N	\N
4619	187	23	\N	Defensor Público en Pasantía	AC	51	me-417-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4620	187	23	\N	Defensor Público en Pasantía	AC	51	me-417-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4621	187	23	\N	Defensor Público en Pasantía	AC	51	me-417-2016-derh	\N	Defensora Pública en Pasantía	\N	\N
4622	181	22	\N	Defensor Público en Formación I	AC	52	ME-423-2016-DERH	\N	Defensora Publico en Formacion I	\N	\N
4623	181	22	\N	Defensor Público en Formación I	AC	52	ME-423-2016-DERH	\N	Defensora Publico en Formacion I	\N	\N
4624	181	22	\N	Defensor Público en Formación I	AC	52	ME-423-2016-DERH	\N	Defensora Publico en Formacion I	\N	\N
4625	10	26	\N	Defensor Público en Pasantía	AC	1	ME-428-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4626	10	26	\N	Defensor Público en Pasantía	AC	1	ME-428-2016-DERH	\N	Defensora Pública en Pasantía	\N	\N
4627	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4628	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4629	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4630	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4631	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4632	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4633	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4634	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4635	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4636	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4637	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4638	1	22	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4639	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4640	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4641	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4642	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4643	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4644	1	26	\N	Procurador Juridico	AC	1	oct-16	\N	Procuradora Juridica	\N	\N
4645	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4646	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4647	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4648	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4649	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4650	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4651	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4652	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4653	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4654	1	24	\N	Procurador Juridico	AC	52	oct-16	\N	Procuradora Juridica	\N	\N
4655	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4656	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4657	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4658	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4659	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4660	1	81	\N	Procurador Juridico	AC	45	oct-16	\N	Procuradora Juridica	\N	\N
4661	1	22	\N	Procurador Juridico	AC	5	oct-16	\N	Procuradora Juridica	\N	\N
4662	1	22	\N	Procurador Juridico	AC	5	oct-16	\N	Procuradora Juridica	\N	\N
4663	1	22	\N	Procurador Juridico	AC	5	oct-16	\N	Procuradora Juridica	\N	\N
4664	1	22	\N	Procurador Juridico	AC	5	oct-16	\N	Procuradora Juridica	\N	\N
4665	99	81	\N	Técnico Administrativo	AC	35	45-2016	\N	Técnica Administrativa	\N	\N
4667	433	33	\N	Jefe de Sección de Admisión de Personal	AC	35	Acuerdo No 135-2016	\N	Jefe de Sección de Admisión de Personal	\N	\N
4668	432	28	\N	Coordinador de Enfoque Intercultural	AC	35	Acuerdo No 133-2016	\N	Coordinador de Enfoque Intercultural	\N	\N
4669	434	1	\N	Auxiliar de Dirección General II	AC	35	Acuerdo No 136-2016	\N	Auxiliar de Dirección General II	\N	\N
4670	397	84	\N	Auxiliar de Servicios V	AC	35	ME-440-2016-DERH	\N	Auxiliar de Servicios V	\N	\N
4671	319	81	\N	Administrativo I	AC	45	ME-449-2016-DERH	\N	Administrativa I	\N	\N
4672	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4673	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4674	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4675	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4676	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4677	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4678	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4679	1	30	\N	Procurador Juridico	AC	52	ME-448-2016-DERH	\N	Procuradora Juridica	\N	\N
4680	308	17	\N	Administrativo II	AC	35	ME-438-2016-DERH	\N	Administrativa II	\N	\N
4681	408	22	\N	Defensor Público de Planta I	AC	8	Acuerdo 132-2016	\N	Defensora Pública de Planta I	\N	\N
4682	226	22	\N	Defensor Público en Formación II	AC	13	ME-442-2016-DERH	\N	Defensora Pública en Formación II	\N	\N
4683	436	13	\N	Jefe del Departamento Financiero	AC	35	Acuerdo No 138-2016	\N	Jefe del Departamento Financiero	\N	\N
4684	435	107	\N	Jefe de Sección de Archivo Central	AC	35	Acuerdo 134-2016	\N	Jefa de Sección de Archivo Central	\N	\N
4685	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4686	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4687	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4688	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4689	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4690	1	81	\N	Procurador Juridico	AC	45	ME-452-2016-DERH	\N	Procuradora Juridica	\N	\N
4691	437	5	\N	Administrativo II	AC	35	ME-460-2016-DERH	\N	Administrativa II	\N	\N
4692	1	22	\N	Procurador Juridico	AC	17	dic-16	\N	Procuradora Juridica	\N	\N
4693	1	22	\N	Procurador Juridico	AC	17	dic-16	\N	Procuradora Juridica	\N	\N
4694	1	22	\N	Procurador Juridico	AC	17	dic-16	\N	Procuradora Juridica	\N	\N
4695	1	22	\N	Procurador Juridico	AC	17	dic-16	\N	Procuradora Juridica	\N	\N
4696	1	22	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4697	1	22	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4698	1	22	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4699	1	22	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4700	1	22	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4701	1	81	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4702	1	81	\N	Procurador Juridico	AC	14	dic-16	\N	Procuradora Juridica	\N	\N
4703	1	22	\N	Procurador Juridico	AC	8	dic-16	\N	Procuradora Juridica	\N	\N
4704	1	22	\N	Procurador Juridico	AC	8	dic-16	\N	Procuradora Juridica	\N	\N
4705	1	22	\N	Procurador Juridico	AC	8	dic-16	\N	Procuradora Juridica	\N	\N
4706	1	22	\N	Procurador Juridico	AC	8	dic-16	\N	Procuradora Juridica	\N	\N
4707	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4708	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4709	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4710	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4711	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4712	1	26	\N	Procurador Juridico	AC	1	dic-16	\N	Procuradora Juridica	\N	\N
4713	1	22	\N	Procurador Juridico	AC	38	dic-16	\N	Procuradora Juridica	\N	\N
4714	1	22	\N	Procurador Juridico	AC	38	dic-16	\N	Procuradora Juridica	\N	\N
4715	1	22	\N	Procurador Juridico	AC	38	dic-16	\N	Procuradora Juridica	\N	\N
4716	1	22	\N	Procurador Juridico	AC	38	dic-16	\N	Procuradora Juridica	\N	\N
4717	1	22	\N	Procurador Juridico	AC	38	dic-16	\N	Procuradora Juridica	\N	\N
4718	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4719	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4720	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4721	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4722	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4723	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4724	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4725	1	22	\N	Procurador Juridico	AC	23	dic-16	\N	Procuradora Juridica	\N	\N
4726	1	22	\N	Procurador Juridico	AC	18	dic-16	\N	Procuradora Juridica	\N	\N
4727	1	22	\N	Procurador Juridico	AC	18	dic-16	\N	Procuradora Juridica	\N	\N
4728	1	22	\N	Procurador Juridico	AC	18	dic-16	\N	Procuradora Juridica	\N	\N
4729	1	22	\N	Procurador Juridico	AC	18	dic-16	\N	Procuradora Juridica	\N	\N
4730	1	22	\N	Procurador Juridico	AC	18	dic-16	\N	Procuradora Juridica	\N	\N
4731	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4732	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4733	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4734	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4735	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4736	1	22	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4737	1	81	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4738	1	81	\N	Procurador Juridico	AC	27	dic-16	\N	Procuradora Juridica	\N	\N
4739	1	22	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4740	1	22	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4741	1	22	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4742	1	22	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4743	1	81	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4744	1	81	\N	Procurador Juridico	AC	11	dic-16	\N	Procuradora Juridica	\N	\N
4745	1	22	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4746	1	22	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4747	1	22	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4748	1	22	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4749	1	81	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4750	1	81	\N	Procurador Juridico	AC	13	dic-16	\N	Procuradora Juridica	\N	\N
4751	1	22	\N	Procurador Juridico	AC	29	dic-16	\N	Procuradora Juridica	\N	\N
4752	1	22	\N	Procurador Juridico	AC	29	dic-16	\N	Procuradora Juridica	\N	\N
4753	1	27	\N	Procurador Juridico	AC	44	dic-16	\N	Procuradora Juridica	\N	\N
4754	1	27	\N	Procurador Juridico	AC	44	dic-16	\N	Procuradora Juridica	\N	\N
4755	1	27	\N	Procurador Juridico	AC	44	dic-16	\N	Procuradora Juridica	\N	\N
4756	1	27	\N	Procurador Juridico	AC	44	dic-16	\N	Procuradora Juridica	\N	\N
4757	1	27	\N	Procurador Juridico	AC	44	dic-16	\N	Procuradora Juridica	\N	\N
4758	409	26	\N	Defensor Público de Planta III	AC	6	Acuerdo 130-2016	\N	Defensora Pública de Planta III	\N	\N
4759	409	26	\N	Defensor Público de Planta III	AC	6	Acuerdo 130-2016	\N	Defensora Pública de Planta III	\N	\N
4760	418	31	\N	Experto Legal Administrativo	AC	35	ME-462-2016-DERH	\N	Experto Legal Administrativo	\N	\N
4761	408	100	\N	Defensor Público de Planta I	AC	52	Acuerdo 131-2016	\N	Defensor Público de Planta I	\N	\N
4762	438	5	\N	Especialista en Planificacion	AC	35	ME-463-2016-DERH	\N	Especialista en Planificacion	\N	\N
4763	320	5	\N	Especialista en Planificacion	AC	35	ME-463-2016-DERH	\N	Especialista en Planificacion	\N	\N
4764	192	22	\N	Técnico Administrativo	AC	24	oct-16	\N	Técnica Administrativa	\N	\N
4765	192	22	\N	Técnico Administrativo	AC	24	oct-16	\N	Técnica Administrativa	\N	\N
4766	192	22	\N	Técnico Administrativo	AC	32	oct-16	\N	Técnica Administrativa	\N	\N
4767	192	22	\N	Técnico Administrativo	AC	32	oct-16	\N	Técnica Administrativa	\N	\N
4768	192	22	\N	Técnico Administrativo	AC	7	oct-16	\N	Técnica Administrativa	\N	\N
4769	192	22	\N	Técnico Administrativo	AC	34	oct-16	\N	Técnica Administrativa	\N	\N
4770	192	22	\N	Técnico Administrativo	AC	10	oct-16	\N	Técnica Administrativa	\N	\N
4771	319	81	\N	Técnico Administrativo	AC	45	oct-16	\N	Técnica Administrativa	\N	\N
4772	319	81	\N	Técnico Administrativo	AC	45	oct-16	\N	Técnica Administrativa	\N	\N
4773	192	22	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4774	192	22	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4775	192	22	\N	Técnico Administrativo	AC	27	oct-16	\N	Técnica Administrativa	\N	\N
4776	192	30	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4777	192	22	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4778	192	22	\N	Técnico Administrativo	AC	8	oct-16	\N	Técnica Administrativa	\N	\N
4779	192	22	\N	Técnico Administrativo	AC	17	oct-16	\N	Técnica Administrativa	\N	\N
4780	319	22	\N	Técnico Administrativo	AC	18	oct-16	\N	Técnica Administrativa	\N	\N
4781	319	22	\N	Técnico Administrativo	AC	32	oct-16	\N	Técnica Administrativa	\N	\N
4782	319	22	\N	Técnico Administrativo	AC	7	oct-16	\N	Técnica Administrativa	\N	\N
4783	192	22	\N	Técnico Administrativo	AC	22	oct-16	\N	Técnica Administrativa	\N	\N
4784	192	22	\N	Técnico Administrativo	AC	12	oct-16	\N	Técnica Administrativa	\N	\N
4785	319	22	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4786	319	22	\N	Técnico Administrativo	AC	52	oct-16	\N	Técnica Administrativa	\N	\N
4787	437	5	\N	Asistente de Planificación	AC	35	oct-16	\N	Asistente de Planificacion	\N	\N
4788	1	22	\N	Procurador Juridico	AC	24	oct-16	\N	Procuradora Juridica	\N	\N
4789	1	22	\N	Procurador Juridico	AC	24	oct-16	\N	Procuradora Juridica	\N	\N
4790	1	22	\N	Procurador Juridico	AC	24	oct-16	\N	Procuradora Juridica	\N	\N
4791	1	22	\N	Procurador Juridico	AC	24	oct-16	\N	Procuradora Juridica	\N	\N
4792	1	22	\N	Procurador Juridico	AC	30	oct-16	\N	Procuradora Juridica	\N	\N
4793	1	22	\N	Procurador Juridico	AC	30	oct-16	\N	Procuradora Juridica	\N	\N
4794	1	22	\N	Procurador Juridico	AC	30	oct-16	\N	Procuradora Juridica	\N	\N
4795	1	22	\N	Procurador Juridico	AC	30	oct-16	\N	Procuradora Juridica	\N	\N
4796	1	22	\N	Procurador Juridico	AC	19	oct-16	\N	Procuradora Juridica	\N	\N
4797	1	22	\N	Procurador Juridico	AC	19	oct-16	\N	Procuradora Juridica	\N	\N
4798	1	22	\N	Procurador Juridico	AC	15	oct-16	\N	Procuradora Juridica	\N	\N
4799	1	22	\N	Procurador Juridico	AC	15	oct-16	\N	Procuradora Juridica	\N	\N
4800	1	81	\N	Procurador Juridico	AC	23	oct-16	\N	Procuradora Juridica	\N	\N
4801	1	81	\N	Procurador Juridico	AC	23	oct-16	\N	Procuradora Juridica	\N	\N
4802	1	22	\N	Procurador Juridico	AC	21	oct-16	\N	Procuradora Juridica	\N	\N
4803	1	22	\N	Procurador Juridico	AC	21	oct-16	\N	Procuradora Juridica	\N	\N
4804	1	22	\N	Procurador Juridico	AC	41	oct-16	\N	Procuradora Juridica	\N	\N
4805	1	22	\N	Procurador Juridico	AC	41	oct-16	\N	Procuradora Juridica	\N	\N
4806	1	22	\N	Procurador Juridico	AC	41	oct-16	\N	Procuradora Juridica	\N	\N
4807	1	81	\N	Procurador Juridico	AC	41	oct-16	\N	Procuradora Juridica	\N	\N
4808	1	81	\N	Procurador Juridico	AC	41	oct-16	\N	Procuradora Juridica	\N	\N
4809	440	102	\N	Asistente de Defensor Público	AC	5	Acuerdo No 03-2016	\N	Asistente de Defensor Público	\N	\N
4810	1	22	\N	Procurador Juridico	AC	22	feb-17	\N	Procuradora Juridica	\N	\N
4811	1	22	\N	Procurador Juridico	AC	22	feb-17	\N	Procuradora Juridica	\N	\N
4812	1	22	\N	Procurador Juridico	AC	22	feb-17	\N	Procuradora Juridica	\N	\N
4813	1	22	\N	Procurador Juridico	AC	22	feb-17	\N	Procuradora Juridica	\N	\N
4814	1	22	\N	Procurador Juridico	AC	12	feb-17	\N	Procuradora Juridica	\N	\N
4815	1	22	\N	Procurador Juridico	AC	12	feb-17	\N	Procuradora Juridica	\N	\N
4816	1	22	\N	Procurador Juridico	AC	12	feb-17	\N	Procuradora Juridica	\N	\N
4817	1	22	\N	Procurador Juridico	AC	34	feb-17	\N	Procuradora Juridica	\N	\N
4818	1	22	\N	Procurador Juridico	AC	34	feb-17	\N	Procuradora Juridica	\N	\N
4819	1	22	\N	Procurador Juridico	AC	34	feb-17	\N	Procuradora Juridica	\N	\N
4820	1	22	\N	Procurador Juridico	AC	34	feb-17	\N	Procuradora Juridica	\N	\N
4821	1	22	\N	Procurador Juridico	AC	34	feb-17	\N	Procuradora Juridica	\N	\N
4822	1	23	\N	Procurador Juridico	AC	44	feb-17	\N	Procuradora Juridica	\N	\N
4823	1	23	\N	Procurador Juridico	AC	44	feb-17	\N	Procuradora Juridica	\N	\N
4824	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4825	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4826	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4827	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4828	1	22	\N	Procurador Juridico	AC	7	feb-17	\N	Procuradora Juridica	\N	\N
4829	1	22	\N	Procurador Juridico	AC	7	feb-17	\N	Procuradora Juridica	\N	\N
4830	1	81	\N	Procurador Juridico	AC	18	feb-17	\N	Procuradora Juridica	\N	\N
4831	1	81	\N	Procurador Juridico	AC	18	feb-17	\N	Procuradora Juridica	\N	\N
4832	1	81	\N	Procurador Juridico	AC	18	feb-17	\N	Procuradora Juridica	\N	\N
4833	1	22	\N	Procurador Juridico	AC	28	feb-17	\N	Procuradora Juridica	\N	\N
4834	1	22	\N	Procurador Juridico	AC	28	feb-17	\N	Procuradora Juridica	\N	\N
4835	1	22	\N	Procurador Juridico	AC	49	feb-17	\N	Procuradora Juridica	\N	\N
4836	1	22	\N	Procurador Juridico	AC	49	feb-17	\N	Procuradora Juridica	\N	\N
4837	1	22	\N	Procurador Juridico	AC	16	feb-17	\N	Procuradora Juridica	\N	\N
4838	1	22	\N	Procurador Juridico	AC	16	feb-17	\N	Procuradora Juridica	\N	\N
4839	1	81	\N	Procurador Juridico	AC	8	feb-17	\N	Procuradora Juridica	\N	\N
4840	1	81	\N	Procurador Juridico	AC	8	feb-17	\N	Procuradora Juridica	\N	\N
4841	1	22	\N	Procurador Juridico	AC	26	feb-17	\N	Procuradora Juridica	\N	\N
4842	1	22	\N	Procurador Juridico	AC	26	feb-17	\N	Procuradora Juridica	\N	\N
4843	1	22	\N	Procurador Juridico	AC	31	feb-17	\N	Procuradora Juridica	\N	\N
4844	1	22	\N	Procurador Juridico	AC	31	feb-17	\N	Procuradora Juridica	\N	\N
4845	1	81	\N	Procurador Juridico	AC	54	feb-17	\N	Procuradora Juridica	\N	\N
4846	1	22	\N	Procurador Juridico	AC	10	feb-17	\N	Procuradora Juridica	\N	\N
4847	1	22	\N	Procurador Juridico	AC	10	feb-17	\N	Procuradora Juridica	\N	\N
4848	1	22	\N	Procurador Juridico	AC	10	feb-17	\N	Procuradora Juridica	\N	\N
4849	1	22	\N	Procurador Juridico	AC	32	feb-17	\N	Procuradora Juridica	\N	\N
4850	1	22	\N	Procurador Juridico	AC	32	feb-17	\N	Procuradora Juridica	\N	\N
4851	1	22	\N	Procurador Juridico	AC	32	feb-17	\N	Procuradora Juridica	\N	\N
4852	1	22	\N	Procurador Juridico	AC	32	feb-17	\N	Procuradora Juridica	\N	\N
4853	1	100	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4854	1	100	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4855	1	100	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4856	1	100	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4857	1	100	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4858	1	22	\N	Procurador Juridico	AC	53	feb-17	\N	Procuradora Juridica	\N	\N
4859	1	22	\N	Procurador Juridico	AC	53	feb-17	\N	Procuradora Juridica	\N	\N
4860	1	22	\N	Procurador Juridico	AC	53	feb-17	\N	Procuradora Juridica	\N	\N
4861	1	29	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4862	1	29	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4863	1	29	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4864	1	29	\N	Procurador Juridico	AC	52	feb-17	\N	Procuradora Juridica	\N	\N
4865	1	22	\N	Procurador Juridico	AC	5	feb-17	\N	Procuradora Juridica	\N	\N
4866	1	22	\N	Procurador Juridico	AC	5	feb-17	\N	Procuradora Juridica	\N	\N
4867	1	22	\N	Procurador Juridico	AC	5	feb-17	\N	Procuradora Juridica	\N	\N
4868	1	81	\N	Procurador Juridico	AC	5	feb-17	\N	Procuradora Juridica	\N	\N
4869	1	81	\N	Procurador Juridico	AC	5	feb-17	\N	Procuradora Juridica	\N	\N
4870	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4871	1	22	\N	Procurador Juridico	AC	6	feb-17	\N	Procuradora Juridica	\N	\N
4872	420	27	\N	Defensor Público en Formación	AC	44	mar-17	\N	Defensora Pública en Formación	\N	\N
4873	420	27	\N	Defensor Público en Formación	AC	44	mar-17	\N	Defensora Pública en Formación	\N	\N
4874	420	27	\N	Defensor Público en Formación I	AC	44	mar-17	\N	Defensora Pública en Formación I	\N	\N
4875	420	27	\N	Defensor Público en Formación I	AC	44	mar-17	\N	Defensora Pública en Formación I	\N	\N
4876	192	22	\N	Técnico Administrativo	AC	27	mar-17	\N	Técnica Administrativa	\N	\N
4877	192	30	\N	Técnico Administrativo	AC	52	mar-17	\N	Técnica Administrativa	\N	\N
4878	192	30	\N	Técnico Administrativo	AC	52	mar-17	\N	Técnica Administrativa	\N	\N
4879	319	24	\N	Técnico Administrativo	AC	52	mar-17	\N	Técnica Administrativa	\N	\N
4880	192	91	\N	Técnico Administrativo I	AC	35	mar-17	\N	Técnica Administrativa I	\N	\N
4881	192	91	\N	Técnico Administrativo II	AC	35	ME-004-2017-DERH	\N	Técnica Administrativa II	\N	\N
4882	183	81	\N	Defensor Público en Formación I	AC	45	abr-17	\N	Defensora Pública en Formación I	\N	\N
4883	183	81	\N	Defensor Público en Formación I	AC	45	abr-17	\N	Defensora Pública en Formación I	\N	\N
4884	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4885	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4886	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4887	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4888	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4889	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4890	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4891	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4892	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4893	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4894	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4895	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4896	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4897	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantía	\N	\N
4898	192	17	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4899	30	6	\N	Recepcionisto I	AC	35	may-17	\N	Recepcionista I	\N	\N
4900	319	14	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4901	115	15	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4902	115	15	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4903	115	15	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4904	319	18	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4905	319	18	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4906	319	17	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4907	319	17	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4908	397	84	\N	Auxiliar de Servicios V	AC	35	may-17	\N	Auxiliar de Servicios V	\N	\N
4909	397	84	\N	Auxiliar de Servicios V	AC	35	may-17	\N	Auxiliar de Servicios V	\N	\N
4910	397	84	\N	Auxiliar de Servicios V	AC	35	may-17	\N	Auxiliar de Servicios V	\N	\N
4911	397	84	\N	Auxiliar de Servicios V	AC	35	may-17	\N	Auxiliar de Servicios V	\N	\N
4912	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4913	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4914	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4915	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4916	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4917	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4918	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4919	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4920	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4921	12	82	\N	Conductor Automovilista	AC	35	may-17	\N	Conductora Automovilista	\N	\N
4922	319	19	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4923	319	31	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4924	319	31	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4925	319	16	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4926	308	17	\N	Administrativo IV	AC	35	may-17	\N	Administrativa IV	\N	\N
4927	319	31	\N	Administrativo II	AC	35	may-17	\N	Administrativa II	\N	\N
4928	319	88	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
4929	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	may-17	\N	Auxiliar Técnica en Informatica II	\N	\N
4930	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	may-17	\N	Auxiliar Técnica en Informatica II	\N	\N
4931	105	93	\N	Auxiliar Técnico en Informatica II	AC	35	may-17	\N	Auxiliar Técnica en Informatica II	\N	\N
4932	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4933	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4934	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4935	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4936	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4937	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4938	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4939	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4940	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4941	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4942	178	11	\N	Auxiliar de Ingreso de Informacion	AC	39	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4943	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4944	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4945	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4946	178	11	\N	Auxiliar de Ingreso de Informacion	AC	46	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4947	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4948	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4949	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4950	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4951	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4952	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4953	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4954	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4955	178	11	\N	Auxiliar de Ingreso de Informacion	AC	51	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4956	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4957	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4958	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4959	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4960	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4961	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4962	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4963	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4964	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4965	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4966	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4967	99	81	\N	Operador Jurídico	AC	35	may-17	\N	Operadora Jurídica	\N	\N
4968	441	92	\N	Programador	AC	35	Acuerdo No 04-2017	\N	Programador	\N	\N
4969	442	4	\N	Asistente Administrativo II	AC	35	Acuerdo No 06-2017	\N	Asistente Administrativo II	\N	\N
4970	105	94	\N	Auxiliar Técnico en Informatica II	AC	35	may-17	\N	Auxiliar Técnica en Informatica II	\N	\N
4971	397	81	\N	Auxiliar de Servicios II	AC	41	may-17	\N	Auxiliar de Servicios II	\N	\N
4972	443	32	\N	Recepcionista	AC	35	No 07-2017	\N	Recepcionista	\N	\N
4973	443	1	\N	Recepcionista	AC	35	Acuerdo No 08-2017	\N	Recepcionista	\N	\N
4974	443	8	\N	Recepcionista	AC	35	Acuerdo No 09-2017	\N	Recepcionista	\N	\N
4975	319	29	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
4976	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4977	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4978	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4979	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4980	95	85	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4981	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4982	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4983	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4984	178	11	\N	Auxiliar de Ingreso de Informacion	AC	47	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4985	95	85	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4986	95	85	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4987	95	85	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4988	95	85	\N	Técnico Administrativo II	AC	35	may-17	\N	Técnica Administrativa II	\N	\N
4989	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4990	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4991	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4992	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4993	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4994	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4995	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4996	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4997	105	93	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
4998	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
4999	178	11	\N	Auxiliar de Ingreso de Informacion	AC	48	may-17	\N	Auxiliar de Ingreso de Informacion	\N	\N
5000	105	94	\N	Auxiliar Tecnico en Informatica	AC	35	may-17	\N	Auxiliar Tecnico en Informatica	\N	\N
5001	6	105	\N	Trabajador Social	AC	52	may-17	\N	Trabajadora Social	\N	\N
5002	6	105	\N	Trabajador Social	AC	52	may-17	\N	Trabajadora Social	\N	\N
5003	6	105	\N	Trabajador Social	AC	6	may-17	\N	Trabajadora Social	\N	\N
5004	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5005	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5006	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5007	6	22	\N	Trabajador Social	AC	38	may-17	\N	Trabajadora Social	\N	\N
5008	6	105	\N	Trabajador Social	AC	13	may-17	\N	Trabajadora Social	\N	\N
5009	6	105	\N	Trabajador Social	AC	29	may-17	\N	Trabajadora Social	\N	\N
5010	100	105	\N	Técnico en Trabajo Social	AC	53	may-17	\N	Técnico en Trabajo Social	\N	\N
5011	100	105	\N	Técnico en Trabajo Social	AC	23	may-17	\N	Técnico en Trabajo Social	\N	\N
5012	6	22	\N	Trabajador Social	AC	14	may-17	\N	Trabajadora Social	\N	\N
5013	100	105	\N	Técnico en Trabajo Social	AC	27	may-17	\N	Técnico en Trabajo Social	\N	\N
5014	6	105	\N	Trabajador Social	AC	8	may-17	\N	Trabajadora Social	\N	\N
5015	6	105	\N	Trabajador Social	AC	41	may-17	\N	Trabajadora Social	\N	\N
5016	226	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5017	226	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5018	226	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5019	6	105	\N	Trabajador Social	AC	22	may-17	\N	Trabajadora Social	\N	\N
5020	306	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5021	306	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5022	306	30	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5023	6	105	\N	Trabajador Social	AC	18	may-17	\N	Trabajadora Social	\N	\N
5024	6	105	\N	Trabajador Social	AC	1	may-17	\N	Trabajadora Social	\N	\N
5025	306	30	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5026	306	30	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5027	306	30	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5028	100	81	\N	Técnico en Trabajo Social	AC	45	may-17	\N	Técnico en Trabajo Social	\N	\N
5029	6	30	\N	Trabajador Social	AC	52	may-17	\N	Trabajadora Social	\N	\N
5030	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5031	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5032	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5033	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5034	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5035	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5036	6	81	\N	Trabajador Social	AC	8	may-17	\N	Trabajadora Social	\N	\N
5037	103	90	\N	Analista de Estadistica	AC	35	may-17	\N	Analista de Estadistica	\N	\N
5038	226	24	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5039	226	24	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5040	226	24	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5041	226	24	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5042	226	24	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5043	226	24	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5044	226	24	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5045	226	24	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5046	226	24	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5047	226	24	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5048	10	29	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5049	10	29	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5050	10	29	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5051	98	25	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
5052	98	25	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
5053	98	25	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
5054	226	29	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5055	226	29	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5056	226	29	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5057	226	29	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5058	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5059	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5060	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5061	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5062	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5063	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5064	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5065	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5066	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5067	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5068	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5069	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5070	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5071	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5072	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5073	10	22	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5074	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5075	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5076	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5077	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5078	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5079	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5080	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5081	226	22	\N	Defensor Público en Formación I	AC	52	may-17	\N	Defensora Pública en Formación I	\N	\N
5082	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5083	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5084	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5085	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5086	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5087	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5088	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5089	226	22	\N	Defensor Público en Formación II	AC	52	may-17	\N	Defensora Pública en Formacion II	\N	\N
5090	400	22	\N	Defensor Público en Formación III	AC	52	may-17	\N	Defensora Pública en Formación III	\N	\N
5091	400	29	\N	Defensor Público en Formación III	AC	52	may-17	\N	Defensora Pública en Formación III	\N	\N
5092	195	81	\N	Defensor Público en Pasantía	AC	45	may-17	\N	Defensora Pública en Pasantia	\N	\N
5093	195	81	\N	Defensor Público en Pasantía	AC	45	may-17	\N	Defensora Pública en Pasantia	\N	\N
5094	195	81	\N	Defensor Público en Pasantía	AC	45	may-17	\N	Defensora Pública en Pasantia	\N	\N
5095	195	81	\N	Defensor Público en Pasantía	AC	45	may-17	\N	Defensora Pública en Pasantia	\N	\N
5096	408	27	\N	Defensor Público de Planta I	AC	45	Acuerdo 02-2017	\N	Defensor Público de Planta I	\N	\N
5097	397	22	\N	Auxiliar de Servicios I	AC	4	may-17	\N	Auxiliar de Servicios I	\N	\N
5098	397	22	\N	Auxiliar de Servicios I	AC	47	may-17	\N	Auxiliar de Servicios I	\N	\N
5099	319	28	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
5100	397	22	\N	Auxiliar de Servicios I	AC	42	may-17	\N	Auxiliar de Servicios I	\N	\N
5101	397	81	\N	Auxiliar de Servicios I	AC	8	may-17	\N	Auxiliar de Servicios I	\N	\N
5102	397	22	\N	Auxiliar de Servicios I	AC	12	may-17	\N	Auxiliar de Servicios I	\N	\N
5103	397	22	\N	Auxiliar de Servicios I	AC	10	may-17	\N	Auxiliar de Servicios I	\N	\N
5104	183	81	\N	Defensor Público en Formación I	AC	45	may-17	\N	Defensora Pública en Formación I	\N	\N
5105	183	81	\N	Defensor Público en Formación I	AC	45	may-17	\N	Defensora Pública en Formación I	\N	\N
5106	183	81	\N	Defensor Público en Formación I	AC	45	may-17	\N	Defensora Pública en Formación I	\N	\N
5107	183	81	\N	Defensor Público en Formación I	AC	45	may-17	\N	Defensora Pública en Formación I	\N	\N
5108	397	22	\N	Auxiliar de Servicios I	AC	53	may-17	\N	Auxiliar de Servicios I	\N	\N
5109	397	22	\N	Auxiliar de Servicios I	AC	29	may-17	\N	Auxiliar de Servicios I	\N	\N
5110	182	81	\N	Defensor Público en Formación II	AC	45	may-17	\N	Defensora Pública en Formacion II	\N	\N
5111	182	81	\N	Defensor Público en Formación II	AC	45	may-17	\N	Defensora Pública en Formacion II	\N	\N
5112	182	81	\N	Defensor Público en Formación II	AC	45	may-17	\N	Defensora Pública en Formacion II	\N	\N
5113	397	22	\N	Auxiliar de Servicios I	AC	31	may-17	\N	Auxiliar de Servicios I	\N	\N
5114	10	26	\N	Defensor Público en Pasantía	AC	1	may-17	\N	Defensora Pública en Pasantia	\N	\N
5115	10	26	\N	Defensor Público en Pasantía	AC	1	may-17	\N	Defensora Pública en Pasantia	\N	\N
5116	10	26	\N	Defensor Público en Pasantía	AC	1	may-17	\N	Defensora Pública en Pasantia	\N	\N
5117	397	22	\N	Auxiliar de Servicios I	AC	25	may-17	\N	Auxiliar de Servicios I	\N	\N
5118	226	26	\N	Defensor Público en Formación I	AC	1	may-17	\N	Defensora Pública en Formación I	\N	\N
5119	226	26	\N	Defensor Público en Formación I	AC	1	may-17	\N	Defensora Pública en Formación I	\N	\N
5120	226	26	\N	Defensor Público en Formación I	AC	1	may-17	\N	Defensora Pública en Formación I	\N	\N
5121	397	22	\N	Auxiliar de Servicios I	AC	33	may-17	\N	Auxiliar de Servicios I	\N	\N
5122	226	26	\N	Defensor Público en Formación III	AC	1	may-17	\N	Defensora Pública en Formación III	\N	\N
5123	226	26	\N	Defensor Público en Formación III	AC	1	may-17	\N	Defensora Pública en Formación III	\N	\N
5124	226	26	\N	Defensor Público en Formación III	AC	1	may-17	\N	Defensora Pública en Formación III	\N	\N
5125	376	88	\N	Secretaria II	AC	35	Acuerdo 11-2017	\N	Secretaria II	\N	\N
5126	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5127	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5128	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5129	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5130	420	27	\N	Defensor Público en Formación I	AC	44	may-17	\N	Defensora Pública en Formación I	\N	\N
5131	420	27	\N	Defensor Público en Formación I	AC	44	may-17	\N	Defensora Pública en Formación I	\N	\N
5132	420	27	\N	Defensor Público en Formación I	AC	44	may-17	\N	Defensora Pública en Formación I	\N	\N
5133	397	81	\N	Auxiliar de Servicios I	AC	41	may-17	\N	Auxiliar de Servicios I	\N	\N
5134	397	22	\N	Auxiliar de Servicios I	AC	5	may-17	\N	Auxiliar de Servicios I	\N	\N
5135	397	22	\N	Auxiliar de Servicios I	AC	7	may-17	\N	Auxiliar de Servicios I	\N	\N
5136	397	22	\N	Auxiliar de Servicios I	AC	38	may-17	\N	Auxiliar de Servicios I	\N	\N
5137	397	22	\N	Auxiliar de Servicios I	AC	24	may-17	\N	Auxiliar de Servicios I	\N	\N
5138	397	22	\N	Auxiliar de Servicios I	AC	32	may-17	\N	Auxiliar de Servicios I	\N	\N
5139	397	22	\N	Auxiliar de Servicios I	AC	30	may-17	\N	Auxiliar de Servicios I	\N	\N
5140	397	22	\N	Auxiliar de Servicios I	AC	14	may-17	\N	Auxiliar de Servicios I	\N	\N
5141	397	22	\N	Auxiliar de Servicios I	AC	19	may-17	\N	Auxiliar de Servicios I	\N	\N
5142	397	22	\N	Auxiliar de Servicios I	AC	49	may-17	\N	Auxiliar de Servicios I	\N	\N
5143	397	22	\N	Auxiliar de Servicios I	AC	15	may-17	\N	Auxiliar de Servicios I	\N	\N
5144	397	26	\N	Auxiliar de Servicios I	AC	1	may-17	\N	Auxiliar de Servicios I	\N	\N
5145	397	22	\N	Auxiliar de Servicios I	AC	28	may-17	\N	Auxiliar de Servicios I	\N	\N
5146	397	22	\N	Auxiliar de Servicios I	AC	27	may-17	\N	Auxiliar de Servicios I	\N	\N
5147	397	22	\N	Auxiliar de Servicios II	AC	6	may-17	\N	Auxiliar de Servicios II	\N	\N
5148	397	22	\N	Auxiliar de Servicios I	AC	20	may-17	\N	Auxiliar de Servicios I	\N	\N
5149	397	22	\N	Auxiliar de Servicios I	AC	16	may-17	\N	Auxiliar de Servicios I	\N	\N
5150	397	22	\N	Auxiliar de Servicios I	AC	26	may-17	\N	Auxiliar de Servicios I	\N	\N
5151	397	22	\N	Auxiliar de Servicios I	AC	41	may-17	\N	Auxiliar de Servicios I	\N	\N
5152	397	22	\N	Auxiliar de Servicios I	AC	22	may-17	\N	Auxiliar de Servicios I	\N	\N
5153	397	22	\N	Auxiliar de Servicios I	AC	34	may-17	\N	Auxiliar de Servicios I	\N	\N
5154	397	22	\N	Auxiliar de Servicios I	AC	17	may-17	\N	Auxiliar de Servicios I	\N	\N
5155	397	22	\N	Auxiliar de Servicios I	AC	17	may-17	\N	Auxiliar de Servicios I	\N	\N
5156	397	22	\N	Auxiliar de Servicios III	AC	23	may-17	\N	Auxiliar de Servicios III	\N	\N
5157	397	22	\N	Auxiliar de Servicios I	AC	18	may-17	\N	Auxiliar de Servicios I	\N	\N
5158	397	22	\N	Auxiliar de Servicios I	AC	21	may-17	\N	Auxiliar de Servicios I	\N	\N
5159	10	22	\N	Defensor Público en Pasantía	AC	5	may-17	\N	Defensora Pública en Pasantia	\N	\N
5160	181	22	\N	Defensor Público en Formación I	AC	5	may-17	\N	Defensora Pública en Formación I	\N	\N
5161	400	22	\N	Defensor Público en Formación III	AC	5	may-17	\N	Defensora Pública en Formación III	\N	\N
5162	187	23	\N	Defensor Público en Pasantía	AC	39	may-17	\N	Defensora Pública en Pasantia	\N	\N
5163	187	23	\N	Defensor Público en Pasantía	AC	39	may-17	\N	Defensora Pública en Pasantia	\N	\N
5164	187	23	\N	Defensor Público en Pasantía	AC	39	may-17	\N	Defensora Pública en Pasantia	\N	\N
5165	10	22	\N	Defensor Público en Pasantía	AC	6	may-17	\N	Defensora Pública en Pasantia	\N	\N
5166	10	22	\N	Defensor Público en Pasantía	AC	6	may-17	\N	Defensora Pública en Pasantia	\N	\N
5167	187	23	\N	Defensor Público en Pasantía	AC	46	may-17	\N	Defensora Pública en Pasantia	\N	\N
5168	187	23	\N	Defensor Público en Pasantía	AC	46	may-17	\N	Defensora Pública en Pasantia	\N	\N
5169	187	23	\N	Defensor Público en Pasantía	AC	46	may-17	\N	Defensora Pública en Pasantia	\N	\N
5170	187	23	\N	Defensor Público en Pasantía	AC	46	may-17	\N	Defensora Pública en Pasantia	\N	\N
5171	10	22	\N	Defensor Público en Pasantía	AC	12	may-17	\N	Defensora Pública en Pasantia	\N	\N
5172	10	22	\N	Defensor Público en Pasantía	AC	12	may-17	\N	Defensora Pública en Pasantia	\N	\N
5173	10	22	\N	Defensor Público en Pasantía	AC	38	may-17	\N	Defensora Pública en Pasantia	\N	\N
5174	10	23	\N	Defensor Público en Pasantía	AC	48	may-17	\N	Defensora Pública en Pasantia	\N	\N
5175	10	23	\N	Defensor Público en Pasantía	AC	48	may-17	\N	Defensora Pública en Pasantia	\N	\N
5176	10	23	\N	Defensor Público en Pasantía	AC	48	may-17	\N	Defensora Pública en Pasantia	\N	\N
5177	10	23	\N	Defensor Público en Pasantía	AC	48	may-17	\N	Defensora Pública en Pasantia	\N	\N
5178	181	22	\N	Defensor Público en Formación I	AC	10	may-17	\N	Defensora Pública en Formación I	\N	\N
5179	181	22	\N	Defensor Público en Formación I	AC	10	may-17	\N	Defensora Pública en Formación I	\N	\N
5180	226	22	\N	Defensor Público en Formación II	AC	13	may-17	\N	Defensora Pública en Formación II	\N	\N
5181	226	22	\N	Defensor Público en Formación I	AC	13	may-17	\N	Defensora Pública en Formación I	\N	\N
5182	226	22	\N	Defensor Público en Formación I	AC	13	may-17	\N	Defensora Pública en Formación I	\N	\N
5183	187	23	\N	Defensor Público en Pasantía	AC	47	may-17	\N	Defensora Pública en Pasantia	\N	\N
5184	187	23	\N	Defensor Público en Pasantía	AC	47	may-17	\N	Defensora Pública en Pasantia	\N	\N
5185	187	23	\N	Defensor Público en Pasantía	AC	47	may-17	\N	Defensora Pública en Pasantia	\N	\N
5186	187	23	\N	Defensor Público en Pasantía	AC	47	may-17	\N	Defensora Pública en Pasantia	\N	\N
5187	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5188	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5189	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5190	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5191	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5192	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5193	187	23	\N	Defensor Público en Pasantía	AC	2	may-17	\N	Defensora Pública en Pasantia	\N	\N
5194	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5195	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5196	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5197	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5198	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5199	181	22	\N	Defensor Público en Formación I	AC	31	may-17	\N	Defensora Pública en Formación I	\N	\N
5200	226	22	\N	Defensor Público en Formación I	AC	33	may-17	\N	Defensora Pública en Formación I	\N	\N
5201	10	22	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5202	10	22	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5203	10	22	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5204	10	22	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5205	10	22	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5206	181	22	\N	Defensor Público en Formación I	AC	23	may-17	\N	Defensora Pública en Formación I	\N	\N
5207	181	22	\N	Defensor Público en Formación I	AC	23	may-17	\N	Defensora Pública en Formación I	\N	\N
5208	181	22	\N	Defensor Público en Formación I	AC	23	may-17	\N	Defensora Pública en Formación I	\N	\N
5209	187	23	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5210	10	22	\N	Defensor Público en Pasantía	AC	7	may-17	\N	Defensora Pública en Pasantia	\N	\N
5211	181	22	\N	Defensor Público en Formación I	AC	7	may-17	\N	Defensora Pública en Formación I	\N	\N
5212	226	22	\N	Defensor Público en Formación I	AC	32	may-17	\N	Defensora Pública en Formación I	\N	\N
5213	10	22	\N	Defensor Público en Pasantía	AC	24	may-17	\N	Defensora Pública en Pasantia	\N	\N
5214	226	22	\N	Defensor Público en Formación I	AC	30	may-17	\N	Defensora Pública en Formación I	\N	\N
5215	10	22	\N	Defensor Público en Pasantía	AC	14	may-17	\N	Defensora Pública en Pasantia	\N	\N
5216	10	22	\N	Defensor Público en Pasantía	AC	14	may-17	\N	Defensora Pública en Pasantia	\N	\N
5217	226	22	\N	Defensor Público en Formación I	AC	14	may-17	\N	Defensora Pública en Formación I	\N	\N
5218	226	22	\N	Defensor Público en Formación I	AC	14	may-17	\N	Defensora Pública en Formación I	\N	\N
5219	181	22	\N	Defensor Público en Formación I	AC	28	may-17	\N	Defensora Pública en Formación I	\N	\N
5220	226	22	\N	Defensor Público en Formación II	AC	27	may-17	\N	Defensora Pública en Formacion II	\N	\N
5221	10	22	\N	Defensor Público en Pasantía	AC	27	may-17	\N	Defensora Pública en Pasantia	\N	\N
5222	10	22	\N	Defensor Público en Pasantía	AC	27	may-17	\N	Defensora Pública en Pasantia	\N	\N
5223	181	22	\N	Defensor Público en Formación I	AC	27	may-17	\N	Defensora Pública en Formación I	\N	\N
5224	184	22	\N	Defensor Público en Formación I Intercultural	AC	16	may-17	\N	Defensora Público en Formación I Intercultural	\N	\N
5225	184	22	\N	Defensor Público en Formación I Intercultural	AC	26	may-17	\N	Defensora Público en Formación I Intercultural	\N	\N
5226	10	22	\N	Defensor Público en Pasantía	AC	26	may-17	\N	Defensora Pública en Pasantia	\N	\N
5227	184	22	\N	Defensor Publico en Pasantia Intercultural	AC	26	may-17	\N	Defensora Publica en Pasantia Intercultural	\N	\N
5228	10	22	\N	Defensor Público en Pasantía	AC	8	may-17	\N	Defensora Pública en Pasantia	\N	\N
5229	181	29	\N	Defensor Público en Formación I	AC	8	may-17	\N	Defensora Pública en Formación I	\N	\N
5230	10	22	\N	Defensor Público en Pasantía	AC	41	may-17	\N	Defensora Pública en Pasantia	\N	\N
5231	10	22	\N	Defensor Público en Pasantía	AC	41	may-17	\N	Defensora Pública en Pasantia	\N	\N
5232	10	22	\N	Defensor Público en Pasantía	AC	41	may-17	\N	Defensora Pública en Pasantia	\N	\N
5233	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5234	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5235	187	23	\N	Defensor Público en Pasantía	AC	51	may-17	\N	Defensora Pública en Pasantia	\N	\N
5236	184	22	\N	Defensor Público en Formación I Intercultural	AC	22	may-17	\N	Defensora Público en Formación I Intercultural	\N	\N
5237	10	22	\N	Defensor Público en Pasantía	AC	22	may-17	\N	Defensora Pública en Pasantia	\N	\N
5238	10	22	\N	Defensor Público en Pasantía	AC	22	may-17	\N	Defensora Pública en Pasantia	\N	\N
5239	181	22	\N	Defensor Público en Formación I	AC	22	may-17	\N	Defensora Pública en Formación I	\N	\N
5240	10	22	\N	Defensor Público en Pasantía	AC	34	may-17	\N	Defensora Pública en Pasantia	\N	\N
5241	181	22	\N	Defensor Público en Formación I	AC	34	may-17	\N	Defensora Pública en Formación I	\N	\N
5242	10	22	\N	Defensor Público en Pasantía	AC	11	may-17	\N	Defensora Pública en Pasantia	\N	\N
5243	10	22	\N	Defensor Público en Pasantía	AC	11	may-17	\N	Defensora Pública en Pasantia	\N	\N
5244	10	22	\N	Defensor Público en Pasantía	AC	11	may-17	\N	Defensora Pública en Pasantia	\N	\N
5245	10	22	\N	Defensor Público en Pasantía	AC	11	may-17	\N	Defensora Pública en Pasantia	\N	\N
5246	181	22	\N	Defensor Público en Formación I	AC	11	may-17	\N	Defensora Pública en Formación I	\N	\N
5247	10	22	\N	Defensor Público en Pasantía	AC	17	may-17	\N	Defensora Pública en Pasantia	\N	\N
5248	10	22	\N	Defensor Público en Pasantía	AC	17	may-17	\N	Defensora Pública en Pasantia	\N	\N
5249	10	22	\N	Defensor Público en Pasantía	AC	17	may-17	\N	Defensora Pública en Pasantia	\N	\N
5250	226	22	\N	Defensor Público en Formación II	AC	18	may-17	\N	Defensora Pública en Formacion II	\N	\N
5251	10	22	\N	Defensor Público en Pasantía	AC	18	may-17	\N	Defensora Pública en Pasantia	\N	\N
5252	10	22	\N	Defensor Público en Pasantía	AC	18	may-17	\N	Defensora Pública en Pasantia	\N	\N
5253	183	81	\N	Defensor Público en Pasantía	AC	54	may-17	\N	Defensora Pública en Pasantia	\N	\N
5254	182	81	\N	Defensor Público en Formación I	AC	6	may-17	\N	Defensora Pública en Formación I	\N	\N
5255	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5256	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5257	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5258	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5259	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5260	182	81	\N	Defensor Público en Formación II	AC	13	may-17	\N	Defensora Pública en Formacion II	\N	\N
5261	182	81	\N	Defensor Público en Formación II	AC	6	may-17	\N	Defensora Pública en Formacion II	\N	\N
5262	183	81	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5263	183	81	\N	Defensor Público en Pasantía	AC	23	may-17	\N	Defensora Pública en Pasantia	\N	\N
5264	182	81	\N	Defensor Público en Formación II	AC	14	may-17	\N	Defensora Pública en Formacion II	\N	\N
5265	182	81	\N	Defensor Público en Formación II	AC	27	may-17	\N	Defensora Pública en Formacion II	\N	\N
5266	182	81	\N	Defensor Público en Formación II	AC	26	may-17	\N	Defensora Pública en Formacion II	\N	\N
5267	182	81	\N	Defensor Público en Formación II	AC	8	may-17	\N	Defensora Pública en Formacion II	\N	\N
5268	226	22	\N	Defensor Público en Formación II	AC	5	may-17	\N	Defensora Pública en Formacion II	\N	\N
5269	226	22	\N	Defensor Público en Formación II	AC	5	may-17	\N	Defensora Pública en Formacion II	\N	\N
5270	226	22	\N	Defensor Público en Formación II	AC	5	may-17	\N	Defensora Pública en Formacion II	\N	\N
5271	182	81	\N	Defensor Público en Formación II	AC	41	may-17	\N	Defensora Pública en Formacion II	\N	\N
5272	183	81	\N	Defensor Público en Pasantía	AC	41	may-17	\N	Defensora Pública en Pasantia	\N	\N
5273	226	22	\N	Defensor Público en Formación I	AC	32	may-17	\N	Defensora Pública en Formación I	\N	\N
5274	226	22	\N	Defensor Público en Formación I	AC	32	may-17	\N	Defensora Pública en Formación I	\N	\N
5275	182	81	\N	Defensor Público en Formación II	AC	11	may-17	\N	Defensora Pública en Formacion II	\N	\N
5276	182	81	\N	Defensor Público en Formación II	AC	18	may-17	\N	Defensora Pública en Formacion II	\N	\N
5277	182	81	\N	Defensor Público en Formación II	AC	8	may-17	\N	Defensora Pública en Formacion II	\N	\N
5278	97	86	\N	Experto Legal	AC	35	may-17	\N	Experto Legal	\N	\N
5279	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5280	420	27	\N	Defensor Público en Pasantía	AC	44	may-17	\N	Defensora Pública en Pasantia	\N	\N
5281	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5282	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5283	197	30	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5284	93	106	\N	Psicólogo	AC	52	may-17	\N	Psicóloga	\N	\N
5285	93	106	\N	Psicólogo	AC	52	may-17	\N	Psicóloga	\N	\N
5286	93	22	\N	Psicólogo	AC	23	may-17	\N	Psicóloga	\N	\N
5287	93	81	\N	Psicólogo	AC	45	may-17	\N	Psicóloga	\N	\N
5288	93	81	\N	Psicólogo	AC	45	may-17	\N	Psicóloga	\N	\N
5289	93	81	\N	Psicólogo	AC	23	may-17	\N	Psicóloga	\N	\N
5290	93	81	\N	Psicólogo	AC	23	may-17	\N	Psicóloga	\N	\N
5291	126	31	\N	Psicólogo de Recursos Humanos	AC	35	may-17	\N	Psicóloga de Recursos Humanos	\N	\N
5292	93	22	\N	Psicólogo	AC	11	may-17	\N	Psicóloga	\N	\N
5293	93	81	\N	Psicólogo	AC	11	may-17	\N	Psicóloga	\N	\N
5294	97	86	\N	Defensor Público en Formación I	AC	35	may-17	\N	Defensora Pública en Formación I	\N	\N
5295	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5296	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5297	10	24	\N	Defensor Público en Pasantía	AC	52	may-17	\N	Defensora Pública en Pasantia	\N	\N
5298	319	25	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
5299	319	25	\N	Administrativo I	AC	52	may-17	\N	Administrativa I	\N	\N
5300	126	31	\N	Psicólogo de Recursos Humanos	AC	35	may-17	\N	Psicóloga de Recursos Humanos	\N	\N
5301	319	5	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
5302	319	21	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
5303	319	21	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
5304	319	21	\N	Administrativo I	AC	35	may-17	\N	Administrativa I	\N	\N
5305	400	29	\N	Defensor Público en Formación III	AC	52	may-17	\N	Defensora Pública en Formación III	\N	\N
5306	98	25	\N	Tecnico en Criminalistica	AC	52	may-17	\N	Tecnico en Criminalistica	\N	\N
5307	98	25	\N	Criminalista	AC	52	may-17	\N	Criminalista	\N	\N
5308	309	104	\N	Recepcionisto III	AC	52	ME-015-2017-DERH	\N	Recepcionista III	\N	\N
5309	397	22	\N	Auxiliar de Servicios I	AC	12	may-17	\N	Auxiliar de Servicios I	\N	\N
5310	444	25	\N	Criminalista	AC	52	may-17	\N	Criminalista	\N	\N
5311	445	9	\N	Experto Legal I	AC	35	ME-004-2017-DERH	\N	Experto Legal I	\N	\N
5312	10	22	\N	Defensor Público en Pasantía	AC	13	ME-472-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
5313	10	22	\N	Defensor Público en Pasantía	AC	13	ME-472-2016-DERH	\N	Defensora Pública en Pasantia	\N	\N
5314	319	31	\N	Administrativo	AC	35	may-17	\N	Adminisrativo	\N	\N
5315	446	5	\N	Especialista Financiero en la Unidad Ejecutora del Programa BID IDPP	AC	35	Acuerdo No 14-2017	\N	Especialista Financiero en la Unidad Ejecutora del Programa BID IDPP	\N	\N
5316	1	22	\N	Procurador Juridico	AC	52	jun-17	\N	Procuradora Juridica	\N	\N
5317	1	22	\N	Procurador Juridico	AC	52	jun-17	\N	Procuradora Juridica	\N	\N
5318	1	22	\N	Procurador Juridico	AC	52	jun-17	\N	Procuradora Juridica	\N	\N
5319	1	22	\N	Procurador Juridico	AC	52	jun-17	\N	Procuradora Juridica	\N	\N
5320	319	25	\N	Administrativo I	AC	52	jun-17	\N	Administrativa I	\N	\N
5321	319	25	\N	Administrativo I	AC	52	jun-17	\N	Administrativa I	\N	\N
5322	98	25	\N	Analista de Información	AC	52	jun-17	\N	Analista de Información	\N	\N
5323	98	25	\N	Analista de Información	AC	52	jun-17	\N	Analista de Información	\N	\N
5324	319	22	\N	Administrativo I	AC	10	jun-17	\N	Administrativa I	\N	\N
5325	187	23	\N	Defensor Público en Pasantía	AC	51	ME-020-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5326	187	23	\N	Defensor Público en Pasantía	AC	51	ME-020-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5327	187	23	\N	Defensor Público en Pasantía	AC	51	ME-020-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5328	319	107	\N	Administrativo II	AC	35	ME-024-2017-DERH	\N	Administrativa II	\N	\N
5329	396	95	\N	Especialista en Cooperación Externa	AC	35	ME-021-2017-DERH	\N	Especialista en Cooperacion Externa	\N	\N
5330	447	82	\N	Sub Jefe de Sección de Transportes	AC	35	Acuerdo  No 15-2017	\N	Sub Jefa de Sección de Transportes	\N	\N
5331	1	22	\N	Procurador Juridico	AC	30	me-033-2017-derh	\N	Procuradora Juridica	\N	\N
5332	1	22	\N	Procurador Juridico	AC	30	me-033-2017-derh	\N	Procuradora Juridica	\N	\N
5333	10	24	\N	Defensor Público en Pasantía	AC	52	me-031-2017-derh	\N	Defensora Pública en Pasantía	\N	\N
5334	10	24	\N	Defensor Público en Pasantía	AC	52	me-031-2017-derh	\N	Defensora Pública en Pasantía	\N	\N
5335	10	24	\N	Defensor Público en Pasantía	AC	52	me-031-2017-derh	\N	Defensora Pública en Pasantía	\N	\N
5336	10	24	\N	Defensor Público en Pasantía	AC	52	me-031-2017-derh	\N	Defensora Pública en Pasantía	\N	\N
5337	400	22	\N	Defensor Público en Formación III	AC	11	ME-032-2017-DERH	\N	Defensora Pública en Formación III	\N	\N
5338	123	98	\N	Administrativo V	AC	35	ME-047-2017-DERH	\N	Administrativa V	\N	\N
5339	123	98	\N	Administrativo V	AC	35	ME-047-2017-DERH	\N	Administrativa V	\N	\N
5340	309	104	\N	Recepcionisto III	AC	35	ME-042-2017-DERH	\N	Recepcionista III	\N	\N
5341	319	23	\N	Administrativo I	AC	35	ME-054-2017-DERH	\N	Administrativa I	\N	\N
5342	319	23	\N	Administrativo I	AC	35	ME-054-2017-DERH	\N	Administrativa I	\N	\N
5343	440	81	\N	Asistente de Defensor Público	AC	5	Acuerdo No 3-2016	\N	Asistente de Defensora Pública	\N	\N
5344	1	81	\N	Procurador Juridico	AC	41	ME-045-2017-DERH	\N	Procuradora Juridica	\N	\N
5345	10	22	\N	Defensor Público en Pasantía	AC	23	ME-055-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5346	10	22	\N	Defensor Público en Pasantía	AC	23	ME-055-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5347	376	9	\N	Secretaria II	AC	35	Acuerdo 18-2017	\N	Secretaria II	\N	\N
5348	309	3	\N	Recepcionista en la Unidad de Supervision General	AC	35	Acuerdo 17-2017	Ref 326-2017-RRHH-CLRP-hbg	Recepcionista en la Unidad de Supervision General 	\N	\N
5349	185	31	\N	Psicólogo	AC	35	Acuerdo 23-2017	\N	Psicóloga	\N	\N
5350	448	3	\N	Supervisor	AC	35	Acuerdo No 16-2017	\N	Supervisora	\N	\N
5351	448	3	\N	Supervisor	AC	35	Acuerdo No 16-2017	\N	Supervisora	\N	\N
5352	448	3	\N	Supervisor	AC	35	Acuerdo No 16-2017	\N	Supervisora	\N	\N
5353	10	22	\N	Defensor Público en Pasantía	AC	23	ME-055-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5354	10	22	\N	Defensor Público en Pasantía	AC	23	ME-055-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5355	376	88	\N	Secretaria II	AC	35	Acuerdo 11-2017	\N	Secretaria II	\N	\N
5356	191	21	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 19-2017	\N	Auxiliar de Inventarios	\N	\N
5357	191	21	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 20-2017	\N	Auxiliar de Inventarios	\N	\N
5358	191	21	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 21-2017	\N	Auxiliar de Inventarios	\N	\N
5359	445	9	\N	Experto Legal	AC	35	may-17	\N	Experto Legal	\N	\N
5360	445	9	\N	Experto Legal	AC	35	jun-17	\N	Experto Legal	\N	\N
5361	444	25	\N	Criminalista	AC	52	ME-037-2017-DERH	\N	Criminalista	\N	\N
5362	10	22	\N	Defensor Público en Pasantía	AC	13	ME-069-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5363	10	22	\N	Defensor Público en Pasantía	AC	13	ME-069-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5364	187	23	\N	Defensor Público en Pasantía	AC	35	ME-067-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5365	187	23	\N	Defensor Público en Pasantía	AC	35	ME-067-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5366	226	22	\N	Defensor Público en Formación II	AC	8	may-17	\N	Defensora Pública en Formacion II	\N	\N
5367	235	19	\N	Auxiliar Administrativo	AC	35	Acuerdo No 26-2017	\N	Auxliar Administrativa	\N	\N
5368	235	19	\N	Auxiliar Administrativo	AC	35	Acuerdo No 26-2017	\N	Auxliar Administrativa	\N	\N
5369	449	18	\N	Auxiliar de Presupuesto	AC	35	Acuerdo No 27-2017	\N	Auxiliar de Presupuesto	\N	\N
5370	450	7	\N	Auditor	AC	35	Acuerdo No 28-2017	\N	Auditora	\N	\N
5371	319	30	\N	Administrativo I	AC	52	ME-079-2017-DERH	\N	Administrativa I	\N	\N
5372	319	30	\N	Administrativo I	AC	52	ME-079-2017-DERH	\N	Administrativa I	\N	\N
5373	10	22	\N	Defensor Público en Pasantía	AC	24	ME-81-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5374	10	22	\N	Defensor Público en Pasantía	AC	24	ME-81-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5375	10	22	\N	Defensor Público en Pasantía	AC	11	ME-072-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5376	10	22	\N	Defensor Público en Pasantía	AC	11	ME-072-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5377	175	32	\N	Medico de Personal	AC	35	ME-083-2017-DERH	\N	Medico de Personal	\N	\N
5378	332	5	\N	Asistente Administrativo II	AC	35	Acuerdo 29-2017	\N	Asistente Administrativo II	\N	\N
5379	332	5	\N	Asistente Administrativo II	AC	35	Acuerdo 29-2017	\N	Asistente Administrativo II	\N	\N
5380	4	102	\N	Defensor Público de Planta I	AC	45	Acuerdo 30-2017	\N	Defensora Publico de Planta I	\N	\N
5381	4	102	\N	Defensor Público de Planta I	AC	45	Acuerdo 30-2017	\N	Defensor Público de Planta I	\N	\N
5382	4	102	\N	Defensor Público de Planta I	AC	45	Acuerdo 30-2017	\N	Defensor Público de Planta I	\N	\N
5383	408	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 30-2017	\N	Defensor Público de Planta I	\N	\N
5384	335	24	\N	Asistente de Defensor Público	AC	52	Acuerdo 32-2017	\N	Asistente de Defensor Público 	\N	\N
5385	451	88	\N	Experto Legal	AC	35	ME-071-2017-DERH	\N	Experto Legal	\N	\N
5386	297	4	\N	Experto Legal	AC	35	ME-097-2017-DERH	\N	Experto Legal	\N	\N
5387	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	ME-102-2017-DERH	\N	Auxiliar de Ingreso de Informacion	\N	\N
5388	178	11	\N	Auxiliar de Ingreso de Informacion	AC	2	ME-102-2017-DERH	\N	Auxiliar de Ingreso de Informacion	\N	\N
5389	319	5	\N	Administrativo I	AC	35	ME-099-2017-DERH	\N	Administrativa I	\N	\N
5390	319	5	\N	Administrativo I	AC	35	ME-099-2017-DERH	\N	Administrativa I	\N	\N
5391	184	28	\N	Defensor Publico en Pasantia Intercultural	AC	35	ME-103-2017-DERH	\N	Defensora Publica en Pasantia Intercultural	\N	\N
5392	1	22	\N	Procurador Juridico	AC	13	ME-101-2017-DERH	\N	Procuradora Juridica	\N	\N
5393	1	22	\N	Procurador Juridico	AC	13	ME-101-2017-DERH	\N	Procuradora Juridica	\N	\N
5394	430	14	\N	Sub Jefe de Sección de Compras	AC	35	Acuerdo numero 111-2016	\N	Sub Jefe de Sección de Compras	\N	\N
5395	175	32	\N	Medico de Personal	AC	35	ago-17	\N	Medico de Personal	\N	\N
5396	1	23	\N	Procurador Juridico	AC	35	sept-17	\N	Procuradora Juridica	\N	\N
5397	1	23	\N	Procurador Juridico	AC	35	sept-17	\N	Procuradora Juridica	\N	\N
5398	452	82	\N	Jefe de Sección de Transportes	AC	35	Acuerdo No 35-2017	\N	 Jefa de Sección de Transportes	\N	\N
5399	416	27	\N	Defensor Público de Planta I	AC	44	Acuerdo 36-2017	\N	Defensora Publico de Planta I	\N	\N
5400	415	27	\N	Defensor Público de Planta II	AC	44	Acuerdo 32-2017	\N	Defensora Pública de Planta II	\N	\N
5401	453	6	\N	Jefe del Departamento de Informática	AC	35	Acuerdo numero 41-2017	\N	Jefe del Departamento de Informática	\N	\N
5402	416	81	\N	Defensor Público de Planta I	AC	8	Acuerdo 30-2017	\N	Defensora Pública de Planta I	\N	\N
5403	416	81	\N	Defensor Público de Planta I	AC	8	Acuerdo 30-2017	\N	Defensora Pública de Planta I	\N	\N
5405	215	23	\N	Coordinador Nacional de Defensores de Oficio	AC	35	Ref 326-2017-RRHH-CLRP-hbg	\N	Coordinador Nacional de Defensores de Oficio	\N	\N
5408	309	3	\N	Recepcionista	AC	35	Ref 326-2017-RRHH-CLRP-hbg	\N	Recepcionista	\N	\N
5409	341	27	\N	Auxiliar de Coordinación	AC	44	Ref 326-2017-RRHH-CLRP-hbg	\N	Auxiliar de Coordinación	\N	\N
5411	341	27	\N	Auxiliar de Coordinación	AC	44	Ref 326-2017-RRHH-CLRP-hbg	\N	Auxiliar de Coordinación	\N	\N
5412	416	27	\N	Defensor Público de Planta I	AC	44	Ref 326-2017-RRHH-CLRP-hbg	\N	Defensora Publico de Planta I	\N	\N
5413	388	24	\N	Coordinador de Defensores Públicos en Formación	AC	52	Acuerdo 38-2017	\N	Coordinadora de Defensores Públicas en Formación	\N	\N
5414	454	103	\N	Encargado de Sección de Información Pública	AC	35	Acuerdo No 42-2017	\N	Encargada de Sección de Información Pública	\N	\N
5415	10	22	\N	Defensor Público en Pasantía	AC	42	ME124-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5416	400	100	\N	Defensor Público en Formación III	AC	52	ME-125-2017-DERH	\N	Defensora Pública en Formación III	\N	\N
5417	400	100	\N	Defensor Público en Formación III	AC	52	ME-125-2017-DERH	\N	Defensora Pública en Formación III	\N	\N
5418	319	34	\N	Administrativo I	AC	35	jun-17	\N	Administrativa I	\N	\N
5419	400	22	\N	Defensor Público en Formación III	AC	52	jul-17	\N	Defensora Pública en Formación III	\N	\N
5420	400	22	\N	Defensor Público en Formación III	AC	52	jul-17	\N	Defensora Pública en Formación III	\N	\N
5421	1	81	\N	Procurador Juridico	AC	26	ME 145-2017-DERH	\N	Procuradora Juridica	\N	\N
5422	1	81	\N	Procurador Juridico	AC	26	ME 145-2017-DERH	\N	Procuradora Juridica	\N	\N
5423	409	9	\N	Defensor Público de Planta III	AC	35	Acuerdo 44-2017	\N	Defensora Pública de Planta III	\N	\N
5424	409	9	\N	Defensor Público de Planta III	AC	35	Acuerdo 44-2017	\N	Defensora Pública de Planta III	\N	\N
5425	11	22	\N	Coordinador Departamental	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Coordinadora Departamental	\N	\N
5426	1	22	\N	Procurador Juridico	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Procuradora Juridica	\N	\N
5427	1	22	\N	Procurador Juridico	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Procuradora Juridica	\N	\N
5428	1	22	\N	Procurador Juridico	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Procuradora Juridica	\N	\N
5429	1	22	\N	Procurador Juridico	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Procuradora Juridica	\N	\N
5430	10	22	\N	Defensor Público en Pasantía	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Defensora Pública en Pasantia	\N	\N
5431	10	22	\N	Defensor Público en Pasantía	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Defensora Pública en Pasantia	\N	\N
5432	10	22	\N	Defensor Público en Pasantía	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Defensora Pública en Pasantia	\N	\N
5433	6	22	\N	Trabajador Social	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Trabajadora Social	\N	\N
5434	397	22	\N	Auxiliar de Servicios I	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Auxiliar de Servicios I	\N	\N
5435	408	22	\N	Defensor Público de Planta I	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Defensora Pública de Planta I	\N	\N
5436	335	22	\N	Asistente de Defensor Público	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Asistente de Defensora Pública	\N	\N
5437	171	22	\N	Asistente Administrativo Financiero	AC	55	Oficio 185-2017-DAF-EARC-nr	\N	Asistente Administrativa Financiero	\N	\N
5438	455	100	\N	Coordinador Especializado de Casos Penales de Mayor Riesgo	AC	52	Acuerdo 45-2017	\N	Coordinadora Especializada de Casos Penales de Mayor Riesgo	\N	\N
5439	416	100	\N	Defensor Público de Planta I	AC	52	Acuerdo 51-2017	\N	Defensora Pública de Planta I	\N	\N
5441	375	10	\N	Secretaria I	AC	35	Acuerdo 46-2017	\N	Secretaria I	\N	\N
5442	335	100	\N	Asistente de Defensor Público	AC	52	Acuerdo 52-2017	\N	Asistente de Defensora Pública	\N	\N
5443	335	100	\N	Asistente de Defensor Público	AC	52	Acuerdo 52-2017	\N	Asistente de Defensora Pública	\N	\N
5444	416	100	\N	Defensor Público de Planta I	AC	52	Acuerdo 52-2017	\N	Defensora Pública de Planta I	\N	\N
5445	10	22	\N	Defensor Público en Pasantía	AC	34	ME-148-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5446	10	22	\N	Defensor Público en Pasantía	AC	34	ME-148-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5447	416	100	\N	Defensor Público de Planta I	AC	52	Acuerdo 54-2017	\N	Defensora Publico de Planta I	\N	\N
5448	332	33	\N	Asistente Administrativo II	AC	35	Acuerdo 55-2017	\N	Asistente Administrativo II	\N	\N
5449	415	22	\N	Defensor Público de Planta II	AC	52	Acuerdo 58-2017	\N	Defensora Pública de Planta II	\N	\N
5450	415	22	\N	Defensor Público de Planta II	AC	52	Acuerdo 59-2017	\N	Defensora Pública de Planta II	\N	\N
5451	415	22	\N	Defensor Público de Planta II	AC	52	Acuerdo 59-2017	\N	Defensora Pública de Planta II	\N	\N
5452	6	105	\N	Trabajador Social	AC	55	Modificacion 15-2017	\N	Trabajadora Social	\N	\N
5453	10	22	\N	Defensor Público en Pasantía	AC	29	ME-160-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5454	416	29	\N	Defensor Público de Planta I	AC	52	Acuerdo 62-2017	\N	Defensora Publico de Planta I	\N	\N
5455	416	29	\N	Defensor Público de Planta I	AC	52	Acuerdo 62-2017	\N	Defensora Publico de Planta I	\N	\N
5456	1	22	\N	Procurador Juridico	AC	34	ME-153-2017-DERH-HCR	\N	Procuradora Juridica	\N	\N
5457	1	22	\N	Procurador Juridico	AC	34	ME-153-2017-DERH-HCR	\N	Procuradora Juridica	\N	\N
5458	10	22	\N	Defensor Público en Pasantía	AC	13	ME-164-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5459	181	22	\N	Defensor Público en Formación I	AC	13	ME-164-2017-DERH-HCR	\N	Defensora Pública en Formación I	\N	\N
5460	181	22	\N	Defensor Público en Formación I	AC	13	ME-164-2017-DERH-HCR	\N	Defensora Pública en Formación I	\N	\N
5461	191	21	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 63-2017	\N	Auxiliar de Inventarios	\N	\N
5462	456	5	\N	Jefe de Sección de Planes Programas y Proyectos	AC	35	Acuerdo No 66-2017	\N	Jefe de Sección de Planes Programas y Proyectos	\N	\N
5463	456	5	\N	Jefe de Sección de Planes Programas y Proyectos	AC	35	Acuerdo No 66-2017	\N	Jefe de Sección de Planes Programas y Proyectos	\N	\N
5464	10	22	\N	Defensor Público en Pasantía	AC	8	ME-173-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5465	10	22	\N	Defensor Público en Pasantía	AC	8	ME-173-2017-DERH-HCR	\N	Defensora Pública en Pasantia	\N	\N
5466	331	31	\N	Asistente Administrativo I	AC	35	Acuerdo 65-2017	\N	Asistente Administrativo I	\N	\N
5467	361	31	\N	Encargado de Nóminas y Planillas	AC	35	Acuerdo 64-2017	\N	Encargado de Nóminas y Planillas	\N	\N
5468	442	98	\N	Asistente Administrativo II	AC	35	Acuerdo No 69-2017	\N	Asistente Administrativo II	\N	\N
5469	442	5	\N	Asistente Administrativo II	AC	35	Acuerdo No 70-2017	\N	Asistente Administrativo II	\N	\N
5470	297	4	\N	Experto Legal	AC	35	ME-184-2017-DERH-HCR	\N	Experto Legal	\N	\N
5471	319	5	\N	Administrativo I	AC	35	ME-185-2017-DERH	\N	Administrativa I	\N	\N
5472	319	5	\N	Administrativo I	AC	35	ME-185-2017-DERH	\N	Administrativa I	\N	\N
5473	442	98	\N	Asistente Administrativo II	AC	35	Acuerdo No 68-2017	\N	Asistente Administrativo II	\N	\N
5474	442	5	\N	Asistente Administrativo II	AC	35	Acuerdo No 69-2017	\N	Asistente Administrativo II	\N	\N
5475	1	27	\N	Procurador Juridico	AC	44	ME-201-2017-DERH	\N	Procuradora Juridica	\N	\N
5476	1	27	\N	Procurador Juridico	AC	44	ME-201-2017-DERH	\N	Procuradora Juridica	\N	\N
5477	10	22	\N	Defensor Público en Pasantía	AC	10	ME-205-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5478	226	29	\N	Defensor Público en Formación II	AC	52	ME-215-2017-DERH	\N	Defensora Pública en Formacion II	\N	\N
5479	457	1	\N	Asesor de Seguridad	AC	35	Acuerdo No 74-2017	\N	Asesor de Seguridad	\N	\N
5480	10	22	\N	Defensor Público en Pasantía	AC	33	Me-228-2017-DERH-HCR	\N	Defensora Pública en Pasantía	\N	\N
5481	10	22	\N	Defensor Público en Pasantía	AC	33	Me-228-2017-DERH-HCR	\N	Defensora Pública en Pasantía	\N	\N
5482	1	22	\N	Procurador Juridico	AC	42	ME-227-2017-DERH-HCR	\N	Procuradora Juridica	\N	\N
5483	1	22	\N	Procurador Juridico	AC	42	ME-227-2017-DERH-HCR	\N	Procuradora Juridica	\N	\N
5484	9	5	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente  Administrativo	\N	\N
5485	465	103	\N	Encargado de Unidad de Información Pública	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Encargada de Unidad de Información Pública	\N	\N
5486	458	1	\N	Auxiliar de Dirección General	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Dirección General	\N	\N
5487	463	28	\N	Coordinador Nacional de Enfoque Intercultural	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinadora Nacional de Enfoque Intercultural	\N	\N
5488	9	4	\N	Asistente  Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5489	9	12	\N	Asistente de Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente de Administrativo	\N	\N
5490	9	98	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5491	235	1	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5492	235	1	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5494	235	32	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5495	235	32	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5496	235	8	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5497	475	27	\N	Sub Coordinador de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Sub Coordinadora de Enfoque de Género	\N	\N
5498	477	105	\N	Trabajador Social	AC	11	Ref 683-2017-RRHH-JRFG-hbg	\N	Trabajador Social	\N	\N
5499	474	7	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5500	474	9	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5501	477	105	\N	Trabajador Social	AC	11	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajadora Social	\N	\N
5502	474	88	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5503	479	95	\N	Asistente de Cooperación Externa	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente de Cooperación Externa	\N	\N
5504	464	4	\N	Encargado de Biblioteca	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Encargado de Biblioteca	\N	\N
5505	466	92	\N	Jefe de Análisis y Desarrollo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de Análisis y Desarrollo	\N	\N
5506	460	25	\N	Coordinador de Apoyo Técnico	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinadora de Apoyo Técnico	\N	\N
5508	459	85	\N	Auxiliar de Reproducción	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Reproducción	\N	\N
5509	9	21	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5510	474	13	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5511	7	105	\N	Trabajador Social	AC	30	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajadora Social	\N	\N
5512	468	94	\N	Jefe de Redes y Telecomunicaciones	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de Redes y Telecomunicaciones	\N	\N
5513	478	105	\N	Trabajador Social Técnico Universitario	AC	32	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajador Social Técnico Universitario 	\N	\N
5514	9	98	\N	Asistente Administrativo	AC	35	Acuerdo No 73-2017 de Direccion General	\N	Asistente Adminstrativo	\N	\N
5515	461	100	\N	Coordinador Especializado en Casos Penales de Mayor Riesgo	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Especializado en Casos Penales de Mayor Riesgo	\N	\N
5516	471	90	\N	Jefe del Departamento de Estadística	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe del Departamento de Estadística	\N	\N
5517	478	105	\N	Trabajador Social Técnico Universitario	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajador Social Técnico Universitario 	\N	\N
5518	477	105	\N	Trabajador Social	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajador Social	\N	\N
5519	9	32	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Adminstrativo	\N	\N
5520	9	82	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Adminstrativo	\N	\N
5521	473	91	\N	Relacionista Público	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Relacionista Pública	\N	\N
5522	95	85	\N	Auxiliar de Mantenimiento	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Mantenimiento	\N	\N
5523	9	5	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Adminstrativo	\N	\N
5524	470	93	\N	Jefe de Soporte Técnico	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de Soporte Técnico	\N	\N
5525	470	93	\N	Jefe de Soporte Técnico	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de Soporte Técnico	\N	\N
5526	477	30	\N	Trabajador Social	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajador Social	\N	\N
5527	462	27	\N	Coordinador Nacional de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Nacional de Enfoque de Género	\N	\N
5528	462	27	\N	Coordinador Nacional de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Nacional de Enfoque de Género	\N	\N
5529	28	7	\N	Auditor	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auditora	\N	\N
5530	474	31	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5531	9	22	\N	Asistente  Administrativo	AC	13	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5532	28	7	\N	Auditor	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auditora	\N	\N
5533	467	4	\N	Jefe de la Unidad de Formación y Capacitación de Defensores Públicos	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de la Unidad de Formación y Capacitación de Defensores Públicos	\N	\N
5534	9	22	\N	Asistente  Administrativo	AC	11	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5535	9	12	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Adminstrativo	\N	\N
5536	9	33	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Adminstrativo	\N	\N
5537	458	1	\N	Auxiliar de Dirección General	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Dirección General	\N	\N
5538	35	27	\N	Auxiliar Administrativo	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativo	\N	\N
5539	476	9	\N	Técnico del SIADEP	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Técnico del SIADEP	\N	\N
5540	9	90	\N	Asistente  Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5541	477	105	\N	Trabajador Social	AC	34	Acuerdo No 03-2017 del Consejo del IDPP	\N	Trabajador Social	\N	\N
5542	35	3	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativo	\N	\N
5543	472	12	\N	Monitor Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Monitor Administrativo	\N	\N
5544	9	90	\N	Asistente  Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5545	9	8	\N	Asistente  Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5546	3	22	\N	Conserje	AC	13	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5547	9	100	\N	Asistente  Administrativo	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5548	3	22	\N	Conserje	AC	11	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5549	49	22	\N	Coordinador Municipal	AC	42	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Municipal	\N	\N
5550	35	31	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativo	\N	\N
5551	49	22	\N	Coordinador Municipal	AC	21	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Municipal	\N	\N
5552	49	22	\N	Coordinador Municipal	AC	49	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Municipal	\N	\N
5553	9	22	\N	Asistente  Administrativo	AC	55	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5554	474	10	\N	Secretaria	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Secretaria	\N	\N
5555	3	22	\N	Conserje	AC	8	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5556	480	5	\N	Técnico de Organización y Métodos	AC	35	Acuerdo No 78-2017	\N	Técnico de Organización y Métodos 	\N	\N
5557	6	22	\N	Trabajador Social	AC	10	ME-242 DERH-HCR	\N	Trabajador Social	\N	\N
5558	195	81	\N	Defensor Público en Pasantía	AC	45	ME-252-2017-DERH-HCR	\N	Defensora Pública en Pasantía	\N	\N
5559	191	137	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Inventarios	\N	\N
5560	191	137	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Inventarios	\N	\N
5561	191	137	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Inventarios	\N	\N
5562	191	137	\N	Auxiliar de Inventarios	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Inventarios	\N	\N
5563	360	137	\N	Encargado de Inventarios	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Encargada de Inventarios	\N	\N
5564	9	137	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5565	224	124	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar Administrativa	\N	\N
5566	6	22	\N	Trabajador Social	AC	10	ME-242-2017-DERH-HCR	\N	Trabajador Social	\N	\N
5567	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5568	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5679	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5569	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5570	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5571	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5572	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5573	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5574	3	17	\N	Conserje	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Conserje	\N	\N
5575	9	136	\N	Asistente Administrativo	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Asistente Adminstrativo	\N	\N
5576	9	136	\N	Asistente Administrativo	AC	35	Acuerdo No 3-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Asistente Adminstrativo	\N	\N
5577	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5578	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5579	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5580	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5581	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5582	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5583	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5584	3	17	\N	Conserje	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Conserje	\N	\N
5585	123	136	\N	Auxiliar de Seguridad	AC	35	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Seguridad	\N	\N
5586	47	17	\N	Mensajero	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Mensajera	\N	\N
5587	47	17	\N	Mensajero	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Mensajera	\N	\N
5588	95	17	\N	Auxiliar de Mantenimiento	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Mantenimiento	\N	\N
5589	459	17	\N	Auxiliar de Reproducción	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar de Reproducción	\N	\N
5590	465	126	\N	Encargado de Unidad de Información Pública	AC	35	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Encargada de Unidad de Información Pública	\N	\N
5591	462	139	\N	Coordinador Nacional de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Nacional de Enfoque de Género	\N	\N
5592	462	139	\N	Coordinador Nacional de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Coordinador Nacional de Enfoque de Género	\N	\N
5593	481	2	\N	Asesor de Dirección General	AC	35	Acuerdo No 82-2017 de Direccion General	\N	Asesor de Dirección General	\N	\N
5594	471	142	\N	Jefe del Departamento de Estadística	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe del Departamento de Estadística	\N	\N
5595	9	142	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5596	463	28	\N	Coordinador Nacional de Enfoque Intercultural	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Pena	\N	Coordinadora Nacional de Enfoque Intercultural	\N	\N
5597	337	142	\N	Asistente de Estadística	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente de Estadística	\N	\N
5598	467	141	\N	Jefe de la Unidad de Formación y Capacitación de Defensores Públicos	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de la Unidad de Formación y Capacitación de Defensores Públicos	\N	\N
5599	70	141	\N	Capacitador Tutor	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Capacitadora Tutora	\N	\N
5600	440	138	\N	Asistente de Defensor Público	AC	5	Acuerdo No 3-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Asistente de Defensora Pública	\N	\N
5601	416	141	\N	Defensor Público de Planta I	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensor Público de Planta I	\N	\N
5602	213	141	\N	Diseñador Gráfico	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Diseñadora Gráfica	\N	\N
5603	464	135	\N	Encargado de Biblioteca	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Encargado de Biblioteca	\N	\N
5604	185	125	\N	Psicólogo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Psicóloga	\N	\N
5605	463	140	\N	Coordinador Nacional de Enfoque Intercultural	AC	35	Acuerdo No 3-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Coordinadora Nacional de Enfoque Intercultural	\N	\N
5606	475	139	\N	Sub Coordinador de Enfoque de Género	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Sub Coordinadora de Enfoque de Género	\N	\N
5607	414	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensor Público de Planta I	\N	\N
5608	416	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensor Público de Planta I	\N	\N
5609	415	139	\N	Defensor Público de Planta II	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensora Pública de Planta II	\N	\N
5610	35	139	\N	Auxiliar Administrativo	AC	44	Acuerdo No 03-2017 del Consejo del IDPP	\N	Auxiliar Administrativa	\N	\N
5611	414	138	\N	Defensor Público de Planta I	AC	8	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensor Público de Planta I	\N	\N
5612	457	2	\N	Asesor de Seguridad	AC	35	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Asesor de Seguridad	\N	\N
5613	473	134	\N	Relacionista Público	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Relacionista Pública	\N	\N
5614	123	136	\N	Auxiliar de Seguridad	AC	35	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Auxiliar de Seguridad	\N	\N
5615	335	138	\N	Asistente de Defensor Público	AC	6	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente de Defensor Público	\N	\N
5616	482	138	\N	Psicólogo	AC	14	Acuerdo No 03-2017 del Consejo del IDPP	\N	Psicóloga	\N	\N
5617	9	132	\N	Asistente Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5618	457	2	\N	Asesor de Seguridad	AC	35	Acuerdo No 83-2017 de Direccion General	\N	Asesor de Seguridad	\N	\N
5619	337	131	\N	Asistente de Estadística	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente de Estadística	\N	\N
5620	440	138	\N	Asistente de Defensor Público	AC	5	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Asistente de Defensora Pública	\N	\N
5621	235	124	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 Consejo del Instituto de la Defensa Publica Penal	\N	Auxliar Administrativa	\N	\N
5622	224	124	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxliar Administrativa	\N	\N
5623	235	124	\N	Auxiliar Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Auxliar Administrativa	\N	\N
5624	335	138	\N	Asistente de Defensor Público	AC	5	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Asistente de Defensora Pública	\N	\N
5625	335	138	\N	Asistente de Defensor Público	AC	5	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Asistente de Defensora Pública	\N	\N
5626	456	127	\N	Jefe de Sección de Planes Programas y Proyectos	AC	35	Acuerdo No 03-2017 del Consejo del Instituto de la Defensa Publica Penal	\N	Jefe de Sección de Planes Programas y Proyectos	\N	\N
5627	319	22	\N	Administrativo I	AC	17	ME-253-2017-DERH-HCR	\N	Adminstrativa I	\N	\N
5628	1	22	\N	Procurador Juridico	AC	23	ME-263-2017-DERH-HCR	\N	Procuradora Juridica	\N	\N
5629	483	9	\N	Subdirector de la División Ejecutiva y de Recursos Humanos	AC	35	Acuerdo No 88-2017	\N	SubDirectora de la División Ejecutiva y de Recursos Humanos	\N	\N
5630	483	9	\N	Subdirector de División de Coordinaciones Técnico Profesionales	AC	35	Acuerdo No 88-2017 de Direccion General	\N	Subdirector de División de Coordinaciones Técnico Profesionales	\N	\N
5631	418	10	\N	Experto Legal Administrativo	AC	35	ME-279-2017-DERH-HCR	\N	Experto Legal Administrativo	\N	\N
5632	451	31	\N	Experto Legal	AC	35	ME-279-2017-DERH-HCR	\N	Experto Legal	\N	\N
5633	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5634	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5635	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5636	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5637	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5638	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5639	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5640	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5641	1	139	\N	Procurador Juridico	AC	44	ME-283-2017-DERH	\N	Procuradora Juridica	\N	\N
5642	481	2	\N	Asesor de Dirección General	AC	35	Acuerdo No 101-2017	\N	Asesor de Dirección General	\N	\N
5643	9	131	\N	Asistente  Administrativo	AC	35	Acuerdo No 03-2017 del Consejo del IDPP	\N	Asistente Administrativo	\N	\N
5645	469	106	\N	Jefe de Sección de Psicología	AC	52	Acuerdo No 03-2017 del Consejo del IDPP	\N	Jefe de Sección de Psicología	\N	\N
5646	484	22	\N	Defensor Público de Planta I	AC	17	177-2017	\N	Defensora Pública de Planta  I	\N	\N
5647	484	22	\N	Defensor Público de Planta I	AC	18	Acuerdo 178-2017	\N	Defensora Pública de Planta  I	\N	\N
5648	484	22	\N	Defensor Público de Planta I	AC	18	Acuerdo 179-2017	\N	Defensora Pública de Planta  I	\N	\N
5649	484	22	\N	Defensor Público de Planta I	AC	32	Acuerdo 180-2017	\N	Defensora Publico de Planta I	\N	\N
5650	484	22	\N	Defensor Público de Planta I	AC	45	Acuerdo No 181-2017	\N	Defensora Publico de Planta I	\N	\N
5651	484	22	\N	Defensor Público de Planta I	AC	45	Acuerdo No 181-2017	\N	Defensora Publico de Planta I	\N	\N
5652	484	22	\N	Defensor Público de Planta I	AC	38	Acuerdo 179-2017	\N	Defensora Pública de Planta  I	\N	\N
5653	484	22	\N	Defensor Público de Planta I	AC	45	Acuerdo 183-2017	\N	Defensora Publico de Planta I	\N	\N
5654	484	22	\N	Defensor Público de Planta I	AC	10	Acuerdo No 185-2017	\N	Defensora Publico de Planta I	\N	\N
5655	484	22	\N	Defensor Público de Planta I	AC	6	Acuerdo No 186-2017	\N	Defensora Pública de Planta  I	\N	\N
5656	484	22	\N	Defensor Público de Planta I	AC	52	Acuerdo No 182-2017	\N	Defensora Publico de Planta I	\N	\N
5657	484	22	\N	Defensor Público de Planta I	AC	4	Acuerdo No 184-2017	\N	Defensora Publico de Planta I	\N	\N
5658	309	12	\N	Recepcionisto	AC	52	Acuerdo 04-2017	\N	Recepcionista	\N	\N
5659	309	12	\N	Recepcionisto	AC	52	Acuerdo 04-2017	\N	Recepcionista	\N	\N
5660	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5661	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5662	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5663	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5664	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5665	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5666	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5667	10	24	\N	Defensor Público en Pasantía	AC	52	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5668	181	22	\N	Defensor Público en Formación I	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5669	181	22	\N	Defensor Público en Formación I	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5670	181	22	\N	Defensor Público en Formación I	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5671	181	22	\N	Defensor Público en Formación I	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5672	181	22	\N	Defensor Público en Formación I	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5673	10	22	\N	Defensor Público en Pasantía	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5674	10	22	\N	Defensor Público en Pasantía	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5675	10	22	\N	Defensor Público en Pasantía	AC	17	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5676	309	12	\N	Recepcionisto III	AC	52	Acuerdo 04-2017	\N	Recepcionista III	\N	\N
5677	309	12	\N	Recepcionisto III	AC	52	Acuerdo 04-2017	\N	Recepcionista III	\N	\N
5678	309	12	\N	Recepcionisto III	AC	52	Acuerdo 04-2017	\N	Recepcionista III	\N	\N
5680	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5681	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5682	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5683	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5684	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5685	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5686	1	139	\N	Procurador Juridico	AC	44	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5687	95	17	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5688	95	17	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5689	95	17	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5690	95	17	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5691	397	17	\N	Auxiliar de Servicios V	AC	35	Acuerdo 04-2017	\N	Auxiliar de Servicios V	\N	\N
5692	397	17	\N	Auxiliar de Servicios V	AC	35	Acuerdo 04-2017	\N	Auxiliar de Servicios V	\N	\N
5693	397	17	\N	Auxiliar de Servicios V	AC	35	Acuerdo 04-2017	\N	Auxiliar de Servicios V	\N	\N
5694	397	17	\N	Auxiliar de Servicios V	AC	35	Acuerdo 04-2017	\N	Auxiliar de Servicios V	\N	\N
5695	397	17	\N	Auxiliar de Servicios V	AC	35	Acuerdo 04-2017	\N	Auxiliar de Servicios V	\N	\N
5696	103	142	\N	Analista de Estadistica	AC	35	Acuerdo 04-2017	\N	Analista de Estadistica	\N	\N
5697	125	141	\N	Asistente de Logistica	AC	35	Acuerdo 04-2017	\N	Asistente de Logistica	\N	\N
5698	322	141	\N	Docente Capacitador I	AC	35	Acuerdo 04-2017	\N	Docente Capacitadora I	\N	\N
5699	322	141	\N	Docente Capacitador I	AC	35	Acuerdo 04-2017	\N	Docente Capacitadora I	\N	\N
5700	319	143	\N	Administrativo II	AC	35	Acuerdo 04-2017	\N	Administrativa II	\N	\N
5701	309	12	\N	Recepcionisto III	AC	35	Acuerdo 04-2017	\N	Recepcionista III	\N	\N
5702	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5703	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5704	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5705	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5706	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5707	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5708	420	139	\N	Defensor Público en Pasantía	AC	44	Acuerdo 04-2017	\N	Defensora Pública en Pasantía	\N	\N
5709	319	140	\N	Administrativo I	AC	35	Acuerdo 04-2017	\N	Administrativa I	\N	\N
5710	319	140	\N	Administrativo I	AC	35	Acuerdo 04-2017	\N	Administrativa I	\N	\N
5711	1	26	\N	Procurador Juridico	AC	1	Acuerdo 19-2017	\N	Procuradora Juridica	\N	\N
5712	1	26	\N	Procurador Juridico	AC	1	Acuerdo 19-2017	\N	Procuradora Juridica	\N	\N
5713	1	26	\N	Procurador Juridico	AC	1	Acuerdo 19-2017	\N	Procuradora Juridica	\N	\N
5714	1	26	\N	Procurador Juridico	AC	1	Acuerdo 19-2017	\N	Procuradora Juridica	\N	\N
5715	181	26	\N	Defensor Público en Formación I	AC	1	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5716	181	26	\N	Defensor Público en Formación I	AC	1	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5717	181	26	\N	Defensor Público en Formación I	AC	1	Acuerdo 04-2017	\N	Defensora Pública en Formación I	\N	\N
5718	6	105	\N	Trabajador Social	AC	1	Acuerdo  04-2017	\N	Trabajador Social	\N	\N
5719	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5720	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5721	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5722	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5723	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5724	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5725	99	120	\N	Operador Jurídico	AC	35	Acuerdo 04-2017	\N	Operadora Jurídica	\N	\N
5726	182	138	\N	Defensor Público en Formación II	AC	6	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5727	1	138	\N	Procurador Juridico	AC	14	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5728	182	138	\N	Defensor Público en Formación II	AC	14	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5729	1	138	\N	Procurador Juridico	AC	27	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5730	182	138	\N	Defensor Público en Formación II	AC	27	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5731	182	138	\N	Defensor Público en Formación II	AC	27	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5732	182	138	\N	Defensor Público en Formación II	AC	13	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5733	182	138	\N	Defensor Público en Formación II	AC	13	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5734	195	138	\N	Defensor Público en Pasantía	AC	23	Acuerdo 04-2017	\N	Defensora Publico en Pasantia	\N	\N
5735	195	138	\N	Defensor Público en Pasantía	AC	23	Acuerdo 04-2017	\N	Defensora Publico en Pasantia	\N	\N
5736	93	138	\N	Psicólogo	AC	23	Acuerdo 04-2017	\N	Psicóloga	\N	\N
5737	93	138	\N	Psicólogo	AC	23	Acuerdo 04-2017	\N	Psicóloga	\N	\N
5738	182	138	\N	Defensor Público en Formación II	AC	26	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5739	182	138	\N	Defensor Público en Formación II	AC	26	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5740	6	138	\N	Trabajador Social	AC	8	Acuerdo 04-2017	\N	Trabajador Social	\N	\N
5741	397	138	\N	Auxiliar de Servicios I	AC	8	Acuerdo 04-2017	\N	Auxiliar de Servicios I	\N	\N
5742	182	138	\N	Defensor Público en Formación II	AC	41	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5743	182	138	\N	Defensor Público en Formación II	AC	41	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5744	195	138	\N	Defensor Público en Pasantía	AC	41	Acuerdo 04-2017	\N	Defensora Publica en Pasantía	\N	\N
5745	195	138	\N	Defensor Público en Pasantía	AC	41	Acuerdo 04-2017	\N	Defensora Publica en Pasantía	\N	\N
5746	397	138	\N	Auxiliar de Servicios I	AC	41	Acuerdo 04-2017	\N	Auxiliar de Servicios I	\N	\N
5747	182	138	\N	Defensor Público en Formación II	AC	11	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5748	68	140	\N	Intérprete	AC	33	Acuerdo No 03-2017 del Consejo del IDPP	\N	Interprete	\N	\N
5750	68	140	\N	Intérprete	AC	8	Acuerdo No 03-2017 del Consejo del IDPP	\N	Interprete	\N	\N
5751	93	138	\N	Psicólogo	AC	11	Acuerdo 04-2017	\N	Psicóloga	\N	\N
5752	68	140	\N	Intérprete	AC	23	Acuerdo No 03-2017 del Consejo del IDPP	\N	Interprete	\N	\N
5753	182	138	\N	Defensor Público en Formación II	AC	18	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5754	182	138	\N	Defensor Público en Formación II	AC	18	Acuerdo 04-2017	\N	Defensora Pública en Formación II	\N	\N
5755	416	140	\N	Defensor Público de Planta I	AC	31	Acuerdo No 03-2017 del Consejo del IDPP	\N	Defensor Público de Planta I	\N	\N
5757	9	141	\N	Asistente Administrativo	AC	35	mar-17	\N	Asistente Adminstrativo	\N	\N
5758	1	138	\N	Procurador Juridico	AC	13	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5759	1	138	\N	Procurador Juridico	AC	13	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5760	1	138	\N	Procurador Juridico	AC	18	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5761	1	138	\N	Procurador Juridico	AC	18	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5762	1	138	\N	Procurador Juridico	AC	18	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5763	1	138	\N	Procurador Juridico	AC	5	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5764	1	138	\N	Procurador Juridico	AC	5	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5765	1	138	\N	Procurador Juridico	AC	23	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5766	1	138	\N	Procurador Juridico	AC	23	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5767	319	126	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5768	1	138	\N	Procurador Juridico	AC	41	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5769	1	138	\N	Procurador Juridico	AC	41	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5770	1	138	\N	Procurador Juridico	AC	8	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5771	175	124	\N	Medico de Personal	AC	35	Acuerdo 04-2017	\N	Medico de Personal	\N	\N
5772	297	141	\N	Experto Legal	AC	35	Acuerdo 04-2017	\N	Experto Legal	\N	\N
5773	184	140	\N	Defensor Publico en Pasantia Intercultural	AC	35	Acuerdo 04-2017	\N	Defensora Publica en Pasantia Intercultural	\N	\N
5774	416	22	\N	Defensor Público de Planta I	AC	15	Acuerdo No 109	\N	Defensor Público de Planta I	\N	\N
5775	1	138	\N	Procurador Juridico	AC	26	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5776	1	138	\N	Procurador Juridico	AC	11	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5777	297	141	\N	Experto Legal	AC	35	Acuerdo 04-2017	\N	Experto Legal	\N	\N
5778	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 110-2017	\N	Defensor Público de Planta I	\N	\N
5780	416	22	\N	Defensor Público de Planta I	AC	27	Acuerdo No 119-2017	\N	Defensor Público de Planta I	\N	\N
5781	416	22	\N	Defensor Público de Planta I	AC	23	Acuerdo No 120-2017	\N	Defensor Público de Planta I	\N	\N
5783	175	10	\N	Medico de Personal	AC	35	Acuerdo 04-2017	\N	Medico de Personal	\N	\N
5784	354	22	\N	Defensor Público de Planta I	AC	6	Acuerdo No 139-2017	\N	Defensor Público de Planta I	\N	\N
5785	416	22	\N	Defensor Público de Planta I	AC	10	Acuerdo 140-2017	\N	Defensor Público de Planta I	\N	\N
5786	416	22	\N	Defensor Público de Planta I	AC	14	Acuerdo 142-2017	\N	Defensor Público de Planta I	\N	\N
5787	416	22	\N	Defensor Público de Planta I	AC	12	Acuerdo 144-2017	\N	Defensor Público de Planta I	\N	\N
5788	484	22	\N	Defensor Público de Planta I	AC	12	Acuerdo No 144-2017	\N	Defensor Público de Planta I	\N	\N
5789	416	22	\N	Defensor Público de Planta I	AC	12	Acuerdo 144-2017	\N	Defensor Público de Planta I	\N	\N
5790	416	22	\N	Defensor Público de Planta I	AC	27	Acuerdo 145-2017	\N	Defensor Público de Planta I	\N	\N
5791	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 146-2017	\N	Defensor Público de Planta I	\N	\N
5792	416	22	\N	Defensor Público de Planta I	AC	52	121-2017	\N	Defensor Público de Planta I	\N	\N
5793	416	22	\N	Defensor Público de Planta I	AC	29	122-2017	Acuerdo No 208-2017	Defensor Público de Planta I	\N	\N
5794	416	22	\N	Defensor Público de Planta I	AC	53	Acuerdo 147-2017	\N	Defensor Público de Planta I	\N	\N
5795	416	30	\N	Defensor Público de Planta I	AC	2	Acuerdo 148-2017	\N	Defensor Público de Planta I	\N	\N
5797	416	22	\N	Defensor Público de Planta I	AC	17	123-2017	\N	Defensor Público de Planta I	\N	\N
5798	354	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 149-2017	\N	Defensor Público de Planta I	\N	\N
5800	416	22	\N	Defensor Público de Planta I	AC	22	124-2017	\N	Defensor Público de Planta I	\N	\N
5802	416	22	\N	Defensor Público de Planta I	AC	8	Acuerdo No 126-2017	\N	Defensor Público de Planta I	\N	\N
5803	416	22	\N	Defensor Público de Planta I	AC	13	Acuerdo 150-2017	\N	Defensor Público de Planta I	\N	\N
5804	68	102	\N	Intérprete	AC	22	Acuerdo 04-2017	\N	Interprete	\N	\N
5805	68	102	\N	Intérprete	AC	22	Acuerdo 04-2017	\N	Interprete	\N	\N
5806	68	140	\N	Intérprete	AC	22	Acuerdo 04-2017	\N	Interprete	\N	\N
5807	416	86	\N	Defensor Público de Planta I	AC	35	Acuerdo No 127-2017	\N	Defensor Público de Planta I	\N	\N
5808	416	30	\N	Defensor Público de Planta I	AC	52	Acuerdo No 128-2017	\N	Defensor Público de Planta I	\N	\N
5809	416	22	\N	Defensor Público de Planta I	AC	34	Acuerdo 151-2017	\N	Defensor Público de Planta I	\N	\N
5810	416	22	\N	Defensor Público de Planta I	AC	33	Acuerdo 152-2017	\N	Defensor Público de Planta I	\N	\N
5811	416	22	\N	Defensor Público de Planta I	AC	11	Acuerdo No 129	\N	Defensor Público de Planta I	\N	\N
5813	416	139	\N	Defensor Público de Planta I	AC	44	Acuerdo 153-2017	\N	Defensor Público de Planta I	\N	\N
5814	416	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 154-2017	\N	Defensor Público de Planta I	\N	\N
5815	416	22	\N	Defensor Público de Planta I	AC	16	Acuerdo 156-2017	\N	Defensor Público de Planta I	\N	\N
5816	416	30	\N	Defensor Público de Planta I	AC	52	Acuerdo 157-2017	\N	Defensor Público de Planta I	\N	\N
5817	354	22	\N	Defensor Público de Planta I	AC	13	Acuerdo No 130	\N	Defensor Público de Planta I	\N	\N
5819	416	22	\N	Defensor Público de Planta I	AC	26	Acuerdo 159-2017	\N	Defensor Público de Planta I	\N	\N
5821	416	22	\N	Defensor Público de Planta I	AC	28	Acuerdo 160-2017	\N	Defensor Público de Planta I	\N	\N
5823	416	22	\N	Defensor Público de Planta I	AC	32	Acuerdo No132-2017	\N	Defensor Público de Planta I	\N	\N
5824	416	22	\N	Defensor Público de Planta I	AC	11	Acuerdo 161-2017	\N	Defensor Público de Planta I	\N	\N
5825	416	26	\N	Defensor Público de Planta I	AC	1	Acuerdo 163-2017	\N	Defensor Público de Planta I	\N	\N
5826	416	30	\N	Defensor Público de Planta I	AC	52	Acuerdo 164-2017	\N	Defensor Público de Planta I	\N	\N
5828	416	22	\N	Defensor Público de Planta I	AC	6	Acuerdo 165-2017	\N	Defensor Público de Planta I	\N	\N
5829	416	22	\N	Defensor Público de Planta I	AC	23	Acuerdo 166-2017	\N	Defensor Público de Planta I	\N	\N
5830	416	30	\N	Defensor Público de Planta I	AC	52	Acuerdo No 133-2017	\N	Defensor Público de Planta I	\N	\N
5831	416	22	\N	Defensor Público de Planta I	AC	13	Acuerdo 167-2017	\N	Defensor Público de Planta I	\N	\N
5833	416	22	\N	Defensor Público de Planta I	AC	26	Acuerdo 168-2017	\N	Defensor Público de Planta I	\N	\N
5834	354	22	\N	Defensor Público de Planta I	AC	5	Acuerdo 169-2017	\N	Defensor Público de Planta I	\N	\N
5836	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo No 135-2017	\N	Defensor Público de Planta I	\N	\N
5837	354	22	\N	Defensor Público de Planta I	AC	8	Acuerdo 170-2017	\N	Defensor Público de Planta I	\N	\N
5839	416	22	\N	Defensor Público de Planta I	AC	6	Acuerdo No 136-2017	\N	Defensor Público de Planta I	\N	\N
5840	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 173-2017	\N	Defensor Público de Planta I	\N	\N
5843	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo No 137-2017	\N	Defensor Público de Planta I	\N	\N
5844	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 141-2017	\N	Defensor Público de Planta I	\N	\N
5846	416	26	\N	Defensor Público de Planta I	AC	1	Acuerdo 155-2017	\N	Defensor Público de Planta I	\N	\N
5847	416	22	\N	Defensor Público de Planta I	AC	8	Acuerdo No 138-2017	\N	Defensor Público de Planta I	\N	\N
5848	416	22	\N	Defensor Público de Planta I	AC	30	Acuerdo No 113-2017	\N	Defensor Público de Planta I	\N	\N
5849	416	22	\N	Defensor Público de Planta I	AC	33	Acuerdo No 114	\N	Defensor Público de Planta I	\N	\N
5850	416	22	\N	Defensor Público de Planta I	AC	30	Acuerdo No 115	\N	Defensor Público de Planta I	\N	\N
5851	416	22	\N	Defensor Público de Planta I	AC	27	Acuerdo No 116	\N	Defensor Público de Planta I	\N	\N
5852	416	22	\N	Defensor Público de Planta I	AC	5	Acuerdo No 117-2017	\N	Defensor Público de Planta I	\N	\N
5853	235	12	\N	Auxiliar Administrativo	AC	35	Acuerdo No 96-2017 de Direccion General	\N	Auxliar Administrativa	\N	\N
5854	416	22	\N	Defensor Público de Planta I	AC	14	Acuerdo No 111-2017	\N	Defensor Público de Planta I	\N	\N
5856	420	139	\N	Defensor Público en Formación I	AC	44	abr-17	\N	Defensora Pública en Formación I	\N	\N
5857	420	139	\N	Defensor Público en Formación I	AC	44	abr-17	\N	Defensora Pública en Formación I	\N	\N
5858	420	139	\N	Defensor Público en Formación I	AC	44	abr-17	\N	Defensora Pública en Formación I	\N	\N
5859	433	33	\N	Jefe de Sección de Admisión de Personal	AC	35	Acuerdo No 107-2017 de Direccion General	\N	Jefe de Sección de Admisión de Personal	\N	\N
5861	433	33	\N	Jefe de Sección de Admisión de Personal	AC	35	Acuerdo No 107-2017 de Direccion General	\N	Jefe de Sección de Admisión de Personal	\N	\N
5862	416	81	\N	Defensor Público de Planta I	AC	56	Acuerdo No 187-2017	\N	Defensor Público de Planta I	\N	\N
5863	416	22	\N	Defensor Público de Planta I	AC	5	Acuerdo No 125-2017	\N	Defensor Público de Planta I	\N	\N
5864	416	22	\N	Defensor Público de Planta I	AC	5	Acuerdo No 131-2017	\N	Defensor Público de Planta I	\N	\N
5865	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo No 162-2017	\N	Defensor Público de Planta I	\N	\N
5867	416	22	\N	Defensor Público de Planta I	AC	19	Acuerdo No 134-2017	\N	Defensor Público de Planta I	\N	\N
5869	354	11	\N	Defensor Público de Planta I	AC	2	Acuerdo 118-2017	\N	Defensor Público de Planta I	\N	\N
5872	416	139	\N	Defensor Público de Planta I	AC	44	Acuerdo 158-2017	\N	Defensor Público de Planta I	\N	\N
5873	416	22	\N	Defensor Público de Planta I	AC	52	Acuerdo 172-2017	\N	Defensor Público de Planta I	\N	\N
5874	354	22	\N	Defensor Público de Planta I	AC	34	Acuerdo 174-2017	\N	Defensor Público de Planta I	\N	\N
5875	416	22	\N	Defensor Público de Planta I	AC	32	Acuerdo 175-2017	\N	Defensor Público de Planta I	\N	\N
5876	416	138	\N	Defensor Público de Planta I	AC	56	Acuerdo 176-2017	\N	Defensor Público de Planta I	\N	\N
5877	416	138	\N	Defensor Público de Planta I	AC	56	Acuerdo 176-2017	\N	Defensor Público de Planta I	\N	\N
5878	416	138	\N	Defensor Público de Planta I	AC	56	Acuerdo 176-2017	\N	Defensor Público de Planta I	\N	\N
5879	175	124	\N	Medico de Personal	AC	35	abr-17	\N	Medico de Personal	\N	\N
5880	1	115	\N	Procurador Juridico	AC	52	Acuerdo 04-2017	\N	Procuradora Juridica	\N	\N
5881	319	115	\N	Técnico Administrativo	AC	52	Acuerdo 04-2017	\N	Técnico Administrativa	\N	\N
5882	319	115	\N	Técnico Administrativo	AC	52	Acuerdo 04-2017	\N	Técnico Administrativa	\N	\N
5883	35	16	\N	Auxiliar Administrativo	AC	35	Acuerdo 103-2017	\N	Auxiliar Administrativo	\N	\N
5884	35	16	\N	Auxiliar Administrativo	AC	35	Acuerdo 103-2017	\N	Auxiliar Administrativo	\N	\N
5885	338	115	\N	Asistente de Notificaciones	AC	52	Acuerdo 104-2017	\N	Asistente de Notificaciones 	\N	\N
5886	335	139	\N	Asistente de Defensor Público	AC	44	Acuerdo 105-2017	\N	Asistente de Defensora Público	\N	\N
5887	485	115	\N	Jefe del Departamento de Notificaciones	AC	52	Acuerdo 102-2017	\N	Jefe del Departamento de Notificaciones	\N	\N
5888	484	81	\N	Defensor Público de Planta I	AC	45	Acuerdo 181-2017	\N	Defensora Publico de Planta I	\N	\N
5889	319	134	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5890	319	134	\N	Técnico Administrativo II	AC	35	Acuerdo 04-2017	\N	Técnica Administrativa II	\N	\N
5891	416	22	\N	Defensor Público de Planta I	AC	30	Acuerdo No 194-2017	\N	Defensor Público de Planta I	\N	\N
5892	10	22	\N	Defensor Público en Pasantía	AC	23	ME-292-2017-DERH	\N	Defensora Pública en Pasantia	\N	\N
5893	155	139	\N	Consultor	AC	44	ME-305-2017-DERH	\N	Consultora	\N	\N
5894	325	92	\N	Analista Desarrollador	AC	35	ME-314-2017-DERH-HCR	\N	Analista Desarrolladora	\N	\N
5895	187	23	\N	Defensor Público en Pasantía	AC	23	ME-329-2017-DERH 	\N	Defensora Pública en Pasantia	\N	\N
5896	187	23	\N	Defensor Público en Pasantía	AC	23	ME-329-2017-DERH 	\N	Defensora Pública en Pasantia	\N	\N
5897	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5898	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5899	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5900	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5901	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5902	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5903	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5904	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5905	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5906	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5907	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5908	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5909	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5910	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5911	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5912	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5913	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5914	487	23	\N	Defensor Público de Oficio	AC	35	jun-17	\N	Defensora Pública de Oficio	\N	\N
5915	486	136	\N	Jefe del Departamento de Seguridad	AC	35	Acuerdo No 195-2017 de Direccion General	\N	Jefe del Departamento de Seguridad	\N	\N
5916	484	22	\N	Defensor Público de Planta I	AC	32	acuerdo 180-2017	\N	Defensora Publico de Planta I	\N	\N
5917	484	81	\N	Defensor Público de Planta I	AC	45	Acuerdo No 183-2017	\N	Defensora Publico de Planta I	\N	\N
5918	484	81	\N	Defensor Público de Planta I	AC	45	Acuerdo No 183-2017	\N	Defensora Publico de Planta I	\N	\N
5919	484	22	\N	Defensor Público de Planta I	AC	10	Acuerdo 185-2017	\N	Defensora Publico de Planta I	\N	\N
5920	484	22	\N	Defensor Público de Planta I	AC	10	Acuerdo No 185-2017	\N	Defensora Publico de Planta I	\N	\N
5921	484	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 212-2017	\N	Defensora Publico de Planta I	\N	\N
5922	484	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 212-2017	\N	Defensora Publico de Planta I	\N	\N
5923	484	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 212-2017	\N	Defensora Publica de Planta I	\N	\N
5924	484	22	\N	Defensor Público de Planta I	AC	32	Acuerdo No 180-2017	\N	Defensora Pública de Planta I	\N	\N
5925	484	22	\N	Defensor Público de Planta I	AC	32	Acuerdo No 180-2017	\N	Defensora Pública de Planta I	\N	\N
5926	484	22	\N	Defensor Público de Planta I	AC	6	Acuerdo No 214-2017	\N	Defensora Pública de Planta I	\N	\N
5927	484	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 217-2017	\N	Defensora Pública de Planta I	\N	\N
5928	484	139	\N	Defensor Público de Planta I	AC	44	Acuerdo No 217-2017	\N	Defensora Pública de Planta I	\N	\N
5929	416	22	\N	Defensor Público de Planta I	AC	18	Acuerdo No 171-2017	\N	Defensor Público de Planta I	\N	\N
5930	416	22	\N	Defensor Público de Planta I	AC	18	Acuerdo No 171-2017	\N	Defensor Público de Planta I	\N	\N
5931	484	22	\N	Defensor Público de Planta I	AC	31	Acuerdo 218-2017	\N	Defensora Publico de Planta I	\N	\N
5932	416	22	\N	Defensor Público de Planta I	AC	13	Acuerdo No 208-2017	\N	Defensor Público de Planta I	\N	\N
5933	416	22	\N	Defensor Público de Planta I	AC	13	\N	\N	\N	\N	\N
5934	416	27	\N	Defensor Público de Planta I	AC	45	Acuerdo No 209-2017	\N	 	\N	\N
5935	143	17	\N	Jefe de Sección de Servicios Generales	AC	35	Acuerdo Numero  220-2017	\N	Jefa de Sección de Servicios Generales	\N	\N
\.


--
-- Name: puesto_cod_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('puesto_cod_puesto_seq', 2, true);


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY region (cod_region, descripcion, cod_estatus) FROM stdin;
1	I.    REGION METROPOLITANA	AC
2	II.   REGION NORTE	AC
3	III.  REGION NOR-ORIENTAL	AC
4	IV.   REGION SUR-ORIENTAL	AC
5	V.    REGION CENTRAL	AC
6	VI.   REGION SUR-OCCIDENTAL 	AC
7	VII.  REGION NOR-OCCIDENTAL	AC
8	VIII. REGION PETEN	AC
\.


--
-- Name: region_cod_region_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('region_cod_region_seq', 1, false);


--
-- Data for Name: rol_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rol_usuario (id, rol, nombre) FROM stdin;
12	Admin	admin
13	vehiculo	adm
\.


--
-- Name: roles_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_usuario_id_seq', 13, true);


--
-- Data for Name: sede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sede (cod_sede, cod_municipio, cod_tipo_sede, nombre_sede, direccion, telefono_1, telefono_2, cod_coordindor, cod_organigrama, cod_estatus, cod_region_supervision, correo_electronico, zona) FROM stdin;
1	17	2	Coordinacion nacional de Adolescentes	4a. Calle 4-44, Zona 9,  4o. Nivel	23310171	\N	\N	\N	AC	1	\N	9
2	17	2	Torre de Tribunales	7a. Ave y 21 calle zona 1, Torre de Tribunales 11vo. Nivel	22776064	22321214	\N	\N	AC	1	\N	1
4	30	2	Amatitlan	5ta. Calle 7-72, Cantón Hospital, Amatitlán	66331599	66799345	\N	\N	AC	1	\N	\N
5	24	2	Mixco	Lote No.18,Manz.B-2,13 Ave.B,2-18 Col.Valle del Sol Z.4	24323611	24324155	\N	\N	AC	1	\N	4
6	31	2	Villa Nueva 	2da.Calle A 6-76,Lote 1,Zona 5,Colonia Enriqueta, VillaNueva	66316145	66369082	\N	\N	AC	1	\N	5
7	95	2	Coatepeque	2a. Avenida 5-35, Zona 2 Barrio El Rosario	77757839	77757838	\N	\N	AC	6	\N	2
8	298	2	Cobán, Alta Verapaz	2a. Calle 6-14, Zona 3	79513746	79513609	\N	\N	AC	2	\N	3
10	34	2	Chimaltenango	2a. Calle 8-177, Zona 3	78395390	78799186	\N	\N	AC	5	\N	3
11	209	2	Chiquimula	8a. Ave. 5-95, zona 1, Chiquimula	79427706	\N	\N	\N	AC	3	\N	1
12	230	2	Guastatoya, El Progreso	4a. Calle 0-0, Zona 6 Barrio la Democracia	79452723	\N	\N	\N	AC	3	\N	6
13	158	2	Escuintla, Escuintla	4ta. Avenida 2-39, zona 1, Escuintla	78880437	\N	\N	\N	AC	5	\N	1
14	267	2	Huehuetenango	2a.calle 2-13, zona 8, Colonia Hernandez	77646917	\N	\N	\N	AC	7	\N	8
15	122	1	Ixchihuan, San Marcos    	Canton San Juan Ixchiguan, Centro Administración de Justicia	77609875	\N	\N	\N	AC	6	\N	\N
16	265	1	Ixcan, Quiché	CAJ, zona 1 Playa Grande Ixcan Quichè	77557649	77-391408	\N	\N	AC	7	\N	1
17	202	2	Jalapa	2a. Calle 6-65, zona 1 Barrio La Democracia,  Jalapa	79224721	\N	\N	\N	AC	4	\N	1
18	185	2	Jutiapa	5a. Ave 7-22, zona 1	78441059	\N	\N	\N	AC	4	\N	1
19	114	2	Malacatán, San Marcos	4a. Avenida 6-127, Zona 2, Cantón Victoria	77770191	\N	\N	\N	AC	6	\N	2
20	258	1	Nebaj, El Quiché    	Cantón Simocol, Santa María , Nebaj	77558108	\N	\N	\N	AC	7	\N	\N
21	329	2	Poptún, Petén	2do.Nivel,Torre de Tribunales, Of.44,Frente Pista Aterrizaje	79276870	57104702	\N	\N	AC	8	\N	\N
22	313	2	Puerto Barrios, Izabal	9a.Calle entre 10a.y 11 Ave,2do.Nivel Edif. Chacón Linares	7948-5353	79485349	\N	\N	AC	3	\N	\N
23	76	2	Quetzaltenango	Callejón 8 0-37, zona 7, Quetzaltenango	77637387	77368947	\N	\N	AC	6	\N	7
24	129	2	Retalhuleu	8va. Avenida 6-75, Zona 1	77710976	\N	\N	\N	AC	6	\N	1
25	67	1	Santiago Atitlan	5a. Avenida y 5ta. Calle Zona 2, Canton Panul	77217852	77217100	\N	\N	AC	6	\N	2
26	238	2	Salamá, Baja Verapaz	6a. avenida 5-35, zona 1	79402210	\N	\N	\N	AC	2	\N	1
27	246	2	Santa Cruz, El Quiché	5a. Calle 3-42, Zona 5	77553151	\N	\N	\N	AC	7	\N	5
28	283	1	Santa Eulalia, Huehuetenango	Centro de Administración de Justicia	77659768	\N	\N	\N	AC	7	\N	\N
29	159	2	Santa Lucía Cotzumalguapa,  Escuintla	2a. Avenida 2-48, Zona 1	78822021	\N	\N	\N	AC	5	\N	1
30	100	2	San Marcos	8a. Calle C 8-57, 2do. Nivel, Edificio Wundram, Zona 2	77605588	\N	\N	\N	AC	6	\N	2
31	49	2	Sololá	8a. Avenida 13-16, Zona 2	77623924	\N	\N	\N	AC	6	\N	2
32	138	2	Mazatenango, Suchitepéquez	5 avenida Diagonal 1  0-80 Zona 1	78722681	\N	\N	\N	AC	6	\N	1
33	68	2	Totonicapán	11 avenida, 4-25 zona 3	77661627	\N	\N	\N	AC	6	\N	3
34	220	2	Zacapa	8a calle 3-40 Zona 2, Barrio La Reforma	79413128	\N	\N	\N	AC	3	\N	2
35	17	2	Oficinas Centrales	7 av. 10-35 Zona 1 Guatemala	25015757	\N	\N	\N	AC	1	\N	1
36	17	2	Anexo Uno de Oficinas Centrales	6ta. Avenida A 10-52, zona 1	22303331	22322602	\N	\N	AC	1	\N	\N
38	1	2	Antigua Guatemala	Avenida el Desengaño, Casa No. 21-B	78322851	78824350	\N	\N	AC	5	\N	\N
39	24	2	Juzgado de Turno de Mixco	13 Ave. A 5ta.Calle Esquina Colonia Monte Real, Zona 4	24330894	24371957	\N	\N	AC	1	\N	4
41	318	2	Santa Elena, Petén	Res. Shekina, 2do Nivel Barrio Villa Concepción zona 2 	79261846	\N	\N	\N	AC	8	\N	2
42	322	2	La Libertad, Petén	Barrio el Centro,Calle principal,a un lado de la Municipalidad	79440707	\N	\N	\N	AC	8	\N	\N
43	17	2	Anexo Dos de Oficinas Centrales	11 calle 8-49 zona 1 	22200815	\N	\N	\N	AC	1	\N	\N
44	17	2	Anexo Tres de Oficinas Centrales	7a. Avenida 10-17 zona 1	22300691	\N	\N	\N	AC	1	\N	\N
45	17	2	Anexo Cuatro de Oficinas Centrales	11 Calle 9-38 zona 1	22538075	\N	\N	\N	AC	1	\N	\N
46	31	2	Juzgado de Turno Villa Nueva	6ta. Avenida 4-78 zona 6 	66369082	\N	\N	\N	AC	1	\N	6
47	158	2	Juzgado de Turno Escuintla	6ta. Avenida 8-80 zona 1	78892888	\N	\N	\N	AC	5	\N	1
48	1	2	Juzgado de Turno Antigua Guatemala	Avenida el Desengaño, Casa No. 12	78325293	\N	\N	\N	AC	5	\N	\N
49	278	2	La Democracia, Huehuetenango	3ra. Calle 3-15, Zona 1,Barrio el Naranjo, Buenos Aires.	77738273	\N	\N	\N	AC	7	\N	1
50	172	2	Barberena	3ra. Calle 5-19 zona 1, Barberena, Santa Rosa	78870450	\N	\N	\N	AC	4	\N	1
51	17	2	Juzgado de Turno de Femicidio Gerona	15 ave 15-16 Barrio Gerona Sotano 1, Edificio del MP, zona 1	22533155	22538039	\N	\N	AC	1	\N	1
52	17	2	Edificio BEARN	10 calle 6-37 zona 1 Guatemala	25062000	\N	\N	\N	AC	1	\N	\N
53	171	2	Cuilapa, Santa Rosa	4a. Calle, final Zona 3 sin nomenclatura municipal	78865871	\N	\N	\N	AC	4	\N	\N
54	17	2	Centro de Justicia de Familia	6a. Avenida 5-66, zona 1, Guatemala	\N	\N	\N	\N	AC	1	\N	1
55	320	2	San Benito	14 calle 0-35 Zona 1, Barrio Tres de Abril, del Municipio de  San Benito, del Departamento de Petén	\N	\N	\N	\N	AC	8	\N	\N
56	306	2	Carchá, Alta Verapaz	\N	\N	\N	\N	\N	AC	2	\N	\N
9	171	2	Cuilapa, Santa Rosa	2a. Avenida "A" 2-30, Zona 2	78865137	\N	\N	\N	AC	4	\N	\N
\.


--
-- Name: sede_cod_sede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sede_cod_sede_seq', 1, true);


--
-- Data for Name: tipo_dependencia_institucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_dependencia_institucion (cod_tipo_dependencia_institucion, descripcion, cod_estatus, abreviatura) FROM stdin;
\.


--
-- Name: tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq', 1, false);


--
-- Data for Name: tipo_imagen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_imagen (cod_tipo_imagen, nombre_tipo_imagen, orden, activo) FROM stdin;
1	img2	\N	t
\.


--
-- Name: tipo_imagen_cod_tipo_imagen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_imagen_cod_tipo_imagen_seq', 2, true);


--
-- Data for Name: tipo_mantenimiento_reparacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_mantenimiento_reparacion (cod_tipo_mant_rep, descripcion, mant_repa) FROM stdin;
1	Cambio de pastillas	1
2	Reparacion de faja del tiempo	3
\.


--
-- Name: tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq', 3, true);


--
-- Data for Name: tipo_tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_tipo (cod_tipo_tipo, nombre_tipo_tipo, orden, activo) FROM stdin;
1	Pick Up	\N	t
7	Automovil	\N	t
2	Camion	\N	t
\.


--
-- Name: tipo_tipo_cod_tipo_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tipo_cod_tipo_tipo_seq', 8, true);


--
-- Data for Name: tipo_uso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_uso (cod_tipo_uso, nombre_tipo_uso, orden, activo) FROM stdin;
6	Particular	\N	t
7	Viaje	\N	t
\.


--
-- Name: tipo_uso_cod_tipo_uso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_uso_cod_tipo_uso_seq', 8, true);


--
-- Data for Name: unidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY unidad (cod_unidad, descripcion, cod_estatus, tiene_dependencia, nomenclatura) FROM stdin;
1	Dirección General	AC	\N	1
2	Asesores de Dirección	AC	\N	\N
3	Unidad de Supervisión General	AC	\N	\N
4	Unidad de Formación y Capacitación	AC	\N	3
5	Unidad de Informática	AC	\N	\N
6	Unidad de Auditoría Interna	AC	\N	\N
7	Unidad de Relaciones Públicas	AC	\N	\N
8	División Administrativa Financiera	AC	\N	5
9	División Coordinaciones Tecnico Profesionales	BJ	\N	\N
10	División Ejecutiva y De Recursos Humanos	AC	\N	6
11	Asignación de Casos	AC	\N	\N
12	Departamento Administrativo	AC	\N	1
13	Departamento Financiero	AC	\N	2
14	Sección de Compras	AC	\N	1
15	Sección de Almacén	AC	\N	\N
16	Coordinaciones Departamentales y Municipales	AC	\N	4
17	Coordinación Nacional Defensores de Oficio	AC	\N	\N
18	Departamento de Administración de Recurso Humano	AC	\N	\N
19	Admisión de Personal	AC	\N	\N
25	Unidad De Planificación	AC	\N	\N
26	División Coordinaciones Tecnico Profecionales	AC	\N	\N
27	Coordinación Nacional De Defensores En Formacion	AC	\N	\N
28	Coordinación Apoyo Tecnico	AC	\N	\N
32	Sección De Cobro Y Pago Administrativo	AC	\N	\N
33	Sección De Servicios Generales	AC	\N	3
34	Sección De Presupuesto	AC	\N	1
35	Sección De Contabilidad	AC	\N	2
36	Sección De Tesorería	AC	\N	\N
37	Inventarios	AC	\N	\N
38	Coordinación Nacional De Adolescentes En Conflicto Con La Ley Penal	AC	\N	8
39	Coordinación Enfoque De Género	AC	\N	9
40	Coordinación Enfoque Intercultural	AC	\N	10
41	Coordinación Nacional De Impugnaciones	AC	\N	11
42	Coordinación De Ejecución	AC	\N	\N
43	Adminisión De Personal	AC	\N	\N
44	Administración De Personal	AC	\N	\N
45	Departamento De Desarrollo Organizacional	AC	\N	2
46	Desarrollo De Personal	AC	\N	\N
47	Atención Y Apoyo Al Personal	AC	\N	\N
48	Aplicación Y Monitoreo De Personal	AC	\N	\N
49	Asesores Especificos	AC	\N	0
50	Unidad De Supervisión General	AC	\N	1
51	Unidad De Formacion Y Capacitacion	AC	\N	\N
52	Unidad De Planificacion	AC	\N	\N
53	Unidad De Informatica	AC	\N	\N
54	Unidad De Auditoria Interna	AC	\N	2
55	Division Administrativa Financiera	BJ	\N	\N
56	Division De Coordinaciones Tecnico Profesionales	BJ	\N	\N
57	Division Ejecutiva Y De Recursos Humanos	BJ	\N	\N
58	Departamento De Asignacion De Casos	AC	\N	\N
59	Sección De Compras	AC	\N	\N
60	Sección De Almacen	AC	\N	\N
61	Sección De Cobro Y Pago Administrativo	AC	\N	\N
62	Sección De Servicios Generales	AC	\N	\N
63	Sección De Presupuesto	AC	\N	\N
64	Sección De Contabilidad	AC	\N	\N
65	Sección De Tesoreria	AC	\N	\N
66	Coordinación Nacional De Defensores De Oficio	AC	\N	\N
67	Coordinacion De Defensores Publicos En Formacion	AC	\N	\N
68	Coordinacion De Apoyo Tecnico	AC	\N	\N
69	Coordinacion De Adolescentes En Conflicto Con La Ley Penal	BJ	\N	\N
70	Coordinacion Enfoque De Genero	AC	\N	\N
71	Coordinacion Enfoque Intercultural	AC	\N	\N
72	Coordinacion Nacional De Impugnaciones	AC	\N	\N
73	Coordinacion Nacional De Ejecucion	AC	\N	\N
74	Departamento De Administracion De Recursos Humanos	AC	\N	\N
75	Sección De Admision De Personal	AC	\N	\N
76	Sección De Administracion De Personal	AC	\N	\N
77	Sección De Desarrollo De Personal	AC	\N	1
78	Sección De Atencion Y Apoyo De Personal	AC	\N	2
79	Sección De Aplicacion Y Monitoreo De Personal	AC	\N	3
80	Unidad De Relaciones Publicas	AC	\N	\N
81	Coordinación Nacional De Asistencia Legal Gratuita A La Victima Y A Sus Familiares	AC	\N	9
82	Sección De Transportes	AC	\N	4
83	Sub Sección De Mensajeria	AC	\N	2
84	Sub Sección De Conserjería	AC	\N	3
85	Sub Sección De Mantenimiento	AC	\N	1
86	Unidad De Asesoría Jurídica	AC	\N	4
87	Coordinación Nacional De Derechos Humanos	AC	\N	13
88	Departamento De Carrera Institucional	AC	\N	3
90	División De Fortalecimiento Institucional	AC	\N	7
91	Depatamento De Planificacion	AC	\N	\N
92	Departamento De Planificacion	AC	\N	1
93	Departamento De Información Y Estadística	AC	\N	2
94	Sub Sección De Inventarios	AC	\N	1
95	Departamento De Asignación De Casos	AC	\N	2
96	Sección De Tesoreria	AC	\N	3
97	División De Coordinaciones Tecnico Profesionales	AC	\N	8
98	Sección De Almacen	AC	\N	2
99	Departamento De Administración De Recursos Humanos	AC	\N	1
100	Sección De Admisión De Personal	AC	\N	1
101	Sección De Administración De Personal	AC	\N	2
102	Coordinación Nacional De Defensores De Oficio	AC	\N	5
103	Coordinación De Defensores Publicos En Formación	AC	\N	6
104	Coordinación De Apoyo Técnico	AC	\N	14
105	Coordinación Nacional De Ejecución	AC	\N	12
106	Departamento De Relaciones Pùblicas	AC	\N	4
107	Sección De Análisis Y Desarrollo	AC	\N	1
108	Sección De Soporte Técnico	AC	\N	2
109	Sección de Redes y Telecomunicaciones	AC	\N	3
110	Departamento De Cobro Y Pago Administrativo	AC	\N	4
111	Departamento De Informatica	AC	\N	\N
112	Departamento De Informática	AC	\N	3
113	Departamento De Cooperación Externa	AC	\N	3
114	Sección De Relaciones Internacionales ( Agencias )	AC	\N	1
115	Sección De Relaciones Internacionales	AC	\N	\N
116	Sección De Relaciones Interinstitucionales ( Agencias )	AC	\N	\N
117	Sección De Relaciones Interinstitucionales	AC	\N	2
118	Sección De Seguridad	AC	\N	5
119	Hijo De Contabilidad	BJ	\N	\N
120	Coordinación Especializada en Casos Penales de Mayor Riesgo	AC	\N	4
121	Departamento del Sistema Informático de Apoyo a la Defensa Pública -SIADEP-	AC	\N	3
122	Coordinaciones Departamentales y/o Municipales	AC	\N	1
123	Sección de Información Pública	AC	\N	3
124	Unidad de Recepción de Documentos	AC	\N	6
125	Sección de Trabajo Social	AC	\N	1
126	Sección de Psicologia	AC	\N	2
127	Sección de Archivo Central	AC	\N	7
128	Sección de Análisis de Información	AC	\N	3
129	Sección de Antropología Forense	AC	\N	4
130	Sección de Medicina Forense	AC	\N	5
131	Coordinación Nacional de Delitos Contra el Ambiente y Patrimonio Cultural	AC	\N	15
132	Sección de Atención al Migrante	AC	\N	1
133	Sección de Atención a Personas con Discapacidad	AC	\N	2
134	Sección de Atención a Grupos de Lesbianas, Gays, Bisexuales, Transexuales e Intersex (LGBTI)	AC	\N	3
135	Departamento de Notificaciones	AC	\N	16
136	Unidad de Asignaciones	AC	\N	2
137	Unidad de Derivación y Redes de Apoyo	AC	\N	3
138	Unidad de Análisis y Seguimiento de Casos	AC	\N	4
139	Unidad Administrativa	AC	\N	5
140	Unidad de Enlace 1571	AC	\N	6
141	Departamento de Psicología	AC	\N	7
142	Departamento de Trabajo Social	AC	\N	8
143	Sección de Registro y Estadística	AC	\N	9
144	Clínica Médica de Personal	AC	\N	4
145	Clínica Psicológica de Personal	AC	\N	3
146	Unidad de Información Pública	AC	\N	5
147	Sección de Planes, Programas y Proyectos	AC	\N	1
148	Sección de Monitoreo y Evaluación	AC	\N	2
149	Sección de Organización y Métodos	AC	\N	3
150	Sección de Infraestructura	AC	\N	4
151	Sección de Recopilación y Procesamiento	AC	\N	1
152	Sección de Actualización de Información	AC	\N	2
153	Departamento de Protocolo	AC	\N	6
154	Departamento de Comunicación Social	AC	\N	7
155	Biblioteca	AC	\N	1
156	Departamento de Seguridad	AC	\N	7
157	Oficina De Inventarios	AC	\N	1
161	Coordinaciones Departamentales y/o Municipales de Asistencia Legal Gratuita a la Víctima y a sus Fam	AC	\N	1
162	Coordinación Nacional de Enfoque de Género	AC	\N	9
163	Coordinación Nacional de Enfoque Intercultural	AC	\N	10
164	Unidad de Formación y Capacitación de Defensores Públicos	AC	\N	3
165	Departamento de Estadística	AC	\N	2
166	006 - Coordinación De Defensores Públicos En Formación	AC	\N	\N
167	Coordinación Nacional De Asistencia Legal Gratuita A La Víctima Y A Sus Familiares	AC	\N	9
168	Departamento De Planificación	AC	\N	1
169	008 - División De Coordinaciones Técnico Profesionales	AC	\N	\N
170	Sección De Almacén	AC	\N	2
171	Sección de Psicología	AC	\N	2
172	Sección De Tesorería	AC	\N	3
173	Asesores Específicos	AC	\N	0
174	Coordinaciones Departamentales y/o Municipales	AC	\N	4
175	Coordinación De Defensores Públicos En Formación	AC	\N	6
176	 División De Coordinaciones Técnico Profesionales	AC	\N	\N
177	División De Coordinaciones Técnico Profesionales	AC	\N	8
178	Sección de Archivo	AC	\N	7
\.


--
-- Name: unidad_cod_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('unidad_cod_unidad_seq', 3, true);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id, nombre, password) FROM stdin;
9	admin	8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918
\.


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_seq', 10, true);


--
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vehiculo (cod_vehiculo, placa, nit, poliza, direccion, cod_municipio, cod_departamento, nombre, modelo, cod_tipo_uso, chasis, cod_tipo_tipo, cod_marca, cod_linea, vin, centimetros_cubicos, cilindros, toneladas, titulo, tarjeta_circulacion, cod_color, no_asientos, no_inventario_registro, cod_persona_asignacion, cod_pueston, no_motor, orden, activo) FROM stdin;
61	PCB123		\N		48	22		\N	7		1	9	12		\N	\N	\N			14	3		2286	5455		\N	t
60	1234567		\N		245	16		\N	6		1	7	10		\N	\N	\N			14	\N		6092	4813		\N	f
63	abc		\N		\N	\N		\N	\N		\N	\N	\N		\N	\N	\N			\N	\N		\N	\N		\N	f
\.


--
-- Name: vehiculo_cod_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vehiculo_cod_vehiculo_seq', 63, true);


--
-- Name: asignacion_vehiculo pk_cod_asignacion_vehiculo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT pk_cod_asignacion_vehiculo PRIMARY KEY (cod_asignacion_vehiculo);


--
-- Name: asignacion_vehiculo_piloto pk_cod_asignacion_vehiculo_piloto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT pk_cod_asignacion_vehiculo_piloto PRIMARY KEY (cod_asignacion_vehiculo_piloto);


--
-- Name: color pk_cod_color; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color
    ADD CONSTRAINT pk_cod_color PRIMARY KEY (cod_color);


--
-- Name: combustible_comision pk_cod_combustible_comision; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT pk_cod_combustible_comision PRIMARY KEY (cod_combustible_comision);


--
-- Name: combustible_cupon pk_cod_combustible_cupon; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT pk_cod_combustible_cupon PRIMARY KEY (cod_combustible_cupon);


--
-- Name: cupon_denominacion pk_cod_cupon_denominacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cupon_denominacion
    ADD CONSTRAINT pk_cod_cupon_denominacion PRIMARY KEY (cod_cupon_denominacion);


--
-- Name: departamento pk_cod_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);


--
-- Name: dependencia_institucion pk_cod_dependencia_institucion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT pk_cod_dependencia_institucion PRIMARY KEY (cod_dependencia_institucion);


--
-- Name: imagen pk_cod_imagen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT pk_cod_imagen PRIMARY KEY (cod_imagen);


--
-- Name: kilometraje_comision pk_cod_kilometraje_comision; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT pk_cod_kilometraje_comision PRIMARY KEY (cod_kilometraje_comision);


--
-- Name: linea pk_cod_linea; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea
    ADD CONSTRAINT pk_cod_linea PRIMARY KEY (cod_linea);


--
-- Name: marca pk_cod_marca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_cod_marca PRIMARY KEY (cod_marca);


--
-- Name: municipio pk_cod_municipio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_cod_municipio PRIMARY KEY (cod_municipio);


--
-- Name: pais pk_cod_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_cod_pais PRIMARY KEY (cod_pais);


--
-- Name: persona pk_cod_persona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_cod_persona PRIMARY KEY (cod_persona);


--
-- Name: puesto pk_cod_puesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT pk_cod_puesto PRIMARY KEY (cod_puesto);


--
-- Name: region pk_cod_region; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY region
    ADD CONSTRAINT pk_cod_region PRIMARY KEY (cod_region);


--
-- Name: sede pk_cod_sede; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_cod_sede PRIMARY KEY (cod_sede);


--
-- Name: tipo_dependencia_institucion pk_cod_tipo_dependencia_institucion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_dependencia_institucion
    ADD CONSTRAINT pk_cod_tipo_dependencia_institucion PRIMARY KEY (cod_tipo_dependencia_institucion);


--
-- Name: tipo_imagen pk_cod_tipo_imagen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_imagen
    ADD CONSTRAINT pk_cod_tipo_imagen PRIMARY KEY (cod_tipo_imagen);


--
-- Name: tipo_tipo pk_cod_tipo_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_tipo
    ADD CONSTRAINT pk_cod_tipo_tipo PRIMARY KEY (cod_tipo_tipo);


--
-- Name: tipo_uso pk_cod_tipo_uso; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_uso
    ADD CONSTRAINT pk_cod_tipo_uso PRIMARY KEY (cod_tipo_uso);


--
-- Name: unidad pk_cod_unidad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad
    ADD CONSTRAINT pk_cod_unidad PRIMARY KEY (cod_unidad);


--
-- Name: vehiculo pk_cod_vehiculo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_cod_vehiculo PRIMARY KEY (cod_vehiculo);


--
-- Name: concurso_mantenimientos pk_concurso_mantenimientos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concurso_mantenimientos
    ADD CONSTRAINT pk_concurso_mantenimientos PRIMARY KEY (cod_concurso_mantenimiento);


--
-- Name: detalle_mant_rep pk_detalle_mant_rep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT pk_detalle_mant_rep PRIMARY KEY (cod_detalle_mant_repara);


--
-- Name: mantenimiento_reparacion pk_manto_reparacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT pk_manto_reparacion PRIMARY KEY (cod_mantenimiento_reparacion);


--
-- Name: organigrama pk_organigrama; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama
    ADD CONSTRAINT pk_organigrama PRIMARY KEY (cod_organigrama);


--
-- Name: proveedores pk_proveedores; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores
    ADD CONSTRAINT pk_proveedores PRIMARY KEY (cod_proveedor);


--
-- Name: tipo_mantenimiento_reparacion pk_tipo_manto_reparacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_mantenimiento_reparacion
    ADD CONSTRAINT pk_tipo_manto_reparacion PRIMARY KEY (cod_tipo_mant_rep);


--
-- Name: rol_usuario roles_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol_usuario
    ADD CONSTRAINT roles_usuario_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: asignacion_bydate_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX asignacion_bydate_index ON asignacion_vehiculo USING btree (fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo);


--
-- Name: asignacion_vehiculo_destino_destino_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX asignacion_vehiculo_destino_destino_index ON asignacion_vehiculo USING btree (destino text_pattern_ops);


--
-- Name: persona_puesto_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX persona_puesto_index ON persona USING btree (cod_puesto);


--
-- Name: uniq_nit; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_nit ON proveedores USING btree (nit);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey FOREIGN KEY (cod_dependencia_institucion_juzgado) REFERENCES dependencia_institucion(cod_dependencia_institucion);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey FOREIGN KEY (cod_persona_asignador_vehiculo) REFERENCES persona(cod_persona);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_coordinador_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey FOREIGN KEY (cod_persona_coordinador_jefe) REFERENCES persona(cod_persona);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey FOREIGN KEY (cod_persona_pasajero) REFERENCES persona(cod_persona);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey FOREIGN KEY (cod_puesto_asignador_vehiculo) REFERENCES puesto(cod_puesto);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey FOREIGN KEY (cod_puesto_coordinador_jefe) REFERENCES puesto(cod_puesto);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_sede_lugar_salida_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey FOREIGN KEY (cod_sede_lugar_salida) REFERENCES sede(cod_sede);


--
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_unidad_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey FOREIGN KEY (cod_unidad_solicitante) REFERENCES unidad(cod_unidad);


--
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey FOREIGN KEY (cod_asignacion_vehiculo) REFERENCES asignacion_vehiculo(cod_asignacion_vehiculo);


--
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey FOREIGN KEY (cod_persona_piloto_asignado) REFERENCES persona(cod_persona);


--
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- Name: combustible_comision combustible_comision_cod_persona_encargado_transporte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey FOREIGN KEY (cod_persona_encargado_transporte) REFERENCES persona(cod_persona);


--
-- Name: combustible_comision combustible_comision_cod_persona_receptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_receptor_fkey FOREIGN KEY (cod_persona_receptor) REFERENCES persona(cod_persona);


--
-- Name: combustible_comision combustible_comision_cod_persona_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);


--
-- Name: combustible_comision combustible_comision_cod_puesto_receptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_receptor_fkey FOREIGN KEY (cod_puesto_receptor) REFERENCES puesto(cod_puesto);


--
-- Name: combustible_comision combustible_comision_cod_puesto_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);


--
-- Name: combustible_comision combustible_comision_cod_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- Name: combustible_comision combustible_comision_cod_unidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_unidad_fkey FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);


--
-- Name: combustible_cupon combustible_cupon_cod_combustible_comision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_combustible_comision_fkey FOREIGN KEY (cod_combustible_comision) REFERENCES combustible_comision(cod_combustible_comision);


--
-- Name: combustible_cupon combustible_cupon_cod_cupon_denominancion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey FOREIGN KEY (cod_cupon_denominancion) REFERENCES cupon_denominacion(cod_cupon_denominacion);


--
-- Name: departamento departamento_cod_region_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_cod_region_fkey FOREIGN KEY (cod_region) REFERENCES region(cod_region);


--
-- Name: dependencia_institucion dependencia_institucion_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- Name: dependencia_institucion dependencia_institucion_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- Name: dependencia_institucion dependencia_institucion_cod_tipo_dependencia_institucion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey FOREIGN KEY (cod_tipo_dependencia_institucion) REFERENCES tipo_dependencia_institucion(cod_tipo_dependencia_institucion);


--
-- Name: detalle_mant_rep detalle_mant_rep_mant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT detalle_mant_rep_mant_fkey FOREIGN KEY (cod_mantenimiento_reparacion) REFERENCES mantenimiento_reparacion(cod_mantenimiento_reparacion);


--
-- Name: detalle_mant_rep fk_det_mant_rep_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT fk_det_mant_rep_tipo FOREIGN KEY (cod_tipo_mant_rep) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);


--
-- Name: puesto fk_puesto_organigrama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT fk_puesto_organigrama FOREIGN KEY (cod_organigrama) REFERENCES organigrama(cod_organigrama);


--
-- Name: organigrama fk_unidad_organigrama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama
    ADD CONSTRAINT fk_unidad_organigrama FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);


--
-- Name: imagen imagen_cod_tipo_imagen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_tipo_imagen_fkey FOREIGN KEY (cod_tipo_imagen) REFERENCES tipo_imagen(cod_tipo_imagen);


--
-- Name: imagen imagen_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- Name: kilometraje_comision kilometraje_comision_cod_dependencia_institucion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey FOREIGN KEY (cod_dependencia_institucion) REFERENCES dependencia_institucion(cod_dependencia_institucion);


--
-- Name: kilometraje_comision kilometraje_comision_cod_persona_piloto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey FOREIGN KEY (cod_persona_piloto) REFERENCES persona(cod_persona);


--
-- Name: kilometraje_comision kilometraje_comision_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- Name: linea linea_cod_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea
    ADD CONSTRAINT linea_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);


--
-- Name: mantenimiento_reparacion manto_reparacion_concurso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_concurso_fkey FOREIGN KEY (cod_no_concurso) REFERENCES concurso_mantenimientos(cod_concurso_mantenimiento);


--
-- Name: mantenimiento_reparacion manto_reparacion_proveedores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_proveedores FOREIGN KEY (cod_proveedor) REFERENCES proveedores(cod_proveedor);


--
-- Name: mantenimiento_reparacion manto_reparacion_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- Name: mantenimiento_reparacion manto_reparacion_tipomanto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_tipomanto_fk FOREIGN KEY (cod_tipo_mantenimiento) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);


--
-- Name: municipio municipio_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- Name: persona persona_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- Name: persona persona_cod_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_fkey FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais);


--
-- Name: persona persona_cod_pais_pasaporte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_pasaporte_fkey FOREIGN KEY (cod_pais_pasaporte) REFERENCES pais(cod_pais);


--
-- Name: persona persona_puesto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_puesto_fkey FOREIGN KEY (cod_puesto) REFERENCES puesto(cod_puesto);


--
-- Name: puesto puesto_cod_persona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_persona_fkey FOREIGN KEY (cod_persona) REFERENCES persona(cod_persona);


--
-- Name: puesto puesto_cod_puesto_reemplazo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_puesto_reemplazo_fkey FOREIGN KEY (cod_puesto_reemplazo) REFERENCES puesto(cod_puesto);


--
-- Name: puesto puesto_cod_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- Name: sede sede_cod_coordindor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_coordindor_fkey FOREIGN KEY (cod_coordindor) REFERENCES persona(cod_persona);


--
-- Name: sede sede_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- Name: vehiculo vehiculo_cod_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_color_fkey FOREIGN KEY (cod_color) REFERENCES color(cod_color);


--
-- Name: vehiculo vehiculo_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- Name: vehiculo vehiculo_cod_linea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES linea(cod_linea);


--
-- Name: vehiculo vehiculo_cod_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);


--
-- Name: vehiculo vehiculo_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- Name: vehiculo vehiculo_cod_persona_asignacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_persona_asignacion_fkey FOREIGN KEY (cod_persona_asignacion) REFERENCES persona(cod_persona);


--
-- Name: vehiculo vehiculo_cod_pueston_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_pueston_fkey FOREIGN KEY (cod_pueston) REFERENCES puesto(cod_puesto);


--
-- Name: vehiculo vehiculo_cod_tipo_tipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_tipo_fkey FOREIGN KEY (cod_tipo_tipo) REFERENCES tipo_tipo(cod_tipo_tipo);


--
-- Name: vehiculo vehiculo_cod_tipo_uso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_uso_fkey FOREIGN KEY (cod_tipo_uso) REFERENCES tipo_uso(cod_tipo_uso);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

