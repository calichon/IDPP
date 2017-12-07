--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-23 10:16:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2604 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16385)
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
-- TOC entry 186 (class 1259 OID 16391)
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
-- TOC entry 2605 (class 0 OID 0)
-- Dependencies: 186
-- Name: asignacion_vehiculo_cod_asignacion_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNED BY asignacion_vehiculo.cod_asignacion_vehiculo;


--
-- TOC entry 187 (class 1259 OID 16393)
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
-- TOC entry 188 (class 1259 OID 16396)
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
-- TOC entry 2606 (class 0 OID 0)
-- Dependencies: 188
-- Name: asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNED BY asignacion_vehiculo_piloto.cod_asignacion_vehiculo_piloto;


--
-- TOC entry 189 (class 1259 OID 16398)
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
-- TOC entry 190 (class 1259 OID 16401)
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
-- TOC entry 2607 (class 0 OID 0)
-- Dependencies: 190
-- Name: color_cod_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE color_cod_color_seq OWNED BY color.cod_color;


--
-- TOC entry 191 (class 1259 OID 16403)
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
-- TOC entry 192 (class 1259 OID 16409)
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
-- TOC entry 2608 (class 0 OID 0)
-- Dependencies: 192
-- Name: combustible_comision_cod_combustible_comision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE combustible_comision_cod_combustible_comision_seq OWNED BY combustible_comision.cod_combustible_comision;


--
-- TOC entry 193 (class 1259 OID 16411)
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
-- TOC entry 194 (class 1259 OID 16417)
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
-- TOC entry 2609 (class 0 OID 0)
-- Dependencies: 194
-- Name: combustible_cupon_cod_combustible_cupon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE combustible_cupon_cod_combustible_cupon_seq OWNED BY combustible_cupon.cod_combustible_cupon;


--
-- TOC entry 195 (class 1259 OID 16419)
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
-- TOC entry 196 (class 1259 OID 16422)
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
-- TOC entry 2610 (class 0 OID 0)
-- Dependencies: 196
-- Name: concurso_mantenimientos_cod_concurso_mantenimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq OWNED BY concurso_mantenimientos.cod_concurso_mantenimiento;


--
-- TOC entry 197 (class 1259 OID 16424)
-- Name: cupon_denominacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cupon_denominacion (
    cod_cupon_denominacion integer NOT NULL,
    descripcion character varying(100),
    denominacion numeric
);


ALTER TABLE cupon_denominacion OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16430)
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
-- TOC entry 2611 (class 0 OID 0)
-- Dependencies: 198
-- Name: cupon_denominacion_cod_cupon_denominacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq OWNED BY cupon_denominacion.cod_cupon_denominacion;


--
-- TOC entry 199 (class 1259 OID 16432)
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
-- TOC entry 200 (class 1259 OID 16435)
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
-- TOC entry 2612 (class 0 OID 0)
-- Dependencies: 200
-- Name: departamento_cod_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE departamento_cod_departamento_seq OWNED BY departamento.cod_departamento;


--
-- TOC entry 201 (class 1259 OID 16437)
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
-- TOC entry 202 (class 1259 OID 16440)
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
-- TOC entry 2613 (class 0 OID 0)
-- Dependencies: 202
-- Name: dependencia_institucion_cod_dependencia_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq OWNED BY dependencia_institucion.cod_dependencia_institucion;


--
-- TOC entry 203 (class 1259 OID 16442)
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
-- TOC entry 204 (class 1259 OID 16448)
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
-- TOC entry 2614 (class 0 OID 0)
-- Dependencies: 204
-- Name: detalle_mant_rep_cod_detalle_mant_repara_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq OWNED BY detalle_mant_rep.cod_detalle_mant_repara;


--
-- TOC entry 205 (class 1259 OID 16450)
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
-- TOC entry 206 (class 1259 OID 16456)
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
-- TOC entry 2615 (class 0 OID 0)
-- Dependencies: 206
-- Name: imagen_cod_imagen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE imagen_cod_imagen_seq OWNED BY imagen.cod_imagen;


--
-- TOC entry 207 (class 1259 OID 16458)
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
-- TOC entry 208 (class 1259 OID 16464)
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
-- TOC entry 2616 (class 0 OID 0)
-- Dependencies: 208
-- Name: kilometraje_comision_cod_kilometraje_comision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq OWNED BY kilometraje_comision.cod_kilometraje_comision;


--
-- TOC entry 209 (class 1259 OID 16466)
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
-- TOC entry 210 (class 1259 OID 16469)
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
-- TOC entry 2617 (class 0 OID 0)
-- Dependencies: 210
-- Name: linea_cod_linea_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linea_cod_linea_seq OWNED BY linea.cod_linea;


--
-- TOC entry 211 (class 1259 OID 16471)
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
-- TOC entry 212 (class 1259 OID 16474)
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
-- TOC entry 2618 (class 0 OID 0)
-- Dependencies: 212
-- Name: mantenimiento_reparacion_cod_mantenimiento_reparacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq OWNED BY mantenimiento_reparacion.cod_mantenimiento_reparacion;


--
-- TOC entry 213 (class 1259 OID 16476)
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
-- TOC entry 214 (class 1259 OID 16479)
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
-- TOC entry 2619 (class 0 OID 0)
-- Dependencies: 214
-- Name: marca_cod_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE marca_cod_marca_seq OWNED BY marca.cod_marca;


--
-- TOC entry 215 (class 1259 OID 16481)
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
-- TOC entry 216 (class 1259 OID 16484)
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
-- TOC entry 2620 (class 0 OID 0)
-- Dependencies: 216
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_cod_municipio_seq OWNED BY municipio.cod_municipio;


--
-- TOC entry 217 (class 1259 OID 16486)
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
-- TOC entry 218 (class 1259 OID 16489)
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
-- TOC entry 2621 (class 0 OID 0)
-- Dependencies: 218
-- Name: organigrama_cod_organigrama_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE organigrama_cod_organigrama_seq OWNED BY organigrama.cod_organigrama;


--
-- TOC entry 219 (class 1259 OID 16491)
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
-- TOC entry 220 (class 1259 OID 16494)
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
-- TOC entry 2622 (class 0 OID 0)
-- Dependencies: 220
-- Name: pais_cod_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pais_cod_pais_seq OWNED BY pais.cod_pais;


--
-- TOC entry 221 (class 1259 OID 16496)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona (
    cod_persona integer NOT NULL,
    nombre_1 character varying(50),
    nombre_2 character varying(50) DEFAULT ''::character varying,
    apellido_1 character varying(50) DEFAULT ''::character varying,
    apellido_2 character varying(50) DEFAULT ''::character varying,
    apellido_casada character varying(50) DEFAULT ''::character varying,
    nit character varying(15),
    estado_civil character varying(50),
    cod_estatus character varying(2),
    cod_reloj_persona integer,
    cod_puesto bigint
);


ALTER TABLE persona OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16503)
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
-- TOC entry 2623 (class 0 OID 0)
-- Dependencies: 222
-- Name: persona_cod_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE persona_cod_persona_seq OWNED BY persona.cod_persona;


--
-- TOC entry 223 (class 1259 OID 16505)
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
-- TOC entry 224 (class 1259 OID 16511)
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
-- TOC entry 2624 (class 0 OID 0)
-- Dependencies: 224
-- Name: proveedores_cod_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proveedores_cod_proveedor_seq OWNED BY proveedores.cod_proveedor;


--
-- TOC entry 225 (class 1259 OID 16513)
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
-- TOC entry 226 (class 1259 OID 16519)
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
-- TOC entry 2625 (class 0 OID 0)
-- Dependencies: 226
-- Name: puesto_cod_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE puesto_cod_puesto_seq OWNED BY puesto.cod_puesto;


--
-- TOC entry 227 (class 1259 OID 16521)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE region (
    cod_region integer NOT NULL,
    descripcion character varying(60),
    cod_estatus character varying(2)
);


ALTER TABLE region OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16524)
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
-- TOC entry 2626 (class 0 OID 0)
-- Dependencies: 228
-- Name: region_cod_region_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE region_cod_region_seq OWNED BY region.cod_region;


--
-- TOC entry 247 (class 1259 OID 17587)
-- Name: roles_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;


ALTER TABLE roles_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 17589)
-- Name: rol_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rol_usuario (
    id integer DEFAULT nextval('roles_usuario_id_seq'::regclass) NOT NULL,
    rol character varying(255),
    nombre character varying(255)
);


ALTER TABLE rol_usuario OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16526)
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
-- TOC entry 230 (class 1259 OID 16532)
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
-- TOC entry 2627 (class 0 OID 0)
-- Dependencies: 230
-- Name: sede_cod_sede_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sede_cod_sede_seq OWNED BY sede.cod_sede;


--
-- TOC entry 231 (class 1259 OID 16534)
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
-- TOC entry 232 (class 1259 OID 16537)
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
-- TOC entry 2628 (class 0 OID 0)
-- Dependencies: 232
-- Name: tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNED BY tipo_dependencia_institucion.cod_tipo_dependencia_institucion;


--
-- TOC entry 233 (class 1259 OID 16539)
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
-- TOC entry 234 (class 1259 OID 16542)
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
-- TOC entry 2629 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipo_imagen_cod_tipo_imagen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_imagen_cod_tipo_imagen_seq OWNED BY tipo_imagen.cod_tipo_imagen;


--
-- TOC entry 235 (class 1259 OID 16544)
-- Name: tipo_mantenimiento_reparacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_mantenimiento_reparacion (
    cod_tipo_mant_rep integer NOT NULL,
    descripcion character varying(350),
    mant_repa smallint
);


ALTER TABLE tipo_mantenimiento_reparacion OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16547)
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
-- TOC entry 2630 (class 0 OID 0)
-- Dependencies: 236
-- Name: tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq OWNED BY tipo_mantenimiento_reparacion.cod_tipo_mant_rep;


--
-- TOC entry 237 (class 1259 OID 16549)
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
-- TOC entry 238 (class 1259 OID 16552)
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
-- TOC entry 2631 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_tipo_cod_tipo_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_tipo_cod_tipo_tipo_seq OWNED BY tipo_tipo.cod_tipo_tipo;


--
-- TOC entry 239 (class 1259 OID 16554)
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
-- TOC entry 240 (class 1259 OID 16557)
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
-- TOC entry 2632 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_uso_cod_tipo_uso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_uso_cod_tipo_uso_seq OWNED BY tipo_uso.cod_tipo_uso;


--
-- TOC entry 241 (class 1259 OID 16559)
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
-- TOC entry 242 (class 1259 OID 16562)
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
-- TOC entry 2633 (class 0 OID 0)
-- Dependencies: 242
-- Name: unidad_cod_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE unidad_cod_unidad_seq OWNED BY unidad.cod_unidad;


--
-- TOC entry 245 (class 1259 OID 17579)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;


ALTER TABLE usuario_id_seq OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17581)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id integer DEFAULT nextval('usuario_id_seq'::regclass) NOT NULL,
    nombre character varying(255),
    password character varying(64)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16564)
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
-- TOC entry 244 (class 1259 OID 16570)
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
-- TOC entry 2634 (class 0 OID 0)
-- Dependencies: 244
-- Name: vehiculo_cod_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vehiculo_cod_vehiculo_seq OWNED BY vehiculo.cod_vehiculo;


--
-- TOC entry 2205 (class 2604 OID 16572)
-- Name: asignacion_vehiculo cod_asignacion_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo SET DEFAULT nextval('asignacion_vehiculo_cod_asignacion_vehiculo_seq'::regclass);


--
-- TOC entry 2206 (class 2604 OID 16573)
-- Name: asignacion_vehiculo_piloto cod_asignacion_vehiculo_piloto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto SET DEFAULT nextval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq'::regclass);


--
-- TOC entry 2207 (class 2604 OID 16574)
-- Name: color cod_color; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color ALTER COLUMN cod_color SET DEFAULT nextval('color_cod_color_seq'::regclass);


--
-- TOC entry 2208 (class 2604 OID 16575)
-- Name: combustible_comision cod_combustible_comision; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision ALTER COLUMN cod_combustible_comision SET DEFAULT nextval('combustible_comision_cod_combustible_comision_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 16576)
-- Name: combustible_cupon cod_combustible_cupon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon ALTER COLUMN cod_combustible_cupon SET DEFAULT nextval('combustible_cupon_cod_combustible_cupon_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 16577)
-- Name: concurso_mantenimientos cod_concurso_mantenimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento SET DEFAULT nextval('concurso_mantenimientos_cod_concurso_mantenimiento_seq'::regclass);


--
-- TOC entry 2211 (class 2604 OID 16578)
-- Name: cupon_denominacion cod_cupon_denominacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cupon_denominacion ALTER COLUMN cod_cupon_denominacion SET DEFAULT nextval('cupon_denominacion_cod_cupon_denominacion_seq'::regclass);


--
-- TOC entry 2212 (class 2604 OID 16579)
-- Name: departamento cod_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN cod_departamento SET DEFAULT nextval('departamento_cod_departamento_seq'::regclass);


--
-- TOC entry 2213 (class 2604 OID 16580)
-- Name: dependencia_institucion cod_dependencia_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion ALTER COLUMN cod_dependencia_institucion SET DEFAULT nextval('dependencia_institucion_cod_dependencia_institucion_seq'::regclass);


--
-- TOC entry 2214 (class 2604 OID 16581)
-- Name: detalle_mant_rep cod_detalle_mant_repara; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara SET DEFAULT nextval('detalle_mant_rep_cod_detalle_mant_repara_seq'::regclass);


--
-- TOC entry 2215 (class 2604 OID 16582)
-- Name: imagen cod_imagen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen ALTER COLUMN cod_imagen SET DEFAULT nextval('imagen_cod_imagen_seq'::regclass);


--
-- TOC entry 2216 (class 2604 OID 16583)
-- Name: kilometraje_comision cod_kilometraje_comision; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision ALTER COLUMN cod_kilometraje_comision SET DEFAULT nextval('kilometraje_comision_cod_kilometraje_comision_seq'::regclass);


--
-- TOC entry 2217 (class 2604 OID 16584)
-- Name: linea cod_linea; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea ALTER COLUMN cod_linea SET DEFAULT nextval('linea_cod_linea_seq'::regclass);


--
-- TOC entry 2218 (class 2604 OID 16585)
-- Name: mantenimiento_reparacion cod_mantenimiento_reparacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion SET DEFAULT nextval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq'::regclass);


--
-- TOC entry 2219 (class 2604 OID 16586)
-- Name: marca cod_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY marca ALTER COLUMN cod_marca SET DEFAULT nextval('marca_cod_marca_seq'::regclass);


--
-- TOC entry 2220 (class 2604 OID 16587)
-- Name: municipio cod_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('municipio_cod_municipio_seq'::regclass);


--
-- TOC entry 2221 (class 2604 OID 16588)
-- Name: organigrama cod_organigrama; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama ALTER COLUMN cod_organigrama SET DEFAULT nextval('organigrama_cod_organigrama_seq'::regclass);


--
-- TOC entry 2222 (class 2604 OID 16589)
-- Name: pais cod_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais ALTER COLUMN cod_pais SET DEFAULT nextval('pais_cod_pais_seq'::regclass);


--
-- TOC entry 2227 (class 2604 OID 16590)
-- Name: persona cod_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona ALTER COLUMN cod_persona SET DEFAULT nextval('persona_cod_persona_seq'::regclass);


--
-- TOC entry 2228 (class 2604 OID 16591)
-- Name: proveedores cod_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores ALTER COLUMN cod_proveedor SET DEFAULT nextval('proveedores_cod_proveedor_seq'::regclass);


--
-- TOC entry 2229 (class 2604 OID 16592)
-- Name: puesto cod_puesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto ALTER COLUMN cod_puesto SET DEFAULT nextval('puesto_cod_puesto_seq'::regclass);


--
-- TOC entry 2230 (class 2604 OID 16593)
-- Name: region cod_region; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY region ALTER COLUMN cod_region SET DEFAULT nextval('region_cod_region_seq'::regclass);


--
-- TOC entry 2231 (class 2604 OID 16594)
-- Name: sede cod_sede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede ALTER COLUMN cod_sede SET DEFAULT nextval('sede_cod_sede_seq'::regclass);


--
-- TOC entry 2232 (class 2604 OID 16595)
-- Name: tipo_dependencia_institucion cod_tipo_dependencia_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion SET DEFAULT nextval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq'::regclass);


--
-- TOC entry 2233 (class 2604 OID 16596)
-- Name: tipo_imagen cod_tipo_imagen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_imagen ALTER COLUMN cod_tipo_imagen SET DEFAULT nextval('tipo_imagen_cod_tipo_imagen_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 16597)
-- Name: tipo_mantenimiento_reparacion cod_tipo_mant_rep; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep SET DEFAULT nextval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq'::regclass);


--
-- TOC entry 2235 (class 2604 OID 16598)
-- Name: tipo_tipo cod_tipo_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_tipo ALTER COLUMN cod_tipo_tipo SET DEFAULT nextval('tipo_tipo_cod_tipo_tipo_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 16599)
-- Name: tipo_uso cod_tipo_uso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_uso ALTER COLUMN cod_tipo_uso SET DEFAULT nextval('tipo_uso_cod_tipo_uso_seq'::regclass);


--
-- TOC entry 2237 (class 2604 OID 16600)
-- Name: unidad cod_unidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad ALTER COLUMN cod_unidad SET DEFAULT nextval('unidad_cod_unidad_seq'::regclass);


--
-- TOC entry 2238 (class 2604 OID 16601)
-- Name: vehiculo cod_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo ALTER COLUMN cod_vehiculo SET DEFAULT nextval('vehiculo_cod_vehiculo_seq'::regclass);


--
-- TOC entry 2534 (class 0 OID 16385)
-- Dependencies: 185
-- Data for Name: asignacion_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignacion_vehiculo (cod_asignacion_vehiculo, fecha_asignacion, no_solicitud, year_solicitud, cod_unidad_solicitante, cod_persona_pasajero, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, dias_asignacion, num_personas_viaje, cod_sede_lugar_salida, destino, diligencia, causa_1, causa_2, causa_3, cod_dependencia_institucion_juzgado, utiliza_piloto, utiliza_vehiculo, carga_voluminosa, observaciones, cod_persona_solicitante, cod_puesto_solicitante, cod_persona_coordinador_jefe, cod_puesto_coordinador_jefe, cod_persona_asignador_vehiculo, cod_puesto_asignador_vehiculo) FROM stdin;
1	2017-11-20 00:00:00	\N	\N	40	6898	2017-11-21 09:15:00	2017-11-21 12:00:00	1	1	35	zona 10	reunion SVET				\N	t	t	f		6898	5605	6898	5605	1291	5520
\.


--
-- TOC entry 2536 (class 0 OID 16393)
-- Dependencies: 187
-- Data for Name: asignacion_vehiculo_piloto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignacion_vehiculo_piloto (cod_asignacion_vehiculo_piloto, cod_asignacion_vehiculo, cod_vehiculo, cod_persona_piloto_asignado, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, fecha_hora_asignacion, estatus_asignacion) FROM stdin;
1	1	\N	\N	2017-11-21 09:15:00	2017-11-21 12:00:00	2017-11-20 00:00:00	R
2	1	62	1569	2017-11-21 09:15:00	2017-11-21 12:00:00	2017-11-20 00:00:00	A
\.


--
-- TOC entry 2538 (class 0 OID 16398)
-- Dependencies: 189
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY color (cod_color, nombre_color, orden, activo) FROM stdin;
4	Plateado	\N	t
5	Gris Mica	\N	t
7	Blanco y Dorado	\N	t
8	Plateado y Dorado	\N	t
9	Blanco	\N	t
10	Azul Oscuro	\N	t
11	Plateado y Negro	\N	t
6	Blanco y negro	\N	t
12	Plateado Negro con  Franjas Multicolor	\N	t
13	Gris Oscuro Mica Metalico	\N	t
14	Gris	\N	t
15	Dorado Cosecha Metalico	\N	t
16	Blanco Corinto y Amarrillo	\N	t
17	Dorado Marte y negro	\N	t
18	Blanco  y Negro 	\N	t
19	Beige Metalico y negro	\N	t
20	Verde y Negro	\N	t
21	Gris titanium	\N	t
22	Gris M	\N	t
23	Gris Oscuro Mica	\N	t
24	Corinto y Negro	\N	t
25	Rojo y Negro	\N	t
26	Negro Azulado	\N	t
27	Blanco Alpino	\N	t
29	Negro	\N	t
30	Gris y Negro	\N	t
31	Beige Metalico	\N	t
32	Plateado M Plateado	\N	t
33	Plata Glaciar	\N	t
34	Verde	\N	t
35	Azul Metalico 	\N	t
36	Gris Oscuro Mica Metalica	\N	t
37	Rojo Mica M	\N	t
38	Rojo y  Dorado	\N	t
39	Platinado	\N	t
40	Azul Oscuro Mica	\N	t
41	Olivo  Metalico	\N	t
42	Verde con Dorado	\N	t
43	Plata	\N	t
28	Azul Negro Cromo y Calcomania Multicolor	\N	t
\.


--
-- TOC entry 2540 (class 0 OID 16403)
-- Dependencies: 191
-- Data for Name: combustible_comision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY combustible_comision (cod_combustible_comision, fecha_entrega, cod_persona_solicitante, cod_puesto_solicitante, cod_unidad, cod_sede, cod_vehiculo, placa, kilometraje_actual, comision_a, observaciones, importe_total_letras, cantidad_estimada_carga, cod_persona_receptor, cod_puesto_receptor, cod_persona_encargado_transporte) FROM stdin;
2	2017-11-23 04:00:00	2167	405	122	14	64	\N	331704		n	\N	0	2167	405	1291
\.


--
-- TOC entry 2542 (class 0 OID 16411)
-- Dependencies: 193
-- Data for Name: combustible_cupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY combustible_cupon (cod_combustible_cupon, cod_combustible_comision, cod_cupon_denominancion, cantidad_cupones, numero_cupon_inicial, numero_cupon_final, suma_total) FROM stdin;
2	2	1	1	1556	1557	50
3	2	2	2	61	62	200
5	2	2	1	68	68	100
\.


--
-- TOC entry 2544 (class 0 OID 16419)
-- Dependencies: 195
-- Data for Name: concurso_mantenimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY concurso_mantenimientos (cod_concurso_mantenimiento, no_concurso, fecha_concurso, placa_vehiculo, realizado, cod_empleado_autoriza, cod_cargo_empleado_autoriza, activo) FROM stdin;
\.


--
-- TOC entry 2546 (class 0 OID 16424)
-- Dependencies: 197
-- Data for Name: cupon_denominacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cupon_denominacion (cod_cupon_denominacion, descripcion, denominacion) FROM stdin;
2	Cúpon de Q.100.00	100
1	Cúpon de Q.50.00	50
\.


--
-- TOC entry 2548 (class 0 OID 16432)
-- Dependencies: 199
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
-- TOC entry 2550 (class 0 OID 16437)
-- Dependencies: 201
-- Data for Name: dependencia_institucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dependencia_institucion (cod_dependencia_institucion, cod_institucion, cod_estatus, nombre, direccion, cod_municipio, cod_departamento, telefono_1, cod_tipo_organo, codigo_causa, cod_tipo_dependencia_institucion, fecha_sistema) FROM stdin;
\.


--
-- TOC entry 2552 (class 0 OID 16442)
-- Dependencies: 203
-- Data for Name: detalle_mant_rep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY detalle_mant_rep (cod_mantenimiento_reparacion, cod_detalle_mant_repara, cod_tipo_mant_rep, costo_reparacion_detalle, descripcion, tiempo_garantia) FROM stdin;
\.


--
-- TOC entry 2554 (class 0 OID 16450)
-- Dependencies: 205
-- Data for Name: imagen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY imagen (cod_imagen, cod_vehiculo, cod_tipo_imagen, path_imagen, imagenb, nombre_imagen, orden, activo) FROM stdin;
\.


--
-- TOC entry 2556 (class 0 OID 16458)
-- Dependencies: 207
-- Data for Name: kilometraje_comision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY kilometraje_comision (cod_kilometraje_comision, cod_persona_piloto, cod_vehiculo, placa, kilometraje_inicial, fecha_hora_salida, kilometraje_final, fecha_hora_entrada, comision_realizada, causa1, causa2, causa3, cod_dependencia_institucion, diligencias_realizadas) FROM stdin;
\.


--
-- TOC entry 2558 (class 0 OID 16466)
-- Dependencies: 209
-- Data for Name: linea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linea (cod_linea, cod_marca, nombre_linea, orden, activo) FROM stdin;
4	3	Urvan E26	\N	t
5	5	Jimny JX	\N	t
7	6	B2500	\N	t
9	6	BT-50DBLCab 4X4 Turbo	\N	t
10	5	Jimny 4x4	\N	t
12	6	B2500 4x4 DC	\N	f
14	6	323LX SDN mecanico	\N	t
16	6	B2900DC 4x4 Dob Cabina	\N	t
17	4	Land Cruiser	\N	t
18	6	B2900 4x4	\N	t
19	7	CGL 125	\N	t
20	4	4 Runner	\N	t
21	4	Yaris	\N	t
22	3	Sentra	\N	t
23	9	Sierra	\N	t
24	3	Platina H10	\N	t
26	3	Platina	\N	t
27	3	Toledo 2.0 Magnu	\N	t
28	6	E2200	\N	t
30	9	Suburban	\N	t
31	5	GN 125H	\N	t
32	5	Scrambler	\N	t
6	4	Hi-lux	\N	t
35	8	WU300L-HBMMS3	\N	t
13	5	Jimny JX 4x4 A/C1.3  MT	\N	t
29	4	Hi Ace	\N	t
11	6	B2900 4x4 DOB CABINA	\N	t
34	5	SamuraI 4x4	\N	t
15	6	BT-50 DBL CAB 4x4 	\N	t
36	3	Jimny JX B 4x4	\N	t
8	3	Frontier D22 4x4 D/C	\N	t
37	3	NP300 4x4	\N	t
\.


--
-- TOC entry 2560 (class 0 OID 16471)
-- Dependencies: 211
-- Data for Name: mantenimiento_reparacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mantenimiento_reparacion (cod_mantenimiento_reparacion, cod_control_mant_rep, mant_rep, cod_no_concurso, cod_proveedor, no_factura, serie_factura, fecha_emision_factura, fecha_recepcion_factura, fecha_recepcion_vehiculo, fecha_retorno_vehiculo, dias_mantenimiento, cod_tipo_mantenimiento, total_mantenimiento_repara_q, cod_vehiculo, placa, utilizo_seguro, registro_pago, cod_sede, cod_empleado_recepcion, cod_cargo_empleado_recepcion, cod_empleado_recepcion_fact, cod_cargo_empleado_recepcion_fact, cod_empleado_digita, activo, fecha_envio_vehiculo) FROM stdin;
\.


--
-- TOC entry 2562 (class 0 OID 16476)
-- Dependencies: 213
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY marca (cod_marca, nombre_marca, orden, activo) FROM stdin;
3	Nissan	\N	t
4	Toyota	\N	t
5	Suzuki	\N	t
6	Mazda	\N	t
7	Honda	\N	t
8	Hino	\N	t
9	GMC	\N	t
10	Seat	\N	t
\.


--
-- TOC entry 2564 (class 0 OID 16481)
-- Dependencies: 215
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
-- TOC entry 2566 (class 0 OID 16486)
-- Dependencies: 217
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
-- TOC entry 2568 (class 0 OID 16491)
-- Dependencies: 219
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pais (cod_pais, nombre_pais, gentilicio, codigo_telefonico, codigo_iso, cod_estatus) FROM stdin;
1	Guatemala	Guatemalteco	502	GT	AC
\.


--
-- TOC entry 2570 (class 0 OID 16496)
-- Dependencies: 221
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona (cod_persona, nombre_1, nombre_2, apellido_1, apellido_2, apellido_casada, nit, estado_civil, cod_estatus, cod_reloj_persona, cod_puesto) FROM stdin;
648	Maria	Evelia	Avalos	Torres	Orozco	19956207	\N	AC	\N	359
1197	Maria	Del Carmen	Baldizon	\N	\N	1285181	\N	AC	\N	516
313	Olivia	Ana Lucia	Baldizon	Reyes	Amado	31444695	\N	AC	341	495
1628	Morel	Roel	De Leon	Diaz	\N	572502k        	\N	AC	\N	402
2305	Erick	Leonel	Flores	Palacios	\N	4745582	\N	AC	\N	136
625	Dora	Petronila	Garcia	Ajucum	Casia	8520410	\N	AC	\N	398
2306	Berta	Angélica	García	Chavez	Morales	17575923	\N	AC	\N	348
2308	Nery	Antonio	Garcia	Lopez	\N	1620053	\N	AC	\N	145
793	Astrid	Kenelma	Garcia	Y Vidaurre	Mendizabal	17649218	\N	AC	\N	142
2315	Nelson	Orlando	Lopez	Garcia	\N	14814269	\N	AC	\N	385
1006	Brenda	Margarita	Martinez	Cerna	Coc	4507274	\N	AC	\N	349
1327	Ricardo	Efrain	Mogollon	Mendoza	\N	7512716	\N	AC	\N	360
1986	Julio	Pablo	Morales	Giron	\N	7660200	\N	AC	\N	137
1067	Sergio	Eduardo	Paniagua	Meza	\N	2013177	\N	AC	\N	397
76	Otto	Haroldo	Ramirez	Vasquez	\N	15589846	\N	AC	\N	392
645	Federico	Augusto	Ruata	Cardona	\N	17638089	\N	AC	\N	386
1007	Mario	Humberto	Smith	Angel	\N	55867	\N	AC	\N	395
2340	Alvaro	Enrique	Sontay	Ical	\N	20084447	\N	AC	\N	350
1308	Rosa	Maria	Taracena	Pimentel	Calderon	17867541	\N	AC	\N	355
100	Sylvia	Gisselle	Torres	Monroy	\N	2433233k       	\N	AC	\N	483
1184	Beatris	Laneli	Tuna	Gonzalez	\N	18230555	\N	AC	\N	515
1529	Jeannette	\N	Valverth	Casasola	Rivera	8383642	\N	AC	4025	150
2354	Luis	Aroldo	Gonzalez	\N	\N	7801548	\N	AC	47	474
2355	Javier	Alejandro	Gramajo	Molina	\N	6282032	\N	AC	422	475
1560	Ana	Estela	Reyes	Gomez	Alay	28121775	\N	AC	402	466
578	Maria	Cristina	Maaz	Buechsel	de Winter	20363095	\N	AC	\N	845
2088	Humberto	Rafael	Hidalgo	Caballeros	\N	12395609	\N	AC	\N	846
1912	Miguel	Angel	Perez	\N	\N	3405036	\N	AC	421	850
2320	Carlos	Vinicio	Mejia	Prado	\N	P              	\N	AC	\N	480
2057	Ruddy	Orlando	Arreola	Higueros	\N	20197160	\N	AC	\N	406
659	Miguel	Enrique	Felipe	\N	\N	39482081	\N	AC	370	1543
1757	Ersa	Ludmilla	Lopez	Pineda	Garcia	5737389	\N	AC	\N	1579
1825	Luis	Enrique	Quiñonez	Zeta	\N	16972287	\N	AC	\N	484
2238	Reyna	Magaly	Guerra	Najera	Castro	16283805	\N	AC	\N	1590
2167	Maximiliano	\N	Antonio	Francisco	\N	26525356	\N	AC	\N	405
823	Alberto	Benito	Uz	Pu	\N	20100779	\N	AC	4020	1600
2017	Astrid	Janet	Riley	Ramirez	Pereira	20191529	\N	AC	\N	1694
384	Maria	Magdalena	Cadenas	Fuentes	Loarca	5764831	\N	AC	\N	403
581	Gustavo	Adolfo	Morales	Sandoval	\N	1661213	\N	AC	\N	399
2328	Néstor	Oswaldo	Recinos	Oliva	\N	32189559	\N	AC	2	1797
3248	Ruth	Angelica	Soto	Muñoz	Lam	7308469	\N	AC	7	508
1627	Dina	Siomara	Donis	Aguirre	\N	27494055	\N	AC	\N	2016
2478	Fevy	Magdely	Gramajo	Morales	\N	24866350	\N	AC	\N	2017
2397	Monica	Sabrina	Reyes	Morales	\N	51924153	\N	AC	\N	2020
2370	Juan	Fernando	Schaad	Perez	\N	1423307K       	\N	AC	7	2185
652	Miguel	Angel	Guzman	Barrios	\N	5959012	\N	AC	\N	885
275	Ines	Yasmira	Lopez	Rodriguez	\N	31045855	\N	AC	\N	2636
1284	Maria	Angela	Chocoj	Camey	Camey	40148491	\N	AC	\N	2640
328	Miguel	\N	Sulugui	De Leon	\N	8340382	\N	AC	\N	2641
665	Ligia	Ernestina	Urquizu	Castellanos	Gomez	16961889	\N	AC	352	502
21	Miriam	Lorena	Cacacho	Diaz	Asencio	17266750	\N	AC	339	896
1130	Claudia	Amaid	Guzmán	Campos	Hurtarte	54917204	\N	AC	404	3190
5428	Jennifer	Paola	Garcia	Barillas	\N	80221882	\N	AC	387	3225
278	Agusto	Reyes	Vicente	Vicente	\N	16061462	\N	AC	\N	362
881	Seydy	Johanna	Recinos	Florian	Peñate	30007623	\N	AC	\N	1052
1784	Jose	Miguel	Cifuentes	Cifuentes	\N	42144469	\N	AC	\N	400
850	Jorge	Luis	Valladares	Monterroso	\N	6017320	\N	AC	\N	388
131	Edwin	Arnoldo	Aguilar	Monterroso	\N	31867278	\N	AC	359	3494
1953	Santiago	\N	Amador	Carranza	\N	22447261	\N	AC	1040	3519
963	Mayra	Yulisa	Arias	Sandoval	\N	38883082	\N	AC	5160	3557
556	Carlos	Eberto	Avalos	Lopez	\N	8220824	\N	AC	\N	3584
1012	Alejandra	Judith	Barrientos	Rodriguez	\N	20154712	\N	AC	377	3479
162	Khrisstian	Lucia	Cabrera	Aldana	\N	38872161	\N	AC	5124	3558
423	Doris	Lizzeth	Camas	Lopez	\N	45905568	\N	AC	\N	3590
544	José	Ignacio Eduardo	Camey	Barrios	\N	1818314k       	\N	AC	4002	3600
1337	Victor	René	Castro	Fuentes	\N	20182090	\N	AC	\N	3605
626	Debora	Raquel	Contreras	Mendez	Diaz	18284205	\N	AC	\N	3531
323	Rosa	Emelida	Cruz	\N	\N	27050602	\N	AC	5144	3541
725	Walter	Enrique	Cuc	Tipol	\N	26911396	\N	AC	\N	3512
841	Pedro	Jacinto	De Paz	Perez	\N	8539804	\N	AC	\N	3604
1144	Marvin	Rene	Donis	Orellana	\N	18238696	\N	AC	5181	3562
120	Elmer	Javier	España	Juarez	\N	7096070	\N	AC	401	3442
465	Julio	Alejandro	Marquez	Aguilar	\N	38767600	\N	AC	5175	3556
191	Gonzalo	Aroldo	Franco	Ramirez	\N	1730668k       	\N	AC	4000	3601
2050	Rudy	Fernando	Garcia	Hernandez	\N	17898331	\N	AC	86	3486
213	Elida	Maria	Giron	Lucero	\N	18054862	\N	AC	5154	3563
1834	Jovia	Bernardina	Gonzalez	Tul	Pop	12660329	\N	AC	\N	3513
929	Fritza	Amalia	Grajeda	Javalois	\N	28038428	\N	AC	4006	3602
774	Jose	Humberto	Gutierrez	Perez	\N	5925185	\N	AC	375	3506
622	Mynor	Enrique	Jordan	Villeda	\N	26411733	\N	AC	51	3536
2140	Telma	Yolanda	Juárez	Carrillo	\N	12739170	\N	AC	\N	3487
84	Dulce	Maria Del Carmen	Lechuga	Salazar	\N	34084622	\N	AC	\N	3594
1121	Victor	Vicente	Lem	Masc	\N	29428521	\N	AC	\N	3612
5163	Rosa	Citlali	Ligorria	Sierra	\N	579952k        	\N	AC	\N	3582
2126	Luis	Fernando	Linares	Hernandez	\N	31805507	\N	AC	204	3520
2357	Rubia	Marilu	Lino	Orozco	\N	27033260	\N	AC	5185	3543
783	Ronal	Joel	Lopez	Rodriguez	\N	8208379	\N	AC	5130	3564
2359	Byron	Roberto	Lopez	Siliezar	\N	17051304	\N	AC	5150	3565
409	Julio	Alberto	Lucas	Lopez	\N	7438877	\N	AC	\N	3592
2155	Nery	Estuardo	Monroy	Rodriguez	\N	7065337	\N	AC	\N	3585
1894	Edgar	Orlando	Morales	\N	\N	684412K        	\N	AC	\N	3586
1318	Gustavo	Adolfo	Morales	Franco	\N	21169217	\N	AC	\N	3607
507	Lery	Dinora	Morales	Herrera	\N	19919573	\N	AC	5119	3574
2360	Byron	Estuardo	Morales	Lopez	\N	24549118	\N	AC	372	3464
1091	Anibal	Josue	Moreno	Oliveros	\N	8500894	\N	AC	\N	3529
1967	Cornelio	\N	Muj	Chonay	\N	21069174	\N	AC	\N	3518
1377	Lázaro	Daniel	Par	Cuá	\N	24477532	\N	AC	\N	3616
853	Esdras	Manuel	Perez	\N	\N	22444513	\N	AC	338	3507
987	Mario	Gerson	Perez	Hernandez	\N	14228521	\N	AC	5149	3546
2100	Nora	Elizabeth	Perez	Morales	Rosales	17533090	\N	AC	\N	3526
212	Hector	Mynor	Pineda	Ochaeta	\N	25707361	\N	AC	\N	3517
1	Rudy	Rene	Quan	Lopez	\N	19923732	\N	AC	\N	3532
2364	Vilma	Haydee	Ramirez	Diaz	\N	25571036	\N	AC	5187	3547
1173	Nicolas	\N	Reanda	Lacan	\N	28206274	\N	AC	\N	3613
2331	Aida	Liliana	Rivas	\N	\N	22381708	\N	AC	59	3595
455	Carlos	Roberto	Rodenas	Navarro	\N	11875119	\N	AC	4003	3603
833	Leslie	Marisol	Rojas	\N	\N	41567080	\N	AC	7005	3589
4876	Lesbia	Carolina	Salazar	Estrada	\N	826404k        	\N	AC	\N	3530
2072	Andrea	\N	Samuc	Ixbalan	Leon	29676940	\N	AC	\N	3611
2387	Juan	Luis	Sanchez	Muñoz	\N	8262314	\N	AC	187	3587
608	Marcela	\N	Schaeffer	Villagran	\N	17213223	\N	AC	5165	3569
325	Luis	Alfredo Boanerges	Solis	Rodriguez	\N	44894619	\N	AC	145	3460
1509	Brenda	Janeth	Stalling	Sierra	Pinelo	38589141	\N	AC	\N	3515
713	Ruth	Ludivina	Valenzuela	Cano	Castillo	39958515	\N	AC	\N	3527
1027	Ramiro	Antonio	Vanegas	Chacon	\N	7796196	\N	AC	\N	3522
2170	Jose	Rene	Veliz	Latz	\N	14171651	\N	AC	5132	3570
220	Leonel	Alexander	Sosa	Barillas	\N	1257077k       	\N	AC	\N	3614
115	Manuel	Haroldo	Barahona	Guzman	\N	6015492	\N	AC	355	3508
151	Ana	Lucrecia Del Rosario	Gamboa	Nowell	Castillo	15763129	\N	AC	4013	3627
587	Alma	Leticia	Garcia	Estrada	\N	2439985k       	\N	AC	\N	3630
1545	Vivian	Elizabeth	Mejia	Sevilla	\N	15975118	\N	AC	\N	3631
2332	Karla	Georgina	Riveiro	Fernandez	\N	7029683	\N	AC	\N	3645
809	Jorge	Alberto	Guzman	Maldonado	\N	7277881	\N	AC	\N	3646
1045	Hernán	Filemón	Villatoro	Monzón	\N	5179378	\N	AC	\N	3649
1345	Edgar	Ricardo	León	Ruano	\N	16724623	\N	AC	\N	3648
871	Evelyn	Yesenia	Estrada	Vasquez	\N	17549213	\N	AC	5158	3652
1897	Edvin	Geovany	Samayoa	\N	\N	14193612	\N	AC	\N	390
2298	Hector	Oswaldo	Choc	Xol	\N	16327101	\N	AC	\N	143
3286	Jose	Rigoberto	Galindo	Alvarado	\N	1488982k       	\N	AC	\N	3670
1748	Kareen	Daniza	Azurdia	Velasquez	\N	30531047	\N	AC	\N	3671
3397	Dalia	Lucila	Lopez	Gomez	\N	8190607	\N	AC	\N	3672
5102	David	Leonel	Giron	Marroquin	\N	74318500	\N	AC	\N	3856
982	Helbert	Augusto	Blanco	Garcia	\N	14200686	\N	AC	\N	3858
1755	Jorge	Antonio	Salguero	\N	\N	959766	\N	AC	\N	138
3425	Maria	Elizabeth	Ovalle	Franco	\N	59315776	\N	AC	326	3215
2363	Frida	Eneida	Pineda	Monroy	Muralles	8277974	\N	AC	158	3651
2261	Juan	Diego	Gonzalez	Padilla	\N	6999298	\N	AC	\N	3877
2222	Alida	Surama	Barrios	Pinto	\N	22136509	\N	AC	\N	1749
2462	Monica	Del Carmen	Alegria	Meza	\N	52856658	\N	AC	5184	3878
766	Gloria	Judith	Alvarez	Sarmiento	Perez	38394359	\N	AC	5156	3560
756	Evelyn	Marleny	Paz	Rosales	Dubon	19056478	\N	AC	\N	3879
2440	Jorge	Luis	Perez	Zamora	\N	7652240	\N	AC	5146	3548
368	Heidy	Sujey	Barrios	Zamora	Coronado	34929193	\N	AC	\N	3902
5638	Vilma	Janeth	Ruiz	Gomez	de Aragon	1829173	\N	AC	324	3918
3322	Ingrid	Patricia	Alvarado	Mazariegos	\N	30853664	\N	AC	\N	401
1036	Elena	Sarahi	Fuentes	Fuentes	Bolaños	52049078	\N	AC	\N	3599
2055	Anibal	Orlando	Hernandez	Morales	\N	1652313K       	\N	AC	\N	4106
4927	Maria	Lucrecia	Flores	Velasquez	\N	11573473	\N	AC	\N	4109
5538	Mario	Vinicio	Grijalva	Quiñonez	\N	20102585	\N	AC	\N	4107
733	Edilzar	Ottoniel	Morales	Mendez	\N	6593194	\N	AC	\N	3505
981	Leonel	\N	Leal	Chavez	\N	19922086	\N	AC	\N	152
825	Carmen	Victoria	Estero	Lopez	Morales	30844169	\N	AC	380	4126
1400	Jorge	Estuardo	Adqui	Ruiz	\N	61657018	\N	AC	5180	4144
3479	Rosalyn	Berta Alicia	Martinez	Torres	\N	24572632	\N	AC	\N	389
1286	Blanca	Aracely	Hernandez	Quel	\N	5693152	\N	AC	\N	394
1514	Eduardo	Vicente	Barrera	Calderon	\N	2307871	\N	AC	\N	4157
4910	Sindy	Jeannette	Almengor	Lopez	\N	39802582	\N	AC	\N	4177
1366	Carlos	Enrique	Garcia	Tubac	\N	24273430	\N	AC	5111	4163
862	Pedro	Lizardo	Morales	\N	\N	7639643	\N	AC	5155	4247
492	Jorge	Leonel	Juarez	Palacios	\N	14810964	\N	AC	\N	4253
1347	Migdalia	Olibet	Gonzalez	Gonzalez	\N	28530659	\N	AC	5183	4264
1743	Abdiel	David	Muralles	Alvarado	\N	44356595	\N	AC	100	3485
144	Yeymi	Karol	Palencia	Carrera	\N	1215492k       	\N	AC	325	497
1800	Haydee	Isabel	Castillo	Cardona	Franco	34790276	\N	AC	340	3477
1189	Victor	Antonio	Rustrian	Sandoval	\N	15582795	\N	AC	5178	4272
1692	Rigoberto	\N	Vargas	Morales	\N	2369435	\N	AC	\N	4282
3355	Jonathan	Estuardo	Monzon	Acajabon	\N	49484982	\N	AC	406	4299
2369	Juan	Carlos	Escobar	\N	\N	16114256	\N	AC	4023	387
1591	Julia	Veronica	Perez	Mejicanos	\N	22390294	\N	AC	5075	4301
1150	Carmen	Adaly	De Los Santos	Ramirez	Pineda	19034245	\N	AC	\N	3516
2062	Nydia	Lissette	Arevalo	Flores	Corzantes	5176980	\N	AC	\N	436
2294	Hugo	\N	Cardona	Rojas	\N	3156990	\N	AC	\N	3476
2058	Reyes	Ovidio	Giron	Vasquez	\N	1265814	\N	AC	\N	4274
2321	Maria	Dilma	Micheo	Alay	\N	14907747	\N	AC	\N	4335
1375	Edgardo	Enrique	Enriquez	Cabrera	\N	4081315	\N	AC	\N	4280
909	Edgar	Rolando	Melendez	Soto	\N	25082159	\N	AC	\N	3581
322	Idalia	Estela	Gamboa	Moino	\N	24428272	\N	AC	378	4364
667	Maria	Del  Carmen	Estrada	Rivera	\N	1558803	\N	AC	\N	4260
363	Mayda	Judith	Ramirez	Ramirez	Bravo	12472948	\N	AC	232	4461
222	Jose	Rocael	Esteban	Castillo	\N	7012330	\N	AC	\N	485
563	Pedro	Pablo	Garcia	Y Vidaurre	\N	11906073	\N	AC	\N	514
1423	Carlos	Alberto	Cámbara	Santos	\N	54054	\N	AC	\N	393
2171	Victor	Manuel	Chavez	Arevalo	\N	6431410	\N	AC	\N	4484
6759	Esteban	\N	Mollinedo	Diaz	\N	12130192	\N	AC	\N	4486
1191	Raul	Rene	Robles	De Leon	\N	10725776	\N	AC	\N	441
1225	Corina	Floridalma	Sanchez	Gonzalez	Suria	6875165	\N	AC	\N	4548
6479	Dina	Amarilys	Bolaños	Umaña	\N	10596933	\N	AC	\N	4549
2239	Mario	\N	Sanler	Castillo	\N	19960492	\N	AC	\N	4556
2445	Marleny	Zoraida	Rodriguez	Rodriguez	\N	2670255K       	\N	AC	\N	4560
2475	Nancy	Arely	Lopez	Loarca	\N	54393531	\N	AC	\N	4563
3383	Nora	Mayrena	Linares	Rivera	\N	38007762	\N	AC	\N	4564
2444	Yaneth	\N	Garcia	Rafael	\N	8050333	\N	AC	\N	4567
2345	Fidencia	\N	Orozco	Garcia	 Licardi	16291786	\N	AC	\N	4572
1759	Claudia	Marisol	Pocasangre	Umaña	\N	19557787	\N	AC	5134	4574
939	Karen	Cashely	Cardenas	Reyes	Montiel	30033136	\N	AC	\N	4569
5340	Manuel 	Antonio 	Ochaeta	De La Cruz	\N	7753039	\N	AC	\N	3489
2295	Luis	Eduardo	Carranza	Lorenzana	\N	9793372	\N	AC	\N	4591
2373	Ana	De Los Angeles	Garcia	Martinez	Acevedo	6617778	\N	AC	\N	878
5283	William	Ottoniel 	Lima	Garcia	\N	1242286k       	\N	AC	\N	4273
3507	Lesbia	Marleny	Sis	Chen	\N	19065744	\N	AC	\N	4681
1923	Vladimiro	Israel	Lopez	Arellano	\N	7646488	\N	AC	\N	396
3395	Ricardo	Anibal	Masaya	Gamboa	\N	5764289	\N	AC	\N	5278
6708	Erik	de Jesus	Catalan	Ortiz	\N	27860000	\N	AC	\N	3004
6833	Jorge	Emilio	Quim	Leal	\N	40868044	\N	AC	419	4531
6816	Adriana 	Yanira	Mendez	Moreira	\N	33630720	\N	AC	417	4499
6859	Maya	Elisa	Rojas	Arreaga	\N	57414734	\N	AC	425	4590
6673	Eriberto	Mahoni	Perez	Santizo	\N	61477125	\N	AC	388	4900
6482	Carlos	Danilo	Boj	Doradea	\N	80408958	\N	AC	312	4903
6490	Sergio	Estuardo	Rosal	Tobar	\N	86414305	\N	AC	310	4902
6907	Gustavo	Anibal	Archila	Paz	\N	9524630	\N	AC	428	4926
6786	Siria	Maria	Ojeda	Romero	\N	16599187	\N	AC	331	4907
5899	Marialuz	Isabel	Orellana	Paz	\N	73920789	\N	AC	332	4898
6137	Juan	Francisco	Calderon	Chavez	\N	17919134	\N	AC	358	4921
3219	Romeo	Adolfo	Gudiel	Garcia	\N	6882331	\N	AC	413	4920
5844	Francisco	de Jesus	Pedroza	Gatica	\N	7794789	\N	AC	308	4918
6841	Lourdes 	Elisa	Salan	Barrera	\N	9491937	\N	AC	424	4598
5091	Jose	Alejandro	Lopez	Lopez	\N	9571973	\N	AC	398	4927
4894	Carlos	Fernando	Paniagua	Martinez	\N	73688665	\N	AC	381	4924
6876	Annel	Aurora	Caballeros	Lemus	\N	6250319	\N	AC	426	4607
6162	Ligia	Maritza	Chavez	Coronado	Muñoz	18102964	\N	AC	\N	3181
5245	Kleyber	Ivan	Jolon	Oliva	\N	9617299	\N	AC	158	4928
5424	Zucely	Marily	Castellanos	Hernandez	\N	78125022	\N	AC	363	4899
6583	Estuardo	\N	Cetina	Moreno	\N	87635208	\N	AC	321	4997
6878	Darwin	Haniel	Coc	Max	\N	69534179	\N	AC	\N	4979
3393	José	Roberto	Ismalej	Guzmán	\N	38093936	\N	AC	320	4996
3387	César	Augusto	Julajuj	Chiroy	\N	69034559	\N	AC	319	4995
6364	Angel	Eliseo	Olmedo	Guerra	\N	80803210	\N	AC	\N	4993
904	Carlos	Francisco	Sac	Mus	\N	17040701	\N	AC	4001	4991
1972	Moisés	Edyn	Tzunun	Menchú	\N	62125982	\N	AC	\N	4992
2273	Esteban	Moises	Ismale	Torres	\N	65190483	\N	AC	374	5000
6539	Gustavo	Adolfo	Rabanales-Pinot	Lemus	\N	76949680	\N	AC	379	4498
6176	Herbert	Estuardo	Avila	Quiñonez	\N	10274952	\N	AC	\N	4938
565	Luis	Alberto	Bran	Bac	\N	48005444	\N	AC	\N	4937
1999	Sergio	Williams	Franco	Diaz	\N	12386642	\N	AC	\N	4935
5577	Jorge	Antonio	Gramajo	Rivera	\N	72712422	\N	AC	\N	4934
6895	Angel	Alfonso	Medina	Corado	\N	73590487	\N	AC	\N	4955
5188	Ubaldo	Hugo	Ponce	Nuñez	\N	69752206	\N	AC	\N	4932
3149	Carlos	Enrique	Santos	\N	\N	48277673	\N	AC	\N	4954
3418	Shirley	Alejandra	Zaldaña	Padilla	\N	58221727	\N	AC	5126	4112
4843	Rodolfo	\N	Calvillo	Valdez	\N	551679K        	\N	AC	\N	5192
6861	Juan 	Francisco	Chajchalac	Hernandez	\N	82910243	\N	AC	\N	5198
6889	Claudia	Maribel 	Crispin	Flores	\N	62859609	\N	AC	\N	5197
2436	Jorge	Mario	Fonseca	Ruiz	\N	1428632	\N	AC	\N	5191
5653	Sergio	Ramiro	Garcia	Portillo	\N	4037383	\N	AC	\N	5190
4598	Salvador	\N	Herrera	Marroquin	\N	1253026	\N	AC	\N	5195
6891	Oscar	Moises	Lopez	Fuentes	\N	22056475	\N	AC	\N	5194
4378	Jose 	Alfonso	Lucas	Chitay	\N	23038241	\N	AC	\N	5189
6865	Alex	Aron	Morales	Valdez	\N	25884476	\N	AC	\N	5188
6863	Alba	Beatriz	Perez	Vasquez	\N	49205757	\N	AC	\N	5235
6750	Vivian	Margarita	Garcia	Osorio	\N	64292363	\N	AC	\N	5031
6808	Etelbina	Maria	Martinez	Ramirez	\N	76714659	\N	AC	\N	5033
6828	Diana 	Marie	Romero	Solis	\N	16264924	\N	AC	\N	5258
4914	Madeline 	Yvette	Soto 	Granillo	\N	31808387	\N	AC	5013	5257
5269	Sonia	\N	Navarijo	Estrada	\N	6124526	\N	AC	\N	5040
1406	Jose	Alberto	Santizo	Davila	\N	29668565	\N	AC	5188	4975
5369	Jesus	Ena	Gonzalez	Rosales	\N	80782396	\N	AC	\N	5017
6711	Jorge	Manuel 	Morales	Ortiz	\N	24958409	\N	AC	\N	5016
1831	Guillermo	Alfredo	Franco	Zepeda	\N	35344857	\N	AC	\N	5006
6790	Jose	Israel	Yax	Junay	\N	52762068	\N	AC	\N	5282
6905	Griselda	Magaly	Muñoz	Galicia	\N	39338967	\N	AC	5198	4679
6110	Katherine	Rosslyn	Garcia	Vasquez	de Mazariegos	41815726	\N	AC	3026	5029
6507	Sergio 	\N	Camey	Arana	\N	25158376	\N	AC	5131	5053
5948	Javier	Ottoniel	Solis	Macz	\N	40593770	\N	AC	5142	5310
6613	Luis	Guillermo	Paredes	Perez	\N	59523697	\N	AC	5147	5299
3495	Yoise	Georgina	Cruz	Hernandez	\N	8191573	\N	AC	\N	5002
5113	Mirna	Elizabeth	Velasquez	Toj	\N	40904172	\N	AC	\N	5001
759	Oscar	Guillermo	Hernandez	Castillo	\N	918199	\N	AC	\N	5284
5648	Tierna	Corita Siboney	Polillo	Cornejo	\N	43781748	\N	AC	3025	5285
6430	Wuendi	Sulema	de la Cruz	Lopez	\N	35237988	\N	AC	\N	4942
5801	Ernesto	Sergio Estuardo	Mansilla	Sierra	\N	73512818	\N	AC	\N	4941
5115	Ana	Sofia	Mendez	Perez	\N	76142868	\N	AC	\N	4940
2380	Andrea	Elizabeth	Escobar	Palma	\N	30197937	\N	AC	\N	5270
2390	Marco	Tulio	Siliezar	\N	\N	4744233	\N	AC	\N	5268
1278	Ismael	\N	Camey	Equite	\N	4585879	\N	AC	\N	5160
1976	Elmer	Ronaldo	Espina	Figueroa	\N	784963k        	\N	AC	\N	5161
6528	Maria	de Lourdes	Ajcu	Castillo	\N	52925250	\N	AC	\N	5134
2465	Rosa	\N	Arevalo	Quiñonez	\N	46816453	\N	AC	\N	5097
3373	Patricia	Esmeralda	Archila	Bailon	\N	34760156	\N	AC	\N	4946
6826	Myriam 	Orcelia	Lopez	Estrada 	\N	71865233	\N	AC	\N	4943
5247	Hugo	Leonel	Mendez	Garcia	\N	23833394	\N	AC	\N	4945
2130	Rosana	Guadalupe	Quevedo	Martinez	\N	56570082	\N	AC	\N	4944
2188	Zoila	Guillermina	Jimenez	Galicia	\N	20446691	\N	AC	7004	5147
4840	Ignacio	\N	Blanco	Ardon	\N	8517320	\N	AC	\N	5167
4380	Belter	Rodolfo	Mancilla	Solares	\N	3012565	\N	AC	\N	5168
3437	Julio	Estuardo	Solorzano	Rubio	\N	7324383	\N	AC	\N	5169
529	Abelina	De Los Angeles	Lopez	Rodas	\N	1509829k       	\N	AC	7008	5003
1535	Irma	Yolanda	Carranza	Arriola	Perez	28423380	\N	AC	\N	5102
3405	Carlos	Dario	Paz	Reichstein	\N	3295729	\N	AC	\N	4999
3489	Karin	Marleny	Arana	Salguero	Arriola	35580356	\N	AC	\N	5173
3274	Miriam	Patricia	Cifuentes	Gonzalez	\N	64964175	\N	AC	\N	5007
2246	Flor	De Maria	Lopez	Mendez	Chacon	51057972	\N	AC	\N	5136
860	Mario	Rolando	Cetino	Villanueva	\N	34840893	\N	AC	\N	5175
4749	Cesar	Augusto	Perez	Lorenzo	\N	3379078	\N	AC	\N	5176
1609	Marco	Vinicio	Alvarez	Ruiz	\N	1723359	\N	AC	\N	5178
6769	Edwin	Celestino	Palacios	Montufar	\N	16966376	\N	AC	\N	5103
2394	Henry	Alexander	Beltran	Castillo	\N	55296599	\N	AC	\N	4983
1671	Oscar	Ronaldo	Cruz	Montoya	\N	26986949	\N	AC	\N	4982
2013	Saul	Adonias	Orrego	Orrego	\N	19972954	\N	AC	\N	4981
5184	Edgar	Alberto	Valdez	Vasquez	\N	19959133	\N	AC	\N	4984
1893	Gonzalo	Catarino	Giron	Arevalo	\N	17958458	\N	AC	\N	5181
3357	Monica	Azucena	Negreros	Carias	\N	13587870	\N	AC	\N	5182
6418	Sandra	Yaneth	Diaz	Perez	\N	46222758	\N	AC	\N	5098
1688	Hoffman	Romeo	Castillo	Lemuz	\N	12359041	\N	AC	\N	5183
4822	Jenry	\N	Gonzalez	Sarceño	\N	43807402	\N	AC	\N	5184
2098	Gregory	Yovani	Mazariegos	Hernandez	\N	1425977k       	\N	AC	\N	5185
1974	Maria	De Jesus	Roldan	Martinez	\N	590546k        	\N	AC	\N	5008
1491	Aura	Marina	Gonzalez	Rodriguez	Perez	50765884	\N	AC	\N	5109
5273	Milca	Cedema	Hernandez	De la Cruz	\N	33213607	\N	AC	\N	5009
2214	Francisca	Del Carmen	Ortiz	De Paz	\N	51143615	\N	AC	\N	5108
1860	Irma	Graciela	Romero	Imery	\N	5298954	\N	AC	\N	5010
5892	Carlos	Mariano	Vasquez	Hernandez	\N	18183026	\N	AC	\N	5199
1624	Olga	Marina Ester	Bocel	Morales	Alonzo	32016379	\N	AC	\N	5113
6794	Ervin	Ivan	Calderon	De Leon	\N	23579323	\N	AC	\N	4469
4791	Maria	\N	Tzina	Quieju	\N	72316136	\N	AC	\N	5117
1448	Francisco	Cruz	Chamorro	Quic	\N	50951726	\N	AC	\N	5121
5678	Julian	Adolfo	Archila	Cifuentes	\N	59380292	\N	AC	\N	5201
4662	Pedro	Gonzalo	Vera	Diaz	\N	15764680	\N	AC	\N	5204
6616	Milton	Giovanni	Bamaca	Coyoy	\N	15779270	\N	AC	4031	5206
6422	Betsabe	Eunice	Albanes	Gomez	\N	55906052	\N	AC	4028	5286
3349	Giovanni	Vinicio	Sical	Hernandez	\N	14840715	\N	AC	4014	5156
6802	Flor 	de Maria	Aguilon	Agustin	\N	52004775	\N	AC	\N	5205
1544	Patricia	Saraí	Villatoro	Martinez	\N	11251093	\N	AC	4015	5011
5181	Luis	Alberto	Reyna	Maldonado	\N	27906612	\N	AC	\N	5210
4968	Malter	Adolfo	Lopez	Gonzalez	\N	11163380	\N	AC	\N	5211
1927	Blanca	Lidia	Cifuentes	Ovalle	\N	24723312	\N	AC	\N	5135
6832	Marta	Delia	Lopez	Miranda	\N	33321418	\N	AC	\N	4328
6847	Eddy 	Alberto	Garcia	Campos	\N	41926323	\N	AC	\N	5213
6740	Luvia	Consuelo del Carmen	Lozano	Perez	\N	54192536	\N	AC	\N	4329
5593	Luis	Angel	Lopez	Ochoa	\N	58743960	\N	AC	\N	5137
111	Elisa	\N	Lopez	Agustin	Marroquin	43226450	\N	AC	\N	712
2481	Elma	Leticia	Guzman	Lopez	Mazariegos	32426801	\N	AC	\N	5139
1143	Erick	Alexander	Barrundia	Barrios	\N	51051184	\N	AC	\N	5141
1238	Roderico	Ismael	Garcia	Ramirez	\N	46542221	\N	AC	\N	713
5783	Josefa	Margarita	Lopez	Sebastian	\N	52698475	\N	AC	\N	5143
6782	Ibrandy	Yazanneth	Hernandez	Alvarado	\N	56277849	\N	AC	\N	5215
3473	Edgar	Rodrigo	Lopez	Cardenas	\N	23587024	\N	AC	\N	5217
6074	Sucely	Liseth	Gomez	Hernandez	Tebalan	40838153	\N	AC	\N	5012
6085	Yulissa	Eugenia	Rivas	Calderon	\N	42332613	\N	AC	\N	5140
6784	Isabel	\N	Aguilar	Lorenzo	\N	73678465	\N	AC	\N	5142
1109	Florentina	\N	Diego	Gregorio	\N	51316781	\N	AC	\N	5145
4087	Vicente	\N	Chivalan	Chaicoj	\N	4503554	\N	AC	\N	5220
1239	Camelia	Everilda	Monzon	Villatoro	Fajardo	8973873	\N	AC	\N	5223
1287	Raul	Enrique	Morales	Alvarado	\N	17310415	\N	AC	\N	716
6438	Maria	\N	Salazar	Gomez	\N	87281589	\N	AC	\N	5146
2002	Lucia	\N	Urizar	Alvarez	\N	8535027	\N	AC	\N	5013
2138	Dominga	Bacilia	De Leon	Perez	de Cobo	11409320	\N	AC	\N	5148
6570	Lucia	Aracely	Domingo	Silvestre	\N	89719697	\N	AC	\N	5149
5185	Fulvio	Amado	Pop	Bac	\N	14000342	\N	AC	\N	5225
3258	Fernando	\N	Calate	Cuquej	\N	22614893	\N	AC	\N	964
591	Marina	Hermelinda	Alvarez	Lopez	\N	38928310	\N	AC	\N	5150
5785	Sergio	Adrian	Coronado	Oliva	\N	19825609	\N	AC	\N	5228
6820	Zoila	Elizabeth	Contreras	Cartagena	\N	71481478	\N	AC	\N	4521
750	Lesvia	Edit	Aguilar	Balsells	Ochaeta	4096541	\N	AC	\N	5014
5420	Baudilia	Refugia	Raymundo	Cunil	\N	44355831	\N	AC	\N	5100
6819	Jovita	Jeaneth	Recinos	Garcia	\N	86324713	\N	AC	\N	5158
6675	Jasser	Efrain	Santander	De Leon	\N	27396312	\N	AC	\N	5236
4723	Candida	De Jesus	Castañeda	Morales	\N	18037127	\N	AC	\N	5238
6234	Delmy 	Marisol	Vargas	Cabrera	\N	12049859	\N	AC	\N	5237
6725	Catalina	\N	Bo	Chub	\N	57963460	\N	AC	\N	5152
1414	Ana	Leonila	Lopez	Paz	\N	2562587k       	\N	AC	\N	5019
5687	Manuel	de Jesus	Lopez	Ordoñez	\N	27066290	\N	AC	\N	5241
6812	Joan	Manuel	Fajardo	Arango	\N	34890572	\N	AC	\N	4497
2495	Reina	Anabella	Gutierrez	\N	\N	51188945	\N	AC	\N	5153
6671	Josemanuel	\N	Godinez	Barrientos	\N	38870134	\N	AC	\N	5245
6174	Lesly 	Eunice	Moran	Lara	\N	59437251	\N	AC	\N	5243
6845	Daniela	Alejandra	Bobadilla	Recinos	\N	69816530	\N	AC	\N	4593
2447	Irene	Beatriz	Cisneros	Flores	\N	10362029	\N	AC	5012	5249
156	Dina	Alba Alicia	Gomez	Perez	\N	50733702	\N	AC	\N	5155
3431	Dunia	Maribel	Castro	Aguilar	Tejada	7588852	\N	AC	\N	5250
538	Claudia	Mercedes	Hernandez	Ruano	\N	19266928	\N	AC	\N	5252
546	Moises	\N	Vivar	Orellana	\N	16523342	\N	AC	\N	5251
6916	Monica	Melissa	Pleitez	Guerra	\N	82748470	\N	AC	\N	4730
6524	Gloria	Mariela	Lopez	Barrera	\N	88811425	\N	AC	\N	5157
2405	Damaris	Camelia	Peñate	Rodriguez	\N	26542145	\N	AC	5064	5023
307	Pedro	Jose Luis	Marroquin	Lopez	\N	12555320	\N	AC	\N	5120
6880	Inge	Maythe	Najera	Villate	\N	76255301	\N	AC	\N	4609
6909	Zoila	Dalila	Vivar	Montenegro	\N	95013733	\N	AC	\N	5144
5100	Yenny	Judith 	Illescas	Arriaza	\N	29237610	\N	AC	\N	5024
5123	Ana	del Carmen	Cortez	de Pantaleon	\N	71989412	\N	AC	\N	5107
6899	Marco 	Antonio	Alvarado	Beltran	\N	25992201	\N	AC	\N	5095
6883	Sonia	Yolanda	Equite	Bor	\N	18327532	\N	AC	\N	5094
1092	Aura	Matilde	Recinos	Castañeda	Rivera	40990931	\N	AC	5015	5093
6345	Carmen	Elizabeth	Soto	Garrido	\N	5914108	\N	AC	\N	5253
6912	Manuel	Eduardo	Bran	Quintana	\N	24393568	\N	AC	3034	4690
902	Carlos	Estuardo	Itzol	Batzin	\N	25590383	\N	AC	5057	5288
3486	Zulma	Vanesa	Reyes	Herrarte	\N	12314854	\N	AC	3014	5287
1786	Ana	Judith	Estrada	Melgar	Rivera	3983897	\N	AC	3003	5028
6903	Brenda	Patricia	Lemus	Morales	\N	47436549	\N	AC	3036	4671
6530	Jessica 	Jeannette del Carmen	Portillo	Gonzalez	\N	84697210	\N	AC	\N	4779
535	Abdiel	Eliseo	Merida	Herrera	\N	42564239	\N	AC	\N	4730
6092	Aida	Lizbeth	Cardona	Lainez	\N	22541829	\N	AC	\N	4813
5230	Ana	Carina	Leon	Briones	\N	29551560	\N	AC	\N	4519
420	Ana	Del Carmen	Zea	Gonzalez	\N	1025295	\N	AC	5100	4638
6537	Ana	Lucrecia	Vargas	Perez	\N	28797590	\N	AC	\N	4816
127	Anabella	Magaly	Orozco	Velasquez	Bautista	24768731	\N	AC	\N	4795
5238	Andrea	Beatriz	Torres	Villafuerte	\N	77601882	\N	AC	\N	4821
6541	Antonio	David	Diaz 	Jacinto	\N	56041594	\N	AC	3037	4689
5618	Bissy 	Colombina	Ramirez	Rodriguez	\N	55463266	\N	AC	\N	4803
5927	Blanca	Veraly	Tunchez	Arreaga	\N	70979286	\N	AC	7000	4827
6622	Boris	Giovanni	Arias	De Leon	\N	82580898	\N	AC	\N	4829
5944	Boris	Rodrigo	Gil	Rivera	\N	33966028	\N	AC	3033	4688
6699	Bremner	Yovani	Miranda	Rodas	\N	41359623	\N	AC	\N	4797
5361	Carlos	Eduardo	Gramajo	Sanchez	\N	50270567	\N	AC	\N	4608
2452	Carlos	Romeo	Osorio	Cardona	\N	6945155	\N	AC	5177	4678
5325	Carmen	\N	Aquino	Andrade	\N	47948108	\N	AC	\N	4609
4882	Cindy	Ana Korina	Figueroa	Mendez	\N	9753699	\N	AC	7006	4826
6717	Cindy	Yusselin	Alvizures	Martinez	\N	56228171	\N	AC	\N	4815
496	Cristi	Lisbianeth	Contreras	Garcia	\N	10061754	\N	AC	\N	4695
6467	Cristian 	Dalet	Giron	Moyno	\N	64257185	\N	AC	5114	4509
5566	Danilo	Oseas	Juan	Juan	\N	40218414	\N	AC	\N	4834
5386	Danis	Antonio	Ruiz	Villegas	\N	38364808	\N	AC	\N	4791
6211	David	Alexander	Gonzalez	Granados	\N	70576637	\N	AC	5117	4654
6362	Deiby	Daniel	Lorenzo	Mateo	\N	74069470	\N	AC	\N	4836
6370	Denisse	Mayte	Lopez	Calderon	\N	86049240	\N	AC	\N	4838
5575	Diether	Antonio	Lopez	Bode	\N	50207237	\N	AC	5136	4677
6134	Dulce	Maria	Palencia	Rodas	\N	45097488	\N	AC	\N	4812
5251	Edgar	Leonel	Menendez	Guerra	\N	39202038	\N	AC	5106	4508
5781	Edith	Enedelia	Estrada	Morales	\N	81651317	\N	AC	3017	4687
3262	Edna	Judyth	Barrientos	Palma	\N	59259094	\N	AC	\N	4729
6810	Edwin 	Saul	Muñiz	Morales	\N	9795138	\N	AC	\N	4842
6209	Elvis	Julio Cesar	Vasquez	Guerra	\N	32290594	\N	AC	\N	4820
3272	Emily	Gabriela	Xingo	Gómez	\N	58388281	\N	AC	\N	4844
746	Ervin	Armando	Diaz	Valverth	\N	9766960	\N	AC	3012	4686
6219	Esmeli	Lloana	Gudiel	Regalado	\N	62408917	\N	AC	3031	4685
5820	Evelyn	Paola	Monroy	Ramirez	\N	47044853	\N	AC	5133	4635
6574	Ever	Ariel	Orrego	Dubon	\N	76783928	\N	AC	\N	4841
6358	Fabiola 	Arleth	Muñoz	Ortiz	\N	43597750	\N	AC	5041	4845
4824	Franty	Alexis	Marroquin	Figueroa	\N	16165713	\N	AC	\N	4848
5133	Fredy	Giovanni	Garcia	Marroquin	\N	14267292	\N	AC	\N	4852
2128	Gabriel	Eduardo	Valdez	Salazar	\N	61761710	\N	AC	5129	4634
6298	Gerber	Saul	Monzon	Chajon	\N	25675265	\N	AC	5170	4633
6372	Gilma	Iliana	Orellana	\N	\N	81667493	\N	AC	5157	4632
2384	Glenda	Fabiola	Sandoval	Duarte	\N	38533359	\N	AC	\N	4663
1072	Gregorio	Orlando	Ramirez	Lopez	\N	17630150	\N	AC	\N	4799
6503	Guiselle	de Marie	Martinez del Rosal	Cardona	\N	40695786	\N	AC	5127	4506
5410	Hector	Alfredo	Gonzalez	Jimenez	\N	45796114	\N	AC	\N	4860
6660	Hector 	Rene	Alarcon	Marin	\N	74551574	\N	AC	5115	4645
5876	Heidy	Jeraldy	Sagastume	Arana	\N	16015320	\N	AC	\N	4662
6806	Ingrid 	Yuliana	Agustin	Leon	\N	26063069	\N	AC	\N	4661
4854	Ingrith	Nielsen Liset	Gomez	Chamale	\N	39391426	\N	AC	5189	4864
5972	Isidro	\N	Garcia	Hernandez	\N	48389706	\N	AC	\N	4742
5329	Israel	Armando	Lucero	Cameros	\N	23865814	\N	AC	\N	4846
5629	Jessica	Alejandra	Ramos	Moran	\N	75751895	\N	AC	\N	4712
6172	Jesus	Alberto	Calderon	Aguirre	\N	73192988	\N	AC	\N	4741
2383	Jonyberth	Gadiel	Villatoro	Avila	\N	39406202	\N	AC	5103	4630
6215	Jorge 	Eduardo	Herrera	Vasquez	\N	59694475	\N	AC	\N	4748
5422	Jose	Armando	Garcia	Juarez	\N	38726750	\N	AC	\N	4694
6595	Jose	Augusto	Cos	Ajxup	\N	52293211	\N	AC	4030	4725
3140	Jose	Favian	Tejax	Boror	\N	6737293	\N	AC	\N	4711
6207	Jose	Roberto	Calvo	Garcia	\N	66736765	\N	AC	\N	4747
694	Jose	Rolando	Aldana	Castellanos	\N	7142013	\N	AC	7010	4825
4887	Jose	Rolando	Pivaral	Fuentes	\N	1886547k       	\N	AC	\N	4751
5161	Josslyn	Andrea	Lopez	Ramirez	Martinez	51968371	\N	AC	4008	4724
2086	Juan	Estuardo	Martinez	Montenegro	\N	4463986	\N	AC	\N	4710
164	Juan	\N	Morales	Alvarez	\N	2265111k       	\N	AC	\N	4740
5870	Juan	\N	Ruiz	Boj	\N	40141098	\N	AC	\N	4851
541	Julia	Edilsa	Zepeda	Vides	\N	59137290	\N	AC	\N	4728
5965	Julio 	Anibal	Hernandez	Barrientos	\N	43016448	\N	AC	\N	4867
5290	Julio	Roberto	Curruchiche	Orellana	\N	17106702	\N	AC	7007	4824
6094	Julio	Roberto	Duran	Garcia	\N	82983747	\N	AC	5104	4504
6117	Julio 	Roberto	Reyes 	Muralles	\N	70182175	\N	AC	5153	4631
6516	Kimberly 	Massiel	Rodriguez	Escobar	\N	50385003	\N	AC	\N	4746
3422	Karen	Rocio	Lopez	Martinez	Donis	43063500	\N	AC	5116	4505
3351	Karla	Ruth	Gonzalez	Teni	\N	49761226	\N	AC	\N	4706
6804	Laure	Julyana	Ramirez	Monzon	\N	62394800	\N	AC	5195	4629
6721	Lesbia	Janeth	Orozco	Gonzalez	\N	30047862	\N	AC	5120	4647
6420	Lesly 	Alejandra de Jesus	Monzon	Mendez	\N	33184097	\N	AC	\N	4736
6652	Maria	Rosa	Panteul	Morales	\N	65917685	\N	AC	3032	4660
6846	Milton 	Augusto 	James 	España	\N	21102651	\N	AC	\N	4790
3415	Milton	Enrique	Ayala	Dardon	\N	29657504	\N	AC	\N	4850
467	Luis	Adolfo	Garcia	Vasquez	\N	19702485	\N	AC	\N	4794
3428	Monika	Maria	Najera	Ramirez	\N	70415609	\N	AC	\N	4727
6723	Mynor	Vosbely	Chavaloc	Tzoc	\N	51057638	\N	AC	\N	4723
3365	Luis	Gerardo	Gonzalez	Golon	\N	42766346	\N	AC	5139	4674
6732	Narda	Azucena	Hernandez	Hernandez	\N	46073035	\N	AC	\N	4715
6681	Manuel	Alejandro	Jerez	Santa Cruz	\N	59158212	\N	AC	\N	4714
6546	Manuel	Efrain	Gutierrez	Chacon	\N	53780663	\N	AC	\N	4859
6648	Otoniel	\N	Sagastume	Escobar	\N	39094928	\N	AC	\N	4819
1843	Marcelina	\N	Olivas	Moreira	\N	2885067k       	\N	AC	\N	4811
6658	Marco	Demetrio	Perez	Perez	\N	56872550	\N	AC	\N	4515
3278	Roberto	Aurelio	Pineda	Amezquita	\N	27544869	\N	AC	\N	4866
6217	Roxana	Rosario	Perez	Cristobal	\N	37573357	\N	AC	\N	4828
6309	Selvin	Geovany	De Leon	Lopez	\N	2921582K       	\N	AC	5137	4673
6127	Ulises	Saul	Orellana	Sandoval	\N	52277941	\N	AC	7009	4871
6521	Victor	Manuel	Coyoy	De Leon	\N	20574894	\N	AC	4029	4722
3308	Victor	Manuel	Vasquez	Rivera	\N	54577330	\N	AC	3004	4659
6599	Williams	Orlando	Marroquin	Arevalo	\N	90372360	\N	AC	\N	4709
5167	Zoila	Anita	Cifuentes 	Ovalle	\N	33566259	\N	AC	\N	4782
6480	Yesenia	Dulcidia	Sosa	Alvarado	\N	80336345	\N	AC	5197	4627
6752	Yuliana	Hidelisa	Montejo	Hernandez	\N	2775118K       	\N	AC	\N	4700
1127	Carlos	Adolfo	Gonzalez	Barrera	\N	55213618	\N	AC	3023	4772
6188	Erik	Leonel	Lopez	Ramirez	\N	31943519	\N	AC	\N	4876
1147	Jaime	Walter	Mendoza	Mendoza	\N	24576182	\N	AC	5192	4878
6139	Alison	Andrea	Morales	Salazar	\N	83888810	\N	AC	5159	4786
6471	Ana	Odilia	Pacay	Caal	\N	40548155	\N	AC	\N	4778
3504	Josefina	\N	Ruano	Pineda	\N	21165327	\N	AC	\N	4780
623	Gisela	Margarita	Vanegas	Rodriguez	Cordova	17957141	\N	AC	\N	4783
5392	Byron	Alberto	Villeda	Fuentes	\N	78920078	\N	AC	5107	4879
6511	Oscar	Enrique	Coronado	Chinchilla	\N	12319430	\N	AC	410	4917
6772	Alfredo	\N	Escribá	Morales	\N	14138883	\N	AC	\N	4439
2009	Hermenegildo	\N	Belteton	Cordero	\N	6684467	\N	AC	323	410
1954	Jose	Alfredo	Deras	Roman	\N	17806518	\N	AC	329	411
1569	Miguel	Angel	Diaz	Solorzano	\N	4902157	\N	AC	300	415
1791	Victor	Hugo	Estrada	Davila	\N	43691897	\N	AC	364	418
1809	Kevin	Gabriel	Gaitan	Rosales	\N	18419488	\N	AC	330	413
3220	Mynor	\N	Linares	Aldana	\N	35164387	\N	AC	334	416
2073	Enrique	De Jesus	Ordoñez	Alvarado	\N	12387649	\N	AC	399	409
2067	Isidro	\N	Sosa	De Leon	\N	7544367	\N	AC	423	417
6882	Edgar	Salvador	Pimentel	Chinchilla	\N	16326326	\N	AC	\N	3618
6885	José	David	Castillo	Barrera	\N	28105192	\N	AC	\N	4466
6800	Mayrena	Danisa	Gonzalez	Pinto	\N	9976744	\N	AC	\N	4478
627	Denis	Javier	Longo	Gregorio	\N	21955174	\N	AC	7001	3621
3324	Jose	Micsael	Tecun	Cermeño	\N	42182794	\N	AC	3001	4307
5906	Marta	Estela	Araujo	Bohr	\N	4087097	\N	AC	\N	4327
1538	Maria	Aurora	Fernandez	Bonilla	Aguilar	4042557	\N	AC	\N	3579
6742	Ana	Jeanifer	Taracena	Caballeros	\N	39012824	\N	AC	361	4968
1135	Julio	Cesar	Zuñiga	\N	\N	7649983	\N	AC	\N	4333
6932	Josue	Efrain	Yoc	Elel	\N	44676778	\N	AC	\N	4939
5976	Carlos 	Alberto	Alvarez	Lopez	\N	2515229	\N	AC	\N	5311
6940	Fredy	Enrique	Xicará	Momotic	\N	9517294	\N	AC	\N	5315
4721	Ricardo	Antonio	Figueroa	Portillo	\N	4141490	\N	AC	\N	5233
6926	Glenda	Marleny	Bonilla	Valladares	\N	74917714	\N	AC	\N	4953
6925	Melinton	\N	Salazar	Anleu	\N	25141473	\N	AC	\N	5324
6927	Christian	Eduardo	Barrascout	Urizar	\N	48504963	\N	AC	\N	5297
6923	Lilian	Marina	Alvarez	Bailon	\N	19067658	\N	AC	3035	3244
6406	Maynor	Reynaldo	Donis	Lopez	\N	71078428	\N	AC	434	4990
6939	Olivia	Maria	Morales	Baldizon	\N	51059932	\N	AC	\N	5329
6947	Crista	Yamileth	Guillen	Gramajo	\N	41620801	\N	AC	\N	5332
6949	Ana	Lucia	Giron	Toledo	\N	29529441	\N	AC	\N	5336
4819	Carmen	Silvia	Garza	Maderos	\N	15941752	\N	AC	\N	5337
6953	Kelly	Analy	Boc	Anton	\N	66599148	\N	AC	\N	4818
6966	Cindy	Dayen	Velasquez	Marroquin	\N	26252813	\N	AC	\N	5342
6971	Ricardo	Manuel	Angel	Ramos	\N	82990131	\N	AC	\N	4796
6970	Sergio	Federico	Morales	\N	\N	4873823	\N	AC	\N	5057
2316	Rony	Rocael	Lopez	Roldan	\N	7668546	\N	AC	\N	489
6974	Marina	Isabel	Chuc	Sam	\N	30419670	\N	AC	\N	5354
1536	Erick	Alberto	Degollado	Medina	\N	8109958	\N	AC	5010	5352
2460	Carlos	Alberto	Villatoro	Schunimann	\N	3851508	\N	AC	\N	5360
6581	Otto	Rene	Dominguez	Barrios	\N	17538564	\N	AC	3027	5361
6978	Javier	Andres	Enriquez	Palma	\N	95360301	\N	AC	\N	4672
6981	Luis	Osvaldo	Flores	Bacilios	\N	28275438	\N	AC	\N	5363
5339	Leticia	\N	Gonzalez	Brizuela	\N	4280083	\N	AC	\N	5296
6125	Luis	Guillermo	Barillas	Martínez	\N	82427690	\N	AC	408	5368
5636	Edgar	Armando	Surám	Cal	\N	48696293	\N	AC	360	5369
6984	Bárbara	Sucel	Gómez	Hernández	Castellanos	7991703	\N	AC	\N	5370
6987	Gandhy	Mileyda	Guerra	Ramos	\N	63662116	\N	AC	\N	4739
6990	Pedro	Ivan	Rodriguez	Maldonado	\N	7186894	\N	AC	5201	5372
6601	Dorothy	Crisley Marilynn	Choc	Leal	\N	61716774	\N	AC	\N	4705
6577	Mildred	Mishel	Aguilon	Monroy	\N	83866620	\N	AC	\N	4789
6994	Belia	Juana Yulissa	Peralta	Peralta	\N	76104982	\N	AC	\N	5376
6989	Aroldo	Raul	Morales	Castillo	\N	83636781	\N	AC	\N	4721
6999	Fulvio	Ludwing	Salazar	Paz	\N	519329K        	\N	AC	\N	5056
500	Selvin	Omar	Chinchilla	Abrego	\N	10251782	\N	AC	\N	4849
1095	Dora	Patricia	Montufar	Roblero	\N	19669143	\N	AC	5173	5384
7003	Aura	Marina	Alvarez	Garcia	\N	30775140	\N	AC	\N	4745
7008	Cindy	Dayana	Delcompare	Quintana	\N	88131378	\N	AC	\N	5387
7005	Marlon	Rafael	Gordillo	Portillo	\N	88000702	\N	AC	\N	4952
7011	Edna	Marisol	Muñoz	Cornejo	\N	56012632	\N	AC	\N	5393
6618	Maria	Fernanda	Aguilar	Godinez	\N	68209924	\N	AC	5121	4653
6184	Yasmin	Yorleni	Valenzuela	Arreaga	\N	48738093	\N	AC	5118	4652
2241	Ericka	Jannett	Alegria	Rodas	\N	23868287	\N	AC	5128	4651
6517	Joaquin	Adolfo	Barrera	Paredes	\N	45521670	\N	AC	5135	4650
6858	Eddy	Estuardo	Romero	Alfaro	\N	47263857	\N	AC	\N	5394
6855	Berny	Andree	Dominguez	Ramirez	\N	88979180	\N	AC	418	5397
6814	Monica 	Pamela 	Catalan 	Meza	de Samayoa	79497993	\N	AC	5207	5318
5414	Karlo	Alexeyev	Reyes	Monroy	\N	48856614	\N	AC	5109	4649
7015	Willard 	Jairo	Alfaro	Recinos	\N	9536086	\N	AC	\N	5401
2371	Hector	Haroldo	Pereira	Rodas	\N	5017424	\N	AC	\N	5405
921	Blanca	Elena	Beteta	Sologaistoa	\N	5041392	\N	AC	\N	3629
1028	Ester	Magdali	Galvez	Garcia	\N	8403651	\N	AC	\N	482
1969	Lidia	Octavila	Herrera	Ruano	Quiñonez	4091957	\N	AC	\N	3576
1935	Ricardo	Nery	Chinchilla	Barrientos	\N	2586533	\N	AC	\N	5420
7019	Laura	Maria Carlota	Lopez	Rodriguez	\N	17235804	\N	AC	438	3039
6186	Flor	de Maria	Vasquez	\N	\N	51011328	\N	AC	\N	4708
292	Mariela	Aide	Gonzalez	Gonzalez	\N	6776256	\N	AC	\N	5424
2082	Marco	Antonio	Puga	Castellanos	\N	2222698	\N	AC	\N	5425
390	Yadira	Del Carmen	Bolaños	Del Villar	\N	30196094	\N	AC	\N	5435
1950	Flerida	Mariela	Sandoval	Madrigal	Garcia	13421379	\N	AC	\N	5436
1615	Rayza	Indiana	Rodriguez	Najera	Alva	4927230	\N	AC	\N	4170
3221	Regina	Del Rosario	Loarca	Morales	\N	8088144	\N	AC	\N	4565
2474	Lignen	Ubaldo	Peñate	Rodriguez	\N	42155495	\N	AC	\N	4761
4066	Karla	Johanna	Villagran	Hernandez	\N	33602255	\N	AC	\N	4555
1306	Cindy	Marcolfa	Cabrera	Mendez	Mendoza	16946928	\N	AC	\N	5439
1704	Elly	Alejandra	Beltran	Figueroa	\N	24316814	\N	AC	5151	5443
614	Rafael	Orlando	Morales	Arevalo	\N	12054917	\N	AC	\N	5444
5640	Jovita	Maribel	Sandoval	Argueta	\N	34802711	\N	AC	\N	5429
2303	Juan	Rene	Estrada	\N	\N	1059505	\N	AC	\N	5449
7025	Kendy	Marisol	Perez	Arreaga	\N	78766338	\N	AC	\N	5446
3467	Juan	Carlos	Santos	Valencia	\N	16958462	\N	AC	\N	5432
6873	Damaris	Lily	Garrido	Calderon	\N	79048854	\N	AC	\N	5428
6683	Lucrecia	Lisbeth	Valle	Vargas	\N	55503381	\N	AC	\N	5427
2379	Ana	Luisa	Leonardo	Zetina	\N	9378448	\N	AC	\N	5431
6607	Alba	Leticia	Gonzalez	Franco	\N	73319813	\N	AC	\N	5426
3217	Edith	Xiomara	Perez	\N	\N	35565934	\N	AC	\N	5430
1958	Gilda	Dolores	Garcia	Negrete	\N	1693427k       	\N	AC	\N	5452
2490	Alicia	Elizabeth	Matus	Burgos	\N	50814095	\N	AC	\N	5434
2286	Ahmed	\N	Aguilar	Escobar	\N	22455310	\N	AC	\N	5455
6376	Luis	Fernando	Perez	Barrera	\N	83609660	\N	AC	5138	4855
3284	Natalie	Susana	Ochoa	Palacios	\N	70298262	\N	AC	5110	4675
5432	Omar	Antonio	Orozco	Revolorio	\N	21067848	\N	AC	5101	4628
6934	Ingrid	Carolina	Vasquez	Casuy	\N	78839017	\N	AC	\N	4856
5265	Lesly	Madeley	Pineda	Corleto	\N	76551954	\N	AC	5167	5319
5353	Herberth	Andres	Rodriguez	Santizo	\N	43449220	\N	AC	5108	4854
5359	Ana	Victoria	Rivera	Villatoro	\N	70523258	\N	AC	5169	4853
6930	Maida	Aracely	Herrera	Donis	\N	50541978	\N	AC	\N	5453
7027	Virginia	Lucrecia	Mendez	Yanes	\N	51719517	\N	AC	\N	5388
6483	Milena	Veraly	Cordon	Fuentes	\N	27829324	\N	AC	\N	5457
2375	Blanca	Melissa	Mijangos	Berganza	\N	26979349	\N	AC	\N	5460
7033	Mirna	Violeta	Perez	Cobar	\N	38329891	\N	AC	\N	4956
7035	Eberth	Rene	Ventura	Yat	\N	19089201	\N	AC	\N	5465
6996	Elida	Mayuli	Perez	Escalante	de Barrios	21102732	\N	AC	\N	5374
6788	Zucely	Del Carmen	Carranza	Oliva	\N	49037064	\N	AC	365	5467
7039	Joseline	Zurama	Lopez	Tobar	\N	90138252	\N	AC	442	5472
7043	Andrea	Amarilis	Lima	Rodas	\N	92109616	\N	AC	\N	5392
6350	Fredy	\N	Colay	\N	\N	29419913	\N	AC	444	4916
5302	Marilyn	Virginia	Pellecer	Larios	\N	74358138	\N	AC	\N	5477
7052	Leiby	Noelia	Cornel	Lopez	\N	64104613	\N	AC	\N	4865
7048	Milvia	Arcely	Diaz	Alvarez	\N	38034719	\N	AC	\N	4858
7055	Luis	Pedro	Barrios	Araujo	\N	90783298	\N	AC	5203	4648
3543	Carlos	Alberto	Ovalle	Chavez	\N	2769867	\N	AC	\N	5478
6929	Javier	Antonio	Cetina	Castro	\N	66422841	\N	AC	\N	5327
7060	Mariana	Lili	Sanchez	Esteban	\N	94905215	\N	AC	\N	4720
7062	Jennifer	Gabriela	Dominguez	Alvarado	\N	35824719	\N	AC	\N	5481
7057	Oscar	Armando	Cruz	Calderon	\N	35240776	\N	AC	\N	5483
7064	Edith 	Maite	Hernandez	Molina	\N	63858614	\N	AC	\N	5334
7065	Miguel	Eduardo	Leon	Salazar	\N	53922204	\N	AC	\N	4717
7067	William	Armando	Martinez	Rodriguez	\N	19697805	\N	AC	5205	4863
6428	Edgar	Rolando	Morente	Castro	\N	11852577	\N	AC	\N	5415
7041	Ana 	Carolina	Barrios	Linares	\N	62963848	\N	AC	5204	5317
4543	Edwin	René	Espina	Donado	\N	7908776	\N	AC	\N	5170
4153	Maria	Silvia	Castillo	Mendoza	\N	519220K        	\N	AC	\N	5177
6203	Cleotilde	Magali	Samayoa	Cermeño	\N	7494076	\N	AC	\N	5164
4764	Sandro	Danilo	Cacoj	Bermudes	\N	17049148	\N	AC	\N	5163
6509	Leslly 	Amanda	Marroquin	Del Cid	\N	27544958	\N	AC	368	5486
5834	Mynor	Javier	Flores	Calvillo	\N	67520693	\N	AC	409	5489
6778	Brenda	Liseth	Aguilar	Barrera	\N	26643936	\N	AC	335	5492
6914	Alba	Patricia	Florian	Castellanos	\N	55434088	\N	AC	436	5484
6728	Menfil	Vitelio	Fuentes	Mendoza	\N	14184710	\N	AC	\N	5576
662	Alis	Marilis	García	Méndez	\N	29019923	\N	AC	392	5503
400	Ana	Dolores	Sance	Monroy	\N	19775857	\N	AC	\N	5501
2116	Ana	Maritza	Toledo	Villagran	\N	4783956	\N	AC	397	5510
1701	Angela	Beatriz	Villatoro	Bol	\N	19619707	\N	AC	450	5500
1013	Angela	\N	Gonzalez	Vasquez	\N	12059382	\N	AC	\N	5518
905	Brenda	Nineth	Chacon	Luna	Gonzalez	28417941	\N	AC	396	5502
1260	Brenda	Yanira	Lopez	Cordon	\N	15101320	\N	AC	386	5519
3231	Claudia	Maria	Enriquez	Chuc	\N	68123817	\N	AC	78	5505
975	Luvia	Ninnette	Sanchez	Gonzalez	Iriarte	47703652	\N	AC	342	5499
2299	Luis	Oscar	Diaz	Samayoa	\N	15309797	\N	AC	\N	5506
3211	Oscar	Felipe	Raimundo	Morales	\N	38574330	\N	AC	\N	5512
990	Patricia	Eugenia	Sacayon	Monzon	\N	5712491	\N	AC	\N	5513
2176	Reina	Leticia	Garza	Asencio	Garcia	26749580	\N	AC	\N	5515
2388	Sandra	Patricia	Briones	Tello	Súchite	6837859	\N	AC	\N	5517
2123	Silvia	Patricia	Arriaga	Herrera	Obando	24428221	\N	AC	376	5523
781	Walter	Edgardo	Reyes	Carrillo	\N	12499633	\N	AC	\N	5524
1291	Diana	Michell	Garcia	Ramirez	\N	40573389	\N	AC	403	5520
1236	Alfredo	Joaquin	Alvarado	Chich	\N	7069731	\N	AC	\N	5532
1532	Antonio	Miguel	Diaz	Rosales	\N	1455443	\N	AC	109	5529
1828	Elida	Etelvina	Fuentes	Mendez	Garcia	40817008	\N	AC	\N	5526
1219	Elvis	Edgardo	Mazariegos	Ortiz	\N	19556519	\N	AC	\N	5534
2427	Hokabeth	Ivonne	García Salas	Mazariegos	Rodas	55525016	\N	AC	411	5530
515	Juan	Carlos	Flores	Quinti	\N	18282253	\N	AC	109	5535
527	Maria	Griselda	Galindo	Lopez	\N	23139242	\N	AC	303	5542
376	Nury	Yesenia	Reyes	Morales	Alegria	36029297	\N	AC	394	5545
691	Porfirio	\N	Olivares	Lemus	\N	39315703	\N	AC	\N	5546
1896	Raul	Cecilio	Velasquez	Reyes	\N	12404365	\N	AC	5176	5547
1309	Rudy	Oswaldo	Vega	Escobar	\N	39334155	\N	AC	\N	5548
2378	Tania	Claricel	Luna	Del Valle	De Aguilar	33096554	\N	AC	\N	5553
2408	Lesther	Gabriel	Ulín	Sánchez	\N	55212298	\N	AC	89	5539
2353	Victor	Manuel	Gonzalez	Hernandez	\N	44962118	\N	AC	\N	5555
560	Lilian	Amparo	García	González	Loarca	8352828	\N	AC	\N	5541
3224	Luis	Dagoberto	Guerra	Santizo	\N	17214521	\N	AC	\N	5543
3476	Ana	Maria	Guzman	Davila 	Lopez	40669246	\N	AC	\N	5531
5606	Brenda	Cecilia	Mendez	Paz	\N	51062917	\N	AC	351	5550
1586	Zoila	Elizabeth	Ramirez	Ruiz	\N	12368539	\N	AC	301	5554
1247	Marcela	Ixmukane	Matias	Jeronimo	\N	26371189	\N	AC	\N	5552
239	Lorenzo	David	Cupul	Luna	\N	7658990	\N	AC	\N	5551
2333	Carlos	Leonel	Robles	Perez	\N	5116856	\N	AC	\N	4246
5121	Lesly	Kokin	Chon	Ruiz	\N	47707879	\N	AC	\N	5556
7070	Joaquín 	Rodrigo	Flores	Guzmán	\N	6705154	\N	AC	\N	545
7071	Nidia	Sebastiana	Ralac	Abac	\N	40543994	\N	AC	\N	5566
6166	Walter	Adolfo	Aristondo	Argueta	\N	63067811	\N	AC	369	5559
5553	Yves	Yaacov Alejandro	Herrera	Poroj	\N	80947158	\N	AC	371	5560
7032	Otto	Osvaldo	Iscapari	Yaguas	\N	24060496	\N	AC	440	5561
6492	Emanuel	\N	Villalobos	Lopez	\N	84287624	\N	AC	344	5562
1593	Cristian	Eduardo	Mejia	Doradea	\N	40731170	\N	AC	639	5563
2423	Meyko	Leonardo	Lau	López	\N	64860434	\N	AC	343	5564
2351	Hortensia	Elisa	Castañón	Lopez	Perez	61823325	\N	AC	302	5577
3218	Guadalupe	\N	García	Bol	\N	760873k        	\N	AC	382	5578
5139	Eliel	Iddai	Gomez	Saravia	\N	76847829	\N	AC	315	5579
2311	Maria	Elena	Jacobo	Ramirez	\N	8468613	\N	AC	21	5580
3222	Exolina	\N	Monzón	Ruano	\N	40024725	\N	AC	5190	5581
5129	Aroldo 	\N	Pineda	Y Pineda	\N	53238354	\N	AC	337	5582
2367	Clemente	\N	Rivera	Virula	\N	39111288	\N	AC	5194	5583
2417	Sandra	Abigail	Ruano	Morales	\N	39444104	\N	AC	5202	5584
5366	José	Eduardo	Alvarez	Enriquez	\N	61960640	\N	AC	354	5586
5898	Arturo	Eduardo	Barrios	Nowell	\N	24284343	\N	AC	353	5587
3212	Edgar	Rolando	Bonilla	Loarca	\N	2551853	\N	AC	313	5588
2317	Maria	Elizabeth	Marin	Quintanilla	\N	23556528	\N	AC	5168	5589
2152	Nery	Josue	Lucero	Chavarria	\N	15978273	\N	AC	\N	5593
1810	Gloria	Edith	Ochoa	Zetino	\N	8334404	\N	AC	\N	5592
1667	Rudin	Rene	Gonzalez	Leiva	\N	2310279	\N	AC	\N	5594
2066	Rosa	Maria	Anton	Estrada	\N	46934545	\N	AC	5191	5567
6955	Ovidio	Sigilfreo	Urizar	Espaderos	\N	10192115	\N	AC	\N	5575
1515	Idonaldo	Arevael	Fuentes	Fuentes	\N	6255574	\N	AC	\N	5598
2412	Mirna	Idalia	Giron	Merida	Avila	30546648	\N	AC	322	5568
2433	Samuel	\N	Villalta	Aguilar	\N	7287585	\N	AC	\N	5601
801	Luis	Fernando	Hurtarte	Chacon	\N	34943005	\N	AC	405	5602
1205	Hugo	Roberto	Saavedra	\N	\N	5748259	\N	AC	\N	5599
1886	Aricela	\N	Hurtarte	Sandoval	\N	33214352	\N	AC	5112	5569
2065	Cesar	Rolando	Alvarez	Arana	\N	19601026	\N	AC	114	5603
2428	Marilsa	Guadalupe	Espinoza	Muralles	\N	34129065	\N	AC	383	5604
6796	Francisco	Javier	España	Calderon	\N	60250860	\N	AC	\N	5590
6898	Marta	Juana	Tojín	León	\N	10293787	\N	AC	\N	5605
2420	Carlos	\N	Sun	Chiroy	\N	64806170	\N	AC	27	5570
1657	Alma	Maria	Martinez	Ambrocio	\N	26299062	\N	AC	\N	5606
2350	Victor	Rodolfo	Carrillo	Carrera	\N	5030145	\N	AC	\N	5608
2242	Jeydi	Maribel	Estrada	Montoya	Veliz	14181541	\N	AC	\N	5607
2344	Griselda	Patricia	Lopez	Maldonado	Sentes	7193238	\N	AC	\N	5609
958	Fatima	Desiree	Yat	Paz	\N	7281277	\N	AC	\N	5611
5434	Efraín 	\N	Ruano	Salguero	\N	3372723	\N	AC	166	5614
3226	Norma	Patricia	Villatoro	Castillo	Avalos	25258702	\N	AC	391	5619
2291	Herber	Mauricio	Bojorquez	Bojorquez	\N	16483723	\N	AC	384	5617
1353	Mirna	Del Rosario	Esteban	Lopez	\N	30853087	\N	AC	50	5616
431	Alexander	Jose    Francisco	Pacay	Mendoza	\N	14921065	\N	AC	\N	5549
295	Oscar	Fernando	Donis	Orellana	\N	6245234	\N	AC	7003	5615
6701	Mirna	Liseth	Lau	Quan	España	32217978	\N	AC	\N	5623
776	Alejandra	Dalila	Falco	Aguilar	\N	41212304	\N	AC	\N	5625
7031	Ramón	Augusto	Zetina	Mendez	\N	2189933	\N	AC	\N	5626
2430	Miriam	Argentina	Gutierrez	Reyes	Del Cid	24714682	\N	AC	5179	4676
7076	Heber	Neftali	Rodriguez	Estrada	\N	55325262	\N	AC	\N	5627
7074	Regina	Eugenia	Zetina	Lobos	\N	11953896	\N	AC	\N	5558
7079	Jorge	Luis	Torres	Flores	\N	69871795	\N	AC	\N	4870
7078	Loussie	Marine	Deyet	Rodriguez	\N	56081588	\N	AC	\N	5628
7082	Grisha	Siomara	Ochoa	Ramos	\N	76788253	\N	AC	5206	5316
6888	Amarilis	\N	Acevedo	Rodriguez	\N	5530873	\N	AC	\N	5630
6918	Oliver	Antonio	Martinez	Villatoro	\N	3337294	\N	AC	\N	5631
7001	Rafael	\N	Reyes	Roldan	\N	2722976	\N	AC	\N	5632
2193	Emerita	\N	Garza	Asencio	\N	24512338	\N	AC	5143	4862
7084	Ileana	Lisbeth Nedelia	Barrios	Gean	\N	37099299	\N	AC	449	5641
7086	Otto	Ronaldo	Gonzalez	Peña	\N	1167014	\N	AC	\N	5642
1398	Maria	Odilia	Jerez	Argueta	\N	5250420	\N	AC	\N	5447
1613	Sheila	Elizabeth	Garcia	Morales	\N	22931236	\N	AC	\N	4104
800	Carlos	Humberto	Sandoval	Orellana	\N	7512775	\N	AC	\N	3503
173	Norma	Yesenia	Morales	Molina	Muñoz	2442658k       	\N	AC	390	5643
2288	Alba	Rosa	Alburez	Galvez	\N	19918429	\N	AC	3015	5645
343	María	Teresa	Martínez	Velásquez	\N	18393489	\N	AC	\N	5646
2431	Pablo	Leonel	Montenegro	Payes	\N	18263488	\N	AC	189	5647
7089	Candelario	Aparicio	Ros	Díaz	\N	23652020	\N	AC	\N	5652
6843	Mayra 	Elizabeth	Ignacio	Aceytuno	\N	88288323	\N	AC	5196	5678
6936	Dorcas	Elizabeth	Marroquin	Marroquin	\N	62735020	\N	AC	\N	5677
7093	Jorge	David	Winter	García	\N	45527210	\N	AC	\N	5656
5327	Edwin	Hernan	Marroquin	Lopez	\N	23860529	\N	AC	316	5690
6130	Edwin	Orlando	Rivas	Morales	\N	76785777	\N	AC	309	5689
6128	David	Daniel	Muñoz	Istupe	\N	72372648	\N	AC	314	5688
6900	Kelen	Yojana	Flores	Menjivar	\N	95006001	\N	AC	\N	5695
6611	Teresa	\N	Pineda	Hernandez	\N	82452911	\N	AC	311	5694
6225	Maria	Luciana	Ramirez	Ramirez	\N	85770787	\N	AC	333	5693
1563	Fernando	Dagoberto	Arango	Vasquez	\N	1896903	\N	AC	\N	5696
856	Lourdes	Maria	Amado	Reyes	\N	9492968	\N	AC	350	5697
3367	Juan	José	Miranda	Aguilar	\N	50706756	\N	AC	25	4901
6158	Sara	Marisol	Mejia	Alburez	\N	7794819	\N	AC	\N	5699
6160	Maria	Eugenia	Sandoval	Martinez	de Paz	1114980	\N	AC	\N	5698
5758	Obdulio	Saul	González	Gómez	\N	6286984	\N	AC	\N	5655
6763	Norma	Gricelda	Ayapan	Solis	\N	28749022	\N	AC	\N	5708
6390	Silvia	Lorena	Morales	Solorzano	de Ortiz	26299089	\N	AC	\N	5707
6886	Maria	Roselia	Tuyuc	Colaj	\N	23563125	\N	AC	\N	5706
6868	Ludia	Judith	Acan 	Calderon	\N	67241212	\N	AC	427	5686
6572	Karen	Ana Yenmi	Rodriguez	Cruz	\N	64302644	\N	AC	348	5710
5803	Paola	Maricruz	Valenzuela	Sales	\N	82300291	\N	AC	\N	5727
6401	Barbara 	Stefani	Lopez	Giron	\N	66912768	\N	AC	\N	5729
5777	Brenda	Beatriz	Barrios	Gutierrez	\N	8430365	\N	AC	\N	5728
4699	Monica	Fabiola	Castillo	Mendez	\N	21087792	\N	AC	\N	5731
6296	Merari 	Cristina	Cuxil	Alvarez	\N	43914624	\N	AC	\N	5719
6837	Wagner	Almendariz	Agustin	Perez	\N	18261884	\N	AC	\N	5720
1550	Natividad	\N	Diaz	Pineda	\N	42662184	\N	AC	150	5721
6587	Claudia	Liset	Monroy	Delgado	\N	53567978	\N	AC	\N	5722
1654	Silvia	Patricia	Reyes	Avila	\N	4921887	\N	AC	151	5723
6545	Lucy 	Maribel 	Garrido	Veliz	\N	50829084	\N	AC	\N	5724
2467	Juana	Del Transito	Ulban	Fajardo	de Colindres	1164007	\N	AC	\N	5726
4480	Hilda	Lucrecia	Castillo	Palma	\N	7457715	\N	AC	\N	5733
5281	Sayda	Vanessa	Arreaga	Medina	de Herrera	37072242	\N	AC	4010	5735
6872	Heidy	Beatriz	Chanchavac 	Garcia	\N	10791299	\N	AC	\N	5737
6356	Monica	Floridalma	Rojas	Ventura	\N	82367485	\N	AC	\N	5736
5201	Karen	Andrea	Porres	Molina	de Fuentes	14061821	\N	AC	\N	5739
2500	Magda	Lucrecia	Mejia	Arenas	\N	16653564	\N	AC	\N	5740
6850	Irma	Leticia	Poou	Pop	De Yat	19052634	\N	AC	\N	5741
3482	Evelin	Anaite	Fion-Lizama	Zetina	\N	54819539	\N	AC	\N	5743
5257	Linda	Adela Maria	Toledo	Landaverde	\N	46054693	\N	AC	\N	5745
6792	Sucely	Maybeli	Calderon	Aguilar	\N	66361362	\N	AC	\N	5746
509	Sonia	Marina	Ortiz	Vivar	Guerra	7664656	\N	AC	\N	5747
3622	Aminta	Eunice	Zuquino	Barrientos	\N	50793837	\N	AC	\N	5751
1272	Santos	\N	Gonzalez	Linares	\N	3210766	\N	AC	\N	5754
5404	Brandon	Alberto	Moran	Zepeda	\N	79777627	\N	AC	\N	5759
5267	Carmen	Madiesca	Sandoval	Alarcon	\N	52191222	\N	AC	\N	5762
5412	Dania	Aide	Lopez	Esquivel	\N	80346243	\N	AC	\N	5761
2426	Dideth	Indira	Garcia	Velasquez	\N	42709067	\N	AC	389	5685
5866	Josue	David	Vargas	San Jose	\N	54541743	\N	AC	395	5684
480	Karla	Susana	Garcia	Diaz	\N	1719329k       	\N	AC	75	5764
3254	Maria	Gabriela	Amezquita	Gamez	\N	24477419	\N	AC	4005	5766
6765	Luisa	Maria	Romero	Hurtarte	\N	93733259	\N	AC	328	5683
5208	Waldy	Nohemi	Mijangos	Berganza	\N	74276662	\N	AC	\N	5758
6634	Wendy	Leticia	Quich	Alvarado	\N	84988541	\N	AC	305	5767
6938	Rodrigo	Rafael	Mancilla	Castañeda	\N	72031832	\N	AC	441	5700
6962	Caterin	Gardenia	Pineda	Castillo	\N	89371038	\N	AC	433	5701
6964	Maria	Jose	Fuentes	Canel	\N	95698590	\N	AC	432	5681
6968	Boris	Armando	Ralda	Quijada	\N	56628412	\N	AC	\N	5769
6985	Byron 	Timoteo	Can	Paau	\N	9133992	\N	AC	\N	5770
6992	Mabelyn	Patricia	Palencia	Ramirez	\N	94918457	\N	AC	435	5680
1411	Fernando	\N	Giron	Cassiano	\N	2346230	\N	AC	\N	5772
7012	Manuel	Mardoqueo	Pop	Ac	\N	29215641	\N	AC	\N	5773
7017	Aura	America	Contreras	Ramos	\N	81804881	\N	AC	439	5679
7021	Brianda	Madelyn	Rodriguez	Mejicanos	\N	69677417	\N	AC	\N	5775
6590	Evelyn 	Xiomara	Cortez	Alvarez	\N	84336420	\N	AC	\N	5776
7037	Cesar	Isaac	Payes	Reyes	\N	16687736	\N	AC	\N	5777
7045	Anthony	Masson	Guerra 	Porres	\N	92976336	\N	AC	445	5640
7047	Carlos 	Fernando	Mazariegos	Dominguez	\N	68729952	\N	AC	446	5639
6339	Albadina	Rebeca	Piedrasanta	Ramirez	\N	6869424	\N	AC	\N	5780
6620	Ana	Eugenia	Avila	Perez	\N	68694954	\N	AC	\N	5781
1295	Henrry	Vinicio	Chiu	De Leon	\N	17824982	\N	AC	\N	5784
1374	Herbert	Gerardo	Quiñonez	Lopez	\N	18615279	\N	AC	\N	5785
4727	Ilma	Lili	Salazar	Cano	\N	21070814	\N	AC	\N	5786
3353	Ingrid	Marily	Veliz	Pinto	\N	28797787	\N	AC	\N	5787
666	Isabel	\N	Morales	Cordero	\N	20119607	\N	AC	\N	5789
760	Jorge	Maynor	Martinez	Garcia	\N	7491689	\N	AC	\N	5790
946	Jose	Enrique	Barrios	Pocasangre	\N	25230344	\N	AC	5074	5791
779	Ana	Gabriela	Rivera	Vasquez	\N	8541108	\N	AC	\N	5792
658	Jose	Guillermo	Morales	Ruano	\N	8519250	\N	AC	\N	5794
6744	Axel 	Samael	Espino	Martinez	\N	24195529	\N	AC	\N	5797
5445	Carmen	Estela	Ramos	Castañeda	\N	26657074	\N	AC	\N	5800
6542	Carmen	Magdalena	Chen	Toc	\N	24876402	\N	AC	\N	5802
4823	Lilian 	Thelma Eugenia	Montoya	Mendoza	\N	13580485	\N	AC	\N	5803
3403	Julio	\N	Seb	Coc	\N	50168584	\N	AC	\N	5806
516	Damaris	Eunice	Alonzo	Diaz	\N	20331231	\N	AC	\N	5808
6551	Luis	Fernando	Moscoso	Moreno	\N	52095614	\N	AC	\N	5809
5437	Luis	Izaias	Cochoy	Alva	\N	13343378	\N	AC	\N	5810
5879	Elder 	Humberto	Bardales	Alvarado	\N	19773773	\N	AC	\N	5811
4502	Magda	Elizabeth	Montenegro	Hernández	\N	26734958	\N	AC	\N	5813
6514	Maria	Albertina	Pop	Tzub	\N	42842883	\N	AC	\N	5815
1350	Maria	Del Carmen	Escobar	Salazar	\N	40850544	\N	AC	\N	5816
3359	Marleani	Lilibeth	Coloch	Cuja	Corazón	45639213	\N	AC	\N	5819
4929	Ervin	Estuardo	Rosales	Vasquez	\N	12892548	\N	AC	\N	5817
286	Flora	Del Carmen	Woc	Monterroso	Lopez	24413526	\N	AC	\N	5823
6853	Rosa	Maria	Perez	Corzo	de Salazar	39142051	\N	AC	\N	5826
740	Roxana	Marilu	Lopez	Moreno	\N	38120747	\N	AC	58	5828
6637	Ruth	Nohemi	del Aguila	Guzman	\N	16137620	\N	AC	\N	5829
1224	Sergio	Alejandro	Molina	Castellanos	\N	44574053	\N	AC	92	5831
4934	Francisco 	Eduardo 	De Leon	Mejia	\N	34032622	\N	AC	\N	5830
2489	Sergio	Enrique	Chenal	Garcia	\N	12667749	\N	AC	\N	5833
4640	Willard	Amilcar	Lopez	Reyes	\N	12668087	\N	AC	\N	5834
4387	Magda	Lucrecia	Reyes	\N	\N	38565366	\N	AC	\N	5814
6780	Gisela	Marisol	Cardona	Arreaga	\N	23362081	\N	AC	\N	5836
2453	Laura	Estela	Obregon	Samayoa	\N	7604505	\N	AC	\N	5798
2487	Xinia	Carolina	Ruiz	Montejo	\N	46236635	\N	AC	\N	5837
2376	Gladys	Corina	Velásquez	Morales	\N	40539806	\N	AC	\N	5839
2368	Jorge	Eduardo	Sazo	Luna	\N	16941918	\N	AC	118	5840
82	Gustavo	Guillermo	Garcia	\N	\N	24821020	\N	AC	\N	5843
3326	Holger	Anibal	Vargas	Aldana	\N	5330165	\N	AC	\N	5844
64	Marco	Antonio	de León	Noriega	\N	23038217	\N	AC	\N	5848
1338	Miguel	Francisco	Juárez	Pú	\N	10227970	\N	AC	\N	5849
442	Norma	Elizabeth	Orozco	Fuentes	Fuentes	14212633	\N	AC	\N	5850
1046	Rosa	Susana	Perez	Santiago	Natareno	7867026	\N	AC	\N	5851
1819	Clara	Maribel	Hernandez	Toledo	\N	31970885	\N	AC	\N	5854
6593	Hans	Alberto	Ruiz	Guzman	\N	90045416	\N	AC	5148	4637
1270	Arnoldo	Hernan	Mazariegos	\N	\N	935350k        	\N	AC	5105	5778
924	Antulio	Israel	Felix	Velásquez	\N	22954902	\N	AC	\N	5774
7095	María	Del Pilar	Aldana	Sáenz	\N	28149521	\N	AC	\N	5861
1793	Henry	Yubinni	Pineda	Ochaeta	\N	9375015	\N	AC	\N	5862
2434	Carmen	Lucrecia	Arredondo	Cospin	\N	30322294	\N	AC	5016	5863
4638	Fabiola	Patricia	Rivera	Cruz	\N	26945266	\N	AC	\N	5864
5666	Fredy	Obed	Ramos	Godinez	\N	23944668	\N	AC	\N	5867
6960	Keyla	Shaaron	Rivera	Ortiz	\N	94194815	\N	AC	431	5682
898	German	Oswaldo	Pop	Orenos	\N	28467620	\N	AC	\N	5869
208	Víctor	Rubén	Carías	Monterroso	\N	45352275	\N	AC	5102	5852
2488	Haidei	Amarilis	Cu	Isem	Sanchez	25173251	\N	AC	\N	5847
6755	Juan	Manuel	Castillo	Marroquin	\N	10641041	\N	AC	\N	5795
1425	Melvin	Rene	Esquivel	Arias	\N	5800986	\N	AC	\N	5824
7096	Edwin 	Alfredo 	Alvarez	Lopez	\N	22505458	\N	AC	\N	5873
7097	José	Fernando	España	\N	\N	36812218	\N	AC	\N	5874
7098	José	Raul	Rodriguez	Noriega	\N	42662982	\N	AC	\N	5875
4488	Carol	Edith	Monroy	Giron	\N	17510341	\N	AC	\N	5876
6748	Maria	del Rosario	Mendez	Garcia	de Zamora	7424914	\N	AC	\N	5879
1160	Erick	Leonel	Hernandez	Aguilar	\N	6800408	\N	AC	345	5884
5822	Leticia	Alejandra	Lopez	Diaz	\N	58148787	\N	AC	5140	5882
6776	Sara	Odilia	Aguilar	Barrera	\N	34431322	\N	AC	336	5853
3183	Edwin	Alberto	Montenegro	Avila	\N	39338991	\N	AC	448	5886
2326	Zoila	America	Ordoñez	Gonzalez	Samayoa	1533936k       	\N	AC	\N	5887
2349	Aurelia	Eugenia	Ajpop	Garcia	\N	29354781	\N	AC	\N	5748
1349	Juan	Ricardo	Perez	Yax	\N	22405941	\N	AC	4017	5752
2356	Haroldo	\N	Jalal	Chub	\N	25753002	\N	AC	\N	5750
1075	Miriam	Jannette	Monzon	Rivas	Alvarado	53458745	\N	AC	367	5757
2290	Angel	Gabriel Alejandro	Alegria	Meza	\N	44001991	\N	AC	5172	5885
7090	Jober	Samuel	Herrera	Ríos	\N	2656954k       	\N	AC	\N	5888
3385	Cesar	Alfredo	Sagastume	Bojorquez	\N	12556696	\N	AC	55	5807
2484	Martina	Elizabeth	Juárez	Nicolás	\N	34809767	\N	AC	\N	5821
1432	Mynor	Eliseo	Elias	Ogaldez	\N	3323897	\N	AC	\N	5865
2329	Otto	Anibal	Recinos	Portillo	\N	12544639	\N	AC	\N	3483
782	Maria	Victoria	Hernandez	Batres	de Leon	8016739	\N	AC	\N	5872
6893	Marco	Tulio	Payés	Reyes	\N	7243871	\N	AC	\N	5846
3225	Otto	Emmanuel	Schumann	Callejas	\N	1637116K       	\N	AC	\N	5825
1871	Oddet	Benony	Orozco	Sanchez	\N	19703872	\N	AC	\N	5891
6870	Magda	Leticia	Garcia	Tezo	\N	41119916	\N	AC	\N	5892
7100	Jairo 	Alexander	Orellana	Alonzo	\N	72644761	\N	AC	\N	4994
2019	Milagro	\N	Lopez	Aguilar	\N	12436232	\N	AC	\N	5893
6824	Ernesto	Salvador	Flores	Jerez	\N	40028542	\N	AC	\N	3003
7102	Alba	Noemi	Alvarez	\N	\N	59708956	\N	AC	\N	5138
7104	Rita	Cristina	Femenias	Valenzuela	\N	9731040	\N	AC	\N	4646
7106	Ruben	Dario 	Herrera	Fajardo	\N	7310854	\N	AC	451	5894
7099	Asly	Violeta	Sandoval 	Aguirre	\N	51174685	\N	AC	\N	5929
2278	Aura	Marina	Perez	Calan	Martinez	19919328	\N	AC	148	5933
\.


--
-- TOC entry 2572 (class 0 OID 16505)
-- Dependencies: 223
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proveedores (cod_proveedor, nit, direccion, telefono, nombre_contacto, activo) FROM stdin;
1	123456789	ZONA 1	578457	PROVEEDOR 1	t
2	123555555	ZONA 9	578451259	PROVEEDOR 2	t
\.


--
-- TOC entry 2574 (class 0 OID 16513)
-- Dependencies: 225
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
-- TOC entry 2576 (class 0 OID 16521)
-- Dependencies: 227
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
-- TOC entry 2597 (class 0 OID 17589)
-- Dependencies: 248
-- Data for Name: rol_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rol_usuario (id, rol, nombre) FROM stdin;
12	Admin	admin
\.


--
-- TOC entry 2578 (class 0 OID 16526)
-- Dependencies: 229
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
-- TOC entry 2580 (class 0 OID 16534)
-- Dependencies: 231
-- Data for Name: tipo_dependencia_institucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_dependencia_institucion (cod_tipo_dependencia_institucion, descripcion, cod_estatus, abreviatura) FROM stdin;
\.


--
-- TOC entry 2582 (class 0 OID 16539)
-- Dependencies: 233
-- Data for Name: tipo_imagen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_imagen (cod_tipo_imagen, nombre_tipo_imagen, orden, activo) FROM stdin;
\.


--
-- TOC entry 2584 (class 0 OID 16544)
-- Dependencies: 235
-- Data for Name: tipo_mantenimiento_reparacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_mantenimiento_reparacion (cod_tipo_mant_rep, descripcion, mant_repa) FROM stdin;
1	Cambio de pastillas	1
2	Reparacion de faja del tiempo	2
\.


--
-- TOC entry 2586 (class 0 OID 16549)
-- Dependencies: 237
-- Data for Name: tipo_tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_tipo (cod_tipo_tipo, nombre_tipo_tipo, orden, activo) FROM stdin;
4	Pick Up	\N	t
5	Jeep	\N	t
6	Camioneta	\N	t
7	Automovil	\N	t
8	Microbus	\N	t
9	Motocicleta	\N	t
10	Camion	\N	t
\.


--
-- TOC entry 2588 (class 0 OID 16554)
-- Dependencies: 239
-- Data for Name: tipo_uso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_uso (cod_tipo_uso, nombre_tipo_uso, orden, activo) FROM stdin;
6	Particular	\N	t
\.


--
-- TOC entry 2590 (class 0 OID 16559)
-- Dependencies: 241
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
-- TOC entry 2595 (class 0 OID 17581)
-- Dependencies: 246
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id, nombre, password) FROM stdin;
1	admin	8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918
\.


--
-- TOC entry 2592 (class 0 OID 16564)
-- Dependencies: 243
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vehiculo (cod_vehiculo, placa, nit, poliza, direccion, cod_municipio, cod_departamento, nombre, modelo, cod_tipo_uso, chasis, cod_tipo_tipo, cod_marca, cod_linea, vin, centimetros_cubicos, cilindros, toneladas, titulo, tarjeta_circulacion, cod_color, no_asientos, no_inventario_registro, cod_persona_asignacion, cod_pueston, no_motor, orden, activo) FROM stdin;
64	P0511DFF	17820197	1916000609	7 ave 10-35 zona 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	MM7UNYOW200430512	4	6	12		2499	4	1		1102825	4	5		\N	\N	WLAT715871	\N	t
65	P0432BCP	17920197	2512	7 AVE.10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V4Y4100342	5	5	5		1298	4	0		1145780	24	5		\N	\N	G13BB664721	\N	t
66	P0510DFF	17820197	1916000609	7 AVE. 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	MM7UNYOW200430452	4	6	12		2499	4	1		1075812	9	5		\N	\N	WLAT715677	\N	t
68	P0146DPX	17820197	1073161	7 AVE. 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2009	6	MR0FR22G3900531231	4	4	6		2494	4	1		1073161	13	5		\N	\N	2KD7637988	\N	t
67	P0400BCP	17820197	2910002651	7 ave. 10-35 zona 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V914100400	5	5	5		1328	4	0		1090311	6	4		\N	\N	M13A-1023980	\N	t
69	P0688CWL	17820197	1910000389	7 AVE. 10-35, ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	MM7UNY0W200389531	4	6	12		2499	4	1		1077461	31	5		\N	\N	WLAT-569270	\N	t
71	P0608BCP	17820197	1740010250	7AVE. 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	VZN185-0317278	6	4	20		3378	6	0		1066083	32	6		\N	\N	5VZ-11081229	\N	t
72	P0617DGQ	17820197	1105597	7 AVE. 10-35,ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	JTEBU17R488096439	6	4	20		3955	6	0		1105597	13	6		\N	\N	1GR-5430710	\N	t
73	P0145DPX	17820197	2168005994	7 AVE.10-35, ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2009	6	MR0FR22G090531073	4	4	6		2494	4	1		1162735	13	5		\N	\N	2KD7635532	\N	t
70	P0343BGY	17820197	2324004684	7 AVE. 10-35 , ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2005	6	3N1JH01S1ZL115318	7	3	26		1600	4	0		1043672	4	5		\N	\N	Q138-660	\N	t
75	P0143DPX	17820197	2518032182	7 AVE. 10-35,ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL 	2009	6	MR0FR22G890531502	4	4	6		2494	4	1		1048203	13	5		\N	\N	2KD7642462	\N	t
76	P0404BCP	17820197	2312003967	7 AVE. 10-35,ZONA 1	17	2	INSTITUTO DE LA DEFNSA PUBLICA PENAL	2003	6	3N1EB31S3ZK112690	7	3	22		4	4	0		1173702	33	5		\N	\N		\N	t
77	P0399BCP	17820197	1910001488	7 AVE.10-35, ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JM7SKYO2100105001	8	6	28		2184	4	0		1153744	4	15		\N	\N	R2-823733	\N	t
78	P0713DSC	17820197	1910001452	7 AVE. 10-35,ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNY08100149083	4	6	11		2892	4	1		1069193	35	5		\N	\N	W9AT-101974	\N	t
79	P0402BCP	17820197	115	7 AVE. 10-35,ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JM7BJ10M100112737	7	6	14		1598	4	0		1071995	31	5		\N	\N	ZM-340501	\N	t
80	P0106FPY	17820197	2483507856	7 AVE. 10-35, ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V1E4101305	5	5	13		1328	4	0		3836796	20	4		\N	\N	M13A-2333135	\N	t
82	P0610FQY	17820197	2674502191	7 AVE. 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JTEBU4JR9E5162524	6	4	20	JTEBU4JR9E5162524	3956	6	0		3927201	29	7		\N	\N	1GR-A867729	\N	t
60	P0145GPP	17820197	2997500037	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2017	6	JN1TC2E26Z0010968	8	3	4	JN1TC2E26Z0010968	2500	4	0		5547238	4	15		\N	\N	YD25409368A	\N	t
74	P0144DPX	17820197	1136059	7 AVE. 10-35, ZONA 1	17	2	DEFENSA PUBLICA PENAL	2009	6	MROFR22GX90531937	4	4	6		2494	4	1		1136059	13	5		\N	\N	2DK7648607	\N	t
61	P0422BCP	17820197	2513	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33VXY4100734	5	5	5		1298	4	0	138047	1173329	24	5		\N	\N	G13BB672476	\N	t
62	P0164CYV	17820197	2325003211	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	3N1JH01S1ZL116338	7	3	24		1600	4	0	405200345996	1150387	43	5		\N	\N	Q169956	\N	t
92	P0695DFH	1782019-7	3006004415	7a. avenida 10-35 zona 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	JN1CNUD22Z0009909	4	3	8		3000	4	1		1075902	15	5		\N	\N	ZD30-044840K	\N	f
81	P0398BCP	17820197	\N	7 AVE. 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNY08100147762	4	6	11		2892	4	1		1113900	4	5		\N	\N	W9AT-101219	\N	t
90	P0418BCP	1782019-7	2831011037	7a. avenida 10-35 zona 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2002	6	3N1E831S3ZK110292	7	3	22		1597	4	0	40520174448	1075350	33	5		\N	\N	GA16-376257P	\N	f
91	P0689CWL	1782019-7	1915000389	7a. avenida 10-35 zona 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	MM7UNY0W200389381	4	6	11		2499	4	1		1068016	4	5		\N	\N	WLAT-568284	\N	f
93	P0695DFH	17820197	3006004415	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	JN1CNUD22ZOOO9909	4	3	8		3000	4	1		1075902	15	5		\N	\N	ZD30044840K	\N	t
95	P0396BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212289	5	5	34		1298	4	0		1122728	8	5		\N	\N	G13bas637081	\N	t
97	M0899DHT	17820197	2293508375	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	LWBPCJ1F2E1004072	9	7	19	LWBPCJ1F2E1004072	125	1	0		4018895	12	2		\N	\N	WH156FMI2*13G74725	\N	t
94	P0410BCP	17820197	1910001451	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNY08100147185	4	6	11		2892	4	1		1154536	4	\N		\N	\N		\N	t
63	P0146GPP	17820197	2997500116	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2017	6	3N6CD33B4ZK374937	4	3	37	3N6CD33B4ZK374937	2500	4	1		5547239	14	5		\N	\N	YD25 661441P	\N	t
96	P0605BCP	17820197	3983	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	1997	6	1GTEK14R8VZ527463	4	9	23		5700	8	1		0672239	42	3		\N	\N	TVZ527463	\N	t
98	M0898DHT	17820197	2293507166	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	LWBPCJ1FE1002463	9	7	19	LWBPCJ1FE1002463	125	1	0		4018894	12	2		\N	\N	WH156FMI2*13F73179	\N	t
99	P0406BCP	17820197	1910001452	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNY08100149702	4	6	18		2892	4	1		1159830	4	3		\N	\N	W9AT102307	\N	t
100	P0409BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212277	5	5	34		1298	4	0		1131974	7	4		\N	\N	G13BAS637141	\N	t
101	P0430BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212290	5	5	34		1298	4	0		1080332	8	5		\N	\N	G13BAS637127	\N	t
102	P0609FQY	17820197	2704501543	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	MR0FR22G4E0713630	4	4	6		2494	4	1		3927200	13	5		\N	\N	2KDS292490	\N	t
103	P0479CZN	17820197	2915006559	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	JS3JB43V364300034	5	5	5		1328	4	0		1085910	19	4		\N	\N	M13A1652093	\N	t
132	P416BCP	17820197	316	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	RZN148-0006943	4	4	6		2446	4	1		1144199	22	3		\N	\N	2RZ-2149738	\N	t
106	P0417BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212285	5	5	34		1298	4	\N		1077257	38	5		\N	\N	G13BAS637133	\N	t
107	P0403BCP	17820197	3511	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	RZN148-0006149	4	4	6		2446	2446	1		1146240	37	3		\N	\N	2RZ-2041064	\N	t
108	P0216CYP	17820197	115	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JM7BJ10M100112648	7	6	14		1598	4	\N		1045850	9	5		\N	\N	ZM-338906	\N	t
109	P0101FPY	17820197	2483507856	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V8E4101270	5	5	13		1328	4	\N		3836791	26	4		\N	\N	M13A-2332843	\N	t
110	P0420BCP	17820197	1910001452	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNYO8100149510	4	6	18		2892	4	1		1092236	10	3		\N	\N	W9AT-102177	\N	t
111	P0412BCP	17820197	1118103	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	RZN148-0006161	4	4	6		2446	4	1		1118103	9	3		\N	\N	2RZ-2048223	\N	t
112	P0407BCP	17820197	2513	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V5Y4100723	5	5	5		1298	4	\N		1118134	20	5		\N	\N	G13BB671830	\N	t
113	P0367BFK	17820197	1910001488	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JM7SKY02100105009	8	6	28		2184	4	\N		1098246	4	15		\N	\N	R2-823785	\N	t
114	P0425BCP	17820197	7182	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	RZN148-0007116	4	4	6		2446	4	1		1057285	22	3		\N	\N	2RZ-2174150	\N	t
115	P0413BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V614100404	5	5	5		1328	4	\N		1104700	6	4		\N	\N	M13A-1024576	\N	t
116	M020BPS	17820197	1996001974	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	LC6PCJG9160807597	9	5	31		125	1	\N		1112696	28	2		\N	\N	157FMI-3*P0001562*	\N	t
117	P0618DGQ	17820197	1747002168	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	JTFJS02P670010140	8	4	29		2494	4	1		1150996	9	15		\N	\N	2KD-1605621	\N	t
119	P0102FPY	17820197	2483507856	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V8E4101284	5	5	13		1328	4	\N		3836792	25	4		\N	\N	M13A-2332993	\N	t
120	P0104FPY	17820197	2483507857	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V1E4101028	5	5	13		1328	4	\N		3836794	30	4		\N	\N	M13A2330716	\N	t
118	P0421BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V514100412	5	5	5		1328	4	\N		1145116	6	4		\N	\N	M13A-1025188	\N	t
121	P0154DPX	17820197	2168005983	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2009	6	MR0FR22G490530928	4	4	6	MR0FR22G490530928	2494	4	\N		1034414	13	5		\N	\N	2KD7632107	\N	t
122	P0411BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212280	5	5	34		1298	4	\N		1173292	7	5		\N	\N	G13BAS637140	\N	t
123	P0414BCP	17820197	2513	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V7Y4100738	5	5	5		1298	1298	\N		1099811	20	5		\N	\N	G13BB672629	\N	t
124	P0429BCP	17820197	2513	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V1Y4100718	5	5	5		1298	4	\N		1173553	24	\N		\N	\N	G13BB671553	\N	t
125	P611FQY	17820197	2674502407	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	MROFR22G5E0772718	4	4	6	MROFR22G5E0772718	2494	4	1		3927202	13	5		\N	\N	2KDA382677	\N	t
126	P0243DKB	17820197	3007005999	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	MM7UNYOW380659787	4	6	9		2500	4	1		1036848	21	5		\N	\N	WLAT850346	\N	t
127	P0428BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V314100392	5	5	5		1328	4	\N		1171686	6	4		\N	\N	M13A-1023548	\N	t
128	P0408BCP	17820197	115	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JM7BJ10M100112728	7	6	14		1598	4	\N		1135188	34	5		\N	\N	ZM-340393	\N	t
129	P0433BCP	17820197	2511	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V4Y4100793	5	5	5		1298	4	\N		1109179	6	5		\N	\N	G13BB675238	\N	t
130	P0103FQY	17820197	2483507876	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V9E4101665	5	5	13		1328	4	\N		3836793	20	4		\N	\N	M13A2335440	\N	t
134	P0607BCP	17820197	3310	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	1998	6	VSSZZZ1LZWR022802	7	10	\N		1984	4	\N		0716276	27	\N		\N	\N	AGG054708	\N	t
135	P049DKB	17820197	2167003427	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	JTDBT933481164531	7	4	21		1496	4	\N		1107478	41	5		\N	\N	1NZ4598335	\N	t
137	P0126DHK	17820197	3007004403	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	MM7UNY0W380647578	4	6	9		2500	4	\N		1071199	39	5		\N	\N	WLAT 820275	\N	t
105	C0608BHW	17820197	2967006758	7 AVE 10-35 ZONA 1	\N	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	JHFAF03H289000390	10	8	35		4009	4	3		1080306	16	3		\N	\N	W04DJ21527	\N	t
131	P0105FPY	17820197	2483505440	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2014	6	JS3JB43V4E4100956	5	5	13		1328	4	\N		3836795	30	4		\N	\N	M13A-2330278	\N	t
133	P0427BCP	17820197	3892	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	VSESJS00VNA212286	5	5	34		1298	4	\N		1122403	38	5		\N	\N	G13BAS637132	\N	t
138	P0423BCP	17820197	2510	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V9Y4100241	5	5	5		1298	4	\N		11122576	25	5		\N	\N	G13BB660012	\N	t
136	P0478CZN	17820197	2915006559	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2006	6	JS3JB43V064300055	5	5	13		1328	4	\N		1164866	19	4		\N	\N	M13A-1654914	\N	t
139	P0616DGQ	17820197	2167002928	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2007	6	JTFJS02P370009799	8	4	29		2494	4	\N		1168930	9	15		\N	\N	2KD-1588983	\N	t
140	P0419BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43VX14100406	5	5	5		1328	\N	\N		1134893	11	4		\N	\N	M13A-1024540	\N	t
142	P0366BFK	17820197	2831011037	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2002	6	3N1EB31S3ZK110471	7	3	22		1597	4	\N		1058582	33	5		\N	\N	GA16-882123P	\N	t
143	P0401BCP	17820197	1910001451	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	MM7UNY08100147295	4	6	18		2892	4	\N		1081567	10	3		\N	\N	W9AT-101079	\N	t
144	P0147GPP	17820197	29975005893	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2017	6	JN1TC2E26Z0011557	8	3	4		2500	2500	\N		5547240	4	15		\N	\N	YD25411563A	\N	t
145	P0242DKB	17820197	3007005999	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	MM7UNY0W380659354	4	6	9		2500	4	1		1167728	21	5		\N	\N	WLAT843909	\N	t
146	P0397BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V014100415	5	5	5		1328	4	\N		1058118	6	4		\N	\N	M13A-1025370	\N	t
147	P0426BCP	17820197	2910002651	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2001	6	JS3JB43V314100389	5	5	5		1328	4	\N		1164931	6	4		\N	\N	M13A1023313	\N	t
148	P051DKB	17820197	2167005840	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	JTDBT933X81177347	7	4	21		1496	4	\N		1109296	23	5		\N	\N		\N	t
149	P0365BFK	17820197	115	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JM7BJ10M100112511	7	6	14		1598	4	\N		1039842	31	5		\N	\N		\N	t
150	P0431BCP	1782019	2511	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2000	6	JS3JB33V9Y4100790	5	5	5		1298	4	\N		1054996	17	5		\N	\N	G13BB675060	\N	t
141	P061DKB	17820197	2167005841	7 AVE 10-35 ZONA 1	17	2	INSTITUTO DE LA DEFENSA PUBLICA PENAL	2008	6	JTDBT933181178791	7	4	21		1496	4	\N		1128636	40	5		\N	\N	1NZ-4554079	\N	t
\.


--
-- TOC entry 2635 (class 0 OID 0)
-- Dependencies: 186
-- Name: asignacion_vehiculo_cod_asignacion_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asignacion_vehiculo_cod_asignacion_vehiculo_seq', 1, true);


--
-- TOC entry 2636 (class 0 OID 0)
-- Dependencies: 188
-- Name: asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq', 2, true);


--
-- TOC entry 2637 (class 0 OID 0)
-- Dependencies: 190
-- Name: color_cod_color_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('color_cod_color_seq', 3, true);


--
-- TOC entry 2638 (class 0 OID 0)
-- Dependencies: 192
-- Name: combustible_comision_cod_combustible_comision_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('combustible_comision_cod_combustible_comision_seq', 2, true);


--
-- TOC entry 2639 (class 0 OID 0)
-- Dependencies: 194
-- Name: combustible_cupon_cod_combustible_cupon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('combustible_cupon_cod_combustible_cupon_seq', 5, true);


--
-- TOC entry 2640 (class 0 OID 0)
-- Dependencies: 196
-- Name: concurso_mantenimientos_cod_concurso_mantenimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('concurso_mantenimientos_cod_concurso_mantenimiento_seq', 1, false);


--
-- TOC entry 2641 (class 0 OID 0)
-- Dependencies: 198
-- Name: cupon_denominacion_cod_cupon_denominacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cupon_denominacion_cod_cupon_denominacion_seq', 2, true);


--
-- TOC entry 2642 (class 0 OID 0)
-- Dependencies: 200
-- Name: departamento_cod_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departamento_cod_departamento_seq', 1, false);


--
-- TOC entry 2643 (class 0 OID 0)
-- Dependencies: 202
-- Name: dependencia_institucion_cod_dependencia_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dependencia_institucion_cod_dependencia_institucion_seq', 1, false);


--
-- TOC entry 2644 (class 0 OID 0)
-- Dependencies: 204
-- Name: detalle_mant_rep_cod_detalle_mant_repara_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detalle_mant_rep_cod_detalle_mant_repara_seq', 5, true);


--
-- TOC entry 2645 (class 0 OID 0)
-- Dependencies: 206
-- Name: imagen_cod_imagen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('imagen_cod_imagen_seq', 55, true);


--
-- TOC entry 2646 (class 0 OID 0)
-- Dependencies: 208
-- Name: kilometraje_comision_cod_kilometraje_comision_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('kilometraje_comision_cod_kilometraje_comision_seq', 1, false);


--
-- TOC entry 2647 (class 0 OID 0)
-- Dependencies: 210
-- Name: linea_cod_linea_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linea_cod_linea_seq', 5, true);


--
-- TOC entry 2648 (class 0 OID 0)
-- Dependencies: 212
-- Name: mantenimiento_reparacion_cod_mantenimiento_reparacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq', 7, true);


--
-- TOC entry 2649 (class 0 OID 0)
-- Dependencies: 214
-- Name: marca_cod_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('marca_cod_marca_seq', 1, true);


--
-- TOC entry 2650 (class 0 OID 0)
-- Dependencies: 216
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_cod_municipio_seq', 1, false);


--
-- TOC entry 2651 (class 0 OID 0)
-- Dependencies: 218
-- Name: organigrama_cod_organigrama_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('organigrama_cod_organigrama_seq', 2, true);


--
-- TOC entry 2652 (class 0 OID 0)
-- Dependencies: 220
-- Name: pais_cod_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pais_cod_pais_seq', 1, true);


--
-- TOC entry 2653 (class 0 OID 0)
-- Dependencies: 222
-- Name: persona_cod_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_cod_persona_seq', 2, true);


--
-- TOC entry 2654 (class 0 OID 0)
-- Dependencies: 224
-- Name: proveedores_cod_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proveedores_cod_proveedor_seq', 2, true);


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 226
-- Name: puesto_cod_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('puesto_cod_puesto_seq', 2, true);


--
-- TOC entry 2656 (class 0 OID 0)
-- Dependencies: 228
-- Name: region_cod_region_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('region_cod_region_seq', 1, false);


--
-- TOC entry 2657 (class 0 OID 0)
-- Dependencies: 247
-- Name: roles_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_usuario_id_seq', 1, false);


--
-- TOC entry 2658 (class 0 OID 0)
-- Dependencies: 230
-- Name: sede_cod_sede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sede_cod_sede_seq', 1, true);


--
-- TOC entry 2659 (class 0 OID 0)
-- Dependencies: 232
-- Name: tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq', 1, false);


--
-- TOC entry 2660 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipo_imagen_cod_tipo_imagen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_imagen_cod_tipo_imagen_seq', 1, false);


--
-- TOC entry 2661 (class 0 OID 0)
-- Dependencies: 236
-- Name: tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq', 2, true);


--
-- TOC entry 2662 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_tipo_cod_tipo_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tipo_cod_tipo_tipo_seq', 3, true);


--
-- TOC entry 2663 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_uso_cod_tipo_uso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_uso_cod_tipo_uso_seq', 5, true);


--
-- TOC entry 2664 (class 0 OID 0)
-- Dependencies: 242
-- Name: unidad_cod_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('unidad_cod_unidad_seq', 3, true);


--
-- TOC entry 2665 (class 0 OID 0)
-- Dependencies: 245
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_seq', 1, true);


--
-- TOC entry 2666 (class 0 OID 0)
-- Dependencies: 244
-- Name: vehiculo_cod_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vehiculo_cod_vehiculo_seq', 150, true);


--
-- TOC entry 2248 (class 2606 OID 16603)
-- Name: asignacion_vehiculo pk_cod_asignacion_vehiculo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT pk_cod_asignacion_vehiculo PRIMARY KEY (cod_asignacion_vehiculo);


--
-- TOC entry 2256 (class 2606 OID 16605)
-- Name: asignacion_vehiculo_piloto pk_cod_asignacion_vehiculo_piloto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT pk_cod_asignacion_vehiculo_piloto PRIMARY KEY (cod_asignacion_vehiculo_piloto);


--
-- TOC entry 2258 (class 2606 OID 16607)
-- Name: color pk_cod_color; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color
    ADD CONSTRAINT pk_cod_color PRIMARY KEY (cod_color);


--
-- TOC entry 2260 (class 2606 OID 16609)
-- Name: combustible_comision pk_cod_combustible_comision; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT pk_cod_combustible_comision PRIMARY KEY (cod_combustible_comision);


--
-- TOC entry 2262 (class 2606 OID 16611)
-- Name: combustible_cupon pk_cod_combustible_cupon; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT pk_cod_combustible_cupon PRIMARY KEY (cod_combustible_cupon);


--
-- TOC entry 2266 (class 2606 OID 16613)
-- Name: cupon_denominacion pk_cod_cupon_denominacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cupon_denominacion
    ADD CONSTRAINT pk_cod_cupon_denominacion PRIMARY KEY (cod_cupon_denominacion);


--
-- TOC entry 2272 (class 2606 OID 16615)
-- Name: departamento pk_cod_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);


--
-- TOC entry 2274 (class 2606 OID 16617)
-- Name: dependencia_institucion pk_cod_dependencia_institucion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT pk_cod_dependencia_institucion PRIMARY KEY (cod_dependencia_institucion);


--
-- TOC entry 2280 (class 2606 OID 16619)
-- Name: imagen pk_cod_imagen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT pk_cod_imagen PRIMARY KEY (cod_imagen);


--
-- TOC entry 2282 (class 2606 OID 16621)
-- Name: kilometraje_comision pk_cod_kilometraje_comision; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT pk_cod_kilometraje_comision PRIMARY KEY (cod_kilometraje_comision);


--
-- TOC entry 2284 (class 2606 OID 16623)
-- Name: linea pk_cod_linea; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea
    ADD CONSTRAINT pk_cod_linea PRIMARY KEY (cod_linea);


--
-- TOC entry 2288 (class 2606 OID 16625)
-- Name: marca pk_cod_marca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_cod_marca PRIMARY KEY (cod_marca);


--
-- TOC entry 2294 (class 2606 OID 16627)
-- Name: municipio pk_cod_municipio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_cod_municipio PRIMARY KEY (cod_municipio);


--
-- TOC entry 2298 (class 2606 OID 16629)
-- Name: pais pk_cod_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_cod_pais PRIMARY KEY (cod_pais);


--
-- TOC entry 2307 (class 2606 OID 16631)
-- Name: persona pk_cod_persona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_cod_persona PRIMARY KEY (cod_persona);


--
-- TOC entry 2317 (class 2606 OID 16633)
-- Name: puesto pk_cod_puesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT pk_cod_puesto PRIMARY KEY (cod_puesto);


--
-- TOC entry 2321 (class 2606 OID 16635)
-- Name: region pk_cod_region; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY region
    ADD CONSTRAINT pk_cod_region PRIMARY KEY (cod_region);


--
-- TOC entry 2327 (class 2606 OID 16637)
-- Name: sede pk_cod_sede; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_cod_sede PRIMARY KEY (cod_sede);


--
-- TOC entry 2329 (class 2606 OID 16639)
-- Name: tipo_dependencia_institucion pk_cod_tipo_dependencia_institucion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_dependencia_institucion
    ADD CONSTRAINT pk_cod_tipo_dependencia_institucion PRIMARY KEY (cod_tipo_dependencia_institucion);


--
-- TOC entry 2331 (class 2606 OID 16641)
-- Name: tipo_imagen pk_cod_tipo_imagen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_imagen
    ADD CONSTRAINT pk_cod_tipo_imagen PRIMARY KEY (cod_tipo_imagen);


--
-- TOC entry 2337 (class 2606 OID 16643)
-- Name: tipo_tipo pk_cod_tipo_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_tipo
    ADD CONSTRAINT pk_cod_tipo_tipo PRIMARY KEY (cod_tipo_tipo);


--
-- TOC entry 2341 (class 2606 OID 16645)
-- Name: tipo_uso pk_cod_tipo_uso; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_uso
    ADD CONSTRAINT pk_cod_tipo_uso PRIMARY KEY (cod_tipo_uso);


--
-- TOC entry 2346 (class 2606 OID 16647)
-- Name: unidad pk_cod_unidad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad
    ADD CONSTRAINT pk_cod_unidad PRIMARY KEY (cod_unidad);


--
-- TOC entry 2354 (class 2606 OID 16649)
-- Name: vehiculo pk_cod_vehiculo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_cod_vehiculo PRIMARY KEY (cod_vehiculo);


--
-- TOC entry 2264 (class 2606 OID 16651)
-- Name: concurso_mantenimientos pk_concurso_mantenimientos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concurso_mantenimientos
    ADD CONSTRAINT pk_concurso_mantenimientos PRIMARY KEY (cod_concurso_mantenimiento);


--
-- TOC entry 2276 (class 2606 OID 16653)
-- Name: detalle_mant_rep pk_detalle_mant_rep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT pk_detalle_mant_rep PRIMARY KEY (cod_detalle_mant_repara);


--
-- TOC entry 2286 (class 2606 OID 16655)
-- Name: mantenimiento_reparacion pk_manto_reparacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT pk_manto_reparacion PRIMARY KEY (cod_mantenimiento_reparacion);


--
-- TOC entry 2296 (class 2606 OID 16657)
-- Name: organigrama pk_organigrama; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama
    ADD CONSTRAINT pk_organigrama PRIMARY KEY (cod_organigrama);


--
-- TOC entry 2309 (class 2606 OID 16659)
-- Name: proveedores pk_proveedores; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores
    ADD CONSTRAINT pk_proveedores PRIMARY KEY (cod_proveedor);


--
-- TOC entry 2333 (class 2606 OID 16661)
-- Name: tipo_mantenimiento_reparacion pk_tipo_manto_reparacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_mantenimiento_reparacion
    ADD CONSTRAINT pk_tipo_manto_reparacion PRIMARY KEY (cod_tipo_mant_rep);


--
-- TOC entry 2358 (class 2606 OID 17597)
-- Name: rol_usuario roles_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rol_usuario
    ADD CONSTRAINT roles_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2356 (class 2606 OID 17586)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2299 (class 1259 OID 16965)
-- Name: IDX_apellido; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_apellido" ON persona USING btree (apellido_1);


--
-- TOC entry 2300 (class 1259 OID 17613)
-- Name: IDX_cod_apellido1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_apellido1" ON persona USING btree (apellido_1);


--
-- TOC entry 2249 (class 1259 OID 17628)
-- Name: IDX_cod_asignacion_vehiculo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_asignacion_vehiculo" ON asignacion_vehiculo_piloto USING btree (cod_asignacion_vehiculo);


--
-- TOC entry 2250 (class 1259 OID 17627)
-- Name: IDX_cod_asignacion_vehiculo_piloto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_asignacion_vehiculo_piloto" ON asignacion_vehiculo_piloto USING btree (cod_asignacion_vehiculo_piloto);


--
-- TOC entry 2347 (class 1259 OID 16970)
-- Name: IDX_cod_color; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_color" ON vehiculo USING btree (cod_color);


--
-- TOC entry 2267 (class 1259 OID 17598)
-- Name: IDX_cod_depto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_depto" ON departamento USING btree (cod_departamento);


--
-- TOC entry 2289 (class 1259 OID 17608)
-- Name: IDX_cod_depto_municipio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_depto_municipio" ON municipio USING btree (cod_departamento);


--
-- TOC entry 2268 (class 1259 OID 17600)
-- Name: IDX_cod_estatus; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_estatus" ON departamento USING btree (cod_estatus);


--
-- TOC entry 2290 (class 1259 OID 17609)
-- Name: IDX_cod_estatus_municipio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_estatus_municipio" ON municipio USING btree (cod_estatus);


--
-- TOC entry 2301 (class 1259 OID 17612)
-- Name: IDX_cod_estatus_persona; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_estatus_persona" ON persona USING btree (cod_estatus);


--
-- TOC entry 2318 (class 1259 OID 17602)
-- Name: IDX_cod_estatus_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_estatus_region" ON region USING btree (cod_estatus);


--
-- TOC entry 2342 (class 1259 OID 17621)
-- Name: IDX_cod_estatus_unidad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_estatus_unidad" ON unidad USING btree (cod_estatus);


--
-- TOC entry 2277 (class 1259 OID 16977)
-- Name: IDX_cod_imagen; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_imagen" ON imagen USING btree (cod_imagen);


--
-- TOC entry 2291 (class 1259 OID 17607)
-- Name: IDX_cod_municipio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_municipio" ON municipio USING btree (cod_municipio);


--
-- TOC entry 2322 (class 1259 OID 17604)
-- Name: IDX_cod_municipio_sede; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_municipio_sede" ON sede USING btree (cod_municipio);


--
-- TOC entry 2338 (class 1259 OID 17618)
-- Name: IDX_cod_nombre_tipo_uso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_nombre_tipo_uso" ON tipo_uso USING btree (nombre_tipo_uso);


--
-- TOC entry 2311 (class 1259 OID 16974)
-- Name: IDX_cod_organigrama; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_organigrama" ON puesto USING btree (cod_organigrama);


--
-- TOC entry 2302 (class 1259 OID 16962)
-- Name: IDX_cod_persona; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_persona" ON persona USING btree (cod_persona);


--
-- TOC entry 2312 (class 1259 OID 16975)
-- Name: IDX_cod_persona_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_persona_" ON puesto USING btree (cod_persona);


--
-- TOC entry 2348 (class 1259 OID 17615)
-- Name: IDX_cod_persona_asigna_vehiculo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_persona_asigna_vehiculo" ON vehiculo USING btree (cod_persona_asignacion);


--
-- TOC entry 2251 (class 1259 OID 17629)
-- Name: IDX_cod_piloto_asignado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_piloto_asignado" ON asignacion_vehiculo_piloto USING btree (cod_persona_piloto_asignado);


--
-- TOC entry 2303 (class 1259 OID 16966)
-- Name: IDX_cod_puesto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_puesto" ON persona USING btree (cod_puesto);


--
-- TOC entry 2313 (class 1259 OID 16971)
-- Name: IDX_cod_puesto_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_puesto_" ON puesto USING btree (cod_puesto);


--
-- TOC entry 2349 (class 1259 OID 17616)
-- Name: IDX_cod_puesto_vehiculos; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_puesto_vehiculos" ON vehiculo USING btree (cod_pueston);


--
-- TOC entry 2319 (class 1259 OID 17601)
-- Name: IDX_cod_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_region" ON region USING btree (cod_region);


--
-- TOC entry 2323 (class 1259 OID 17603)
-- Name: IDX_cod_sede; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_sede" ON sede USING btree (cod_sede);


--
-- TOC entry 2278 (class 1259 OID 16976)
-- Name: IDX_cod_tipo_imagen; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_tipo_imagen" ON imagen USING btree (cod_tipo_imagen);


--
-- TOC entry 2314 (class 1259 OID 16973)
-- Name: IDX_cod_tipo_puesto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_tipo_puesto" ON puesto USING btree (cod_tipo_puesto);


--
-- TOC entry 2324 (class 1259 OID 17605)
-- Name: IDX_cod_tipo_sede_sede; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_tipo_sede_sede" ON sede USING btree (cod_tipo_sede);


--
-- TOC entry 2334 (class 1259 OID 17622)
-- Name: IDX_cod_tipo_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_tipo_tipo" ON tipo_tipo USING btree (cod_tipo_tipo);


--
-- TOC entry 2339 (class 1259 OID 17617)
-- Name: IDX_cod_tipo_uso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_tipo_uso" ON tipo_uso USING btree (cod_tipo_uso);


--
-- TOC entry 2343 (class 1259 OID 17619)
-- Name: IDX_cod_unidad_unidad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_cod_unidad_unidad" ON unidad USING btree (cod_unidad);


--
-- TOC entry 2350 (class 1259 OID 16967)
-- Name: IDX_cod_vehiculo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IDX_cod_vehiculo" ON vehiculo USING btree (cod_vehiculo);


--
-- TOC entry 2315 (class 1259 OID 16972)
-- Name: IDX_descripcion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_descripcion" ON puesto USING btree (descripcion);


--
-- TOC entry 2269 (class 1259 OID 17611)
-- Name: IDX_descripcion_depto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_descripcion_depto" ON departamento USING btree (descripcion);


--
-- TOC entry 2292 (class 1259 OID 17610)
-- Name: IDX_descripcion_municipio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_descripcion_municipio" ON municipio USING btree (descripcion);


--
-- TOC entry 2344 (class 1259 OID 17620)
-- Name: IDX_descripcion_unidad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_descripcion_unidad" ON unidad USING btree (descripcion);


--
-- TOC entry 2241 (class 1259 OID 16958)
-- Name: IDX_fecha_asignacion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_asignacion" ON asignacion_vehiculo USING btree (fecha_asignacion);


--
-- TOC entry 2252 (class 1259 OID 17626)
-- Name: IDX_fecha_hora_asignacion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_hora_asignacion" ON asignacion_vehiculo_piloto USING btree (fecha_hora_asignacion);


--
-- TOC entry 2253 (class 1259 OID 17625)
-- Name: IDX_fecha_hora_retorno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_hora_retorno" ON asignacion_vehiculo_piloto USING btree (fecha_hora_retorno_vehiculo);


--
-- TOC entry 2242 (class 1259 OID 17631)
-- Name: IDX_fecha_hora_retorno_asigna; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_hora_retorno_asigna" ON asignacion_vehiculo USING btree (fecha_hora_retorno_vehiculo);


--
-- TOC entry 2254 (class 1259 OID 17624)
-- Name: IDX_fecha_hora_uso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_hora_uso" ON asignacion_vehiculo_piloto USING btree (fecha_hora_uso_vehiculo);


--
-- TOC entry 2243 (class 1259 OID 17630)
-- Name: IDX_fecha_hora_uso_vehiculo_asignavehiculo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fecha_hora_uso_vehiculo_asignavehiculo" ON asignacion_vehiculo USING btree (fecha_hora_uso_vehiculo);


--
-- TOC entry 2351 (class 1259 OID 16969)
-- Name: IDX_modelo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_modelo" ON vehiculo USING btree (modelo);


--
-- TOC entry 2270 (class 1259 OID 17599)
-- Name: IDX_no_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_no_region" ON departamento USING btree (cod_region);


--
-- TOC entry 2244 (class 1259 OID 16959)
-- Name: IDX_no_solicitud; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_no_solicitud" ON asignacion_vehiculo USING btree (no_solicitud);


--
-- TOC entry 2304 (class 1259 OID 16963)
-- Name: IDX_nombre_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_nombre_1" ON persona USING btree (nombre_1);


--
-- TOC entry 2305 (class 1259 OID 16964)
-- Name: IDX_nombre_completo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_nombre_completo" ON persona USING btree (nombre_1, nombre_2, apellido_1, apellido_2);


--
-- TOC entry 2325 (class 1259 OID 17606)
-- Name: IDX_nombre_sede; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_nombre_sede" ON sede USING btree (nombre_sede);


--
-- TOC entry 2335 (class 1259 OID 17623)
-- Name: IDX_nombre_tipo_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_nombre_tipo_tipo" ON tipo_tipo USING btree (nombre_tipo_tipo);


--
-- TOC entry 2245 (class 1259 OID 16960)
-- Name: IDX_persona_solicitante; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_persona_solicitante" ON asignacion_vehiculo USING btree (cod_persona_solicitante);


--
-- TOC entry 2352 (class 1259 OID 17614)
-- Name: IDX_placa_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_placa_unique" ON vehiculo USING btree (placa);


--
-- TOC entry 2246 (class 1259 OID 16961)
-- Name: IDX_puesto_persona_solicitante; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_puesto_persona_solicitante" ON asignacion_vehiculo USING btree (cod_puesto_solicitante);


--
-- TOC entry 2310 (class 1259 OID 16662)
-- Name: uniq_nit; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_nit ON proveedores USING btree (nit);


--
-- TOC entry 2359 (class 2606 OID 16663)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey FOREIGN KEY (cod_dependencia_institucion_juzgado) REFERENCES dependencia_institucion(cod_dependencia_institucion);


--
-- TOC entry 2360 (class 2606 OID 16668)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey FOREIGN KEY (cod_persona_asignador_vehiculo) REFERENCES persona(cod_persona);


--
-- TOC entry 2361 (class 2606 OID 16673)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_coordinador_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey FOREIGN KEY (cod_persona_coordinador_jefe) REFERENCES persona(cod_persona);


--
-- TOC entry 2362 (class 2606 OID 16678)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey FOREIGN KEY (cod_persona_pasajero) REFERENCES persona(cod_persona);


--
-- TOC entry 2363 (class 2606 OID 16683)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_persona_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);


--
-- TOC entry 2364 (class 2606 OID 16688)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey FOREIGN KEY (cod_puesto_asignador_vehiculo) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2365 (class 2606 OID 16693)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey FOREIGN KEY (cod_puesto_coordinador_jefe) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2366 (class 2606 OID 16698)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_puesto_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2367 (class 2606 OID 16703)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_sede_lugar_salida_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey FOREIGN KEY (cod_sede_lugar_salida) REFERENCES sede(cod_sede);


--
-- TOC entry 2368 (class 2606 OID 16708)
-- Name: asignacion_vehiculo asignacion_vehiculo_cod_unidad_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey FOREIGN KEY (cod_unidad_solicitante) REFERENCES unidad(cod_unidad);


--
-- TOC entry 2369 (class 2606 OID 16713)
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey FOREIGN KEY (cod_asignacion_vehiculo) REFERENCES asignacion_vehiculo(cod_asignacion_vehiculo);


--
-- TOC entry 2370 (class 2606 OID 16718)
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey FOREIGN KEY (cod_persona_piloto_asignado) REFERENCES persona(cod_persona);


--
-- TOC entry 2371 (class 2606 OID 16723)
-- Name: asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- TOC entry 2372 (class 2606 OID 16728)
-- Name: combustible_comision combustible_comision_cod_persona_encargado_transporte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey FOREIGN KEY (cod_persona_encargado_transporte) REFERENCES persona(cod_persona);


--
-- TOC entry 2373 (class 2606 OID 16733)
-- Name: combustible_comision combustible_comision_cod_persona_receptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_receptor_fkey FOREIGN KEY (cod_persona_receptor) REFERENCES persona(cod_persona);


--
-- TOC entry 2374 (class 2606 OID 16738)
-- Name: combustible_comision combustible_comision_cod_persona_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);


--
-- TOC entry 2375 (class 2606 OID 16743)
-- Name: combustible_comision combustible_comision_cod_puesto_receptor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_receptor_fkey FOREIGN KEY (cod_puesto_receptor) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2376 (class 2606 OID 16748)
-- Name: combustible_comision combustible_comision_cod_puesto_solicitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2377 (class 2606 OID 16753)
-- Name: combustible_comision combustible_comision_cod_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- TOC entry 2378 (class 2606 OID 16758)
-- Name: combustible_comision combustible_comision_cod_unidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_unidad_fkey FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);


--
-- TOC entry 2379 (class 2606 OID 16763)
-- Name: combustible_comision combustible_comision_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- TOC entry 2380 (class 2606 OID 16768)
-- Name: combustible_cupon combustible_cupon_cod_combustible_comision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_combustible_comision_fkey FOREIGN KEY (cod_combustible_comision) REFERENCES combustible_comision(cod_combustible_comision);


--
-- TOC entry 2381 (class 2606 OID 16773)
-- Name: combustible_cupon combustible_cupon_cod_cupon_denominancion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey FOREIGN KEY (cod_cupon_denominancion) REFERENCES cupon_denominacion(cod_cupon_denominacion);


--
-- TOC entry 2382 (class 2606 OID 16778)
-- Name: departamento departamento_cod_region_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_cod_region_fkey FOREIGN KEY (cod_region) REFERENCES region(cod_region);


--
-- TOC entry 2383 (class 2606 OID 16783)
-- Name: dependencia_institucion dependencia_institucion_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- TOC entry 2384 (class 2606 OID 16788)
-- Name: dependencia_institucion dependencia_institucion_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- TOC entry 2385 (class 2606 OID 16793)
-- Name: dependencia_institucion dependencia_institucion_cod_tipo_dependencia_institucion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey FOREIGN KEY (cod_tipo_dependencia_institucion) REFERENCES tipo_dependencia_institucion(cod_tipo_dependencia_institucion);


--
-- TOC entry 2386 (class 2606 OID 16798)
-- Name: detalle_mant_rep detalle_mant_rep_mant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT detalle_mant_rep_mant_fkey FOREIGN KEY (cod_mantenimiento_reparacion) REFERENCES mantenimiento_reparacion(cod_mantenimiento_reparacion);


--
-- TOC entry 2387 (class 2606 OID 16803)
-- Name: detalle_mant_rep fk_det_mant_rep_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT fk_det_mant_rep_tipo FOREIGN KEY (cod_tipo_mant_rep) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);


--
-- TOC entry 2402 (class 2606 OID 16808)
-- Name: puesto fk_puesto_organigrama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT fk_puesto_organigrama FOREIGN KEY (cod_organigrama) REFERENCES organigrama(cod_organigrama);


--
-- TOC entry 2400 (class 2606 OID 16813)
-- Name: organigrama fk_unidad_organigrama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organigrama
    ADD CONSTRAINT fk_unidad_organigrama FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);


--
-- TOC entry 2388 (class 2606 OID 16818)
-- Name: imagen imagen_cod_tipo_imagen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_tipo_imagen_fkey FOREIGN KEY (cod_tipo_imagen) REFERENCES tipo_imagen(cod_tipo_imagen);


--
-- TOC entry 2389 (class 2606 OID 16823)
-- Name: imagen imagen_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- TOC entry 2390 (class 2606 OID 16828)
-- Name: kilometraje_comision kilometraje_comision_cod_dependencia_institucion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey FOREIGN KEY (cod_dependencia_institucion) REFERENCES dependencia_institucion(cod_dependencia_institucion);


--
-- TOC entry 2391 (class 2606 OID 16833)
-- Name: kilometraje_comision kilometraje_comision_cod_persona_piloto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey FOREIGN KEY (cod_persona_piloto) REFERENCES persona(cod_persona);


--
-- TOC entry 2392 (class 2606 OID 16838)
-- Name: kilometraje_comision kilometraje_comision_cod_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- TOC entry 2393 (class 2606 OID 16843)
-- Name: linea linea_cod_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea
    ADD CONSTRAINT linea_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);


--
-- TOC entry 2394 (class 2606 OID 16848)
-- Name: mantenimiento_reparacion manto_reparacion_concurso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_concurso_fkey FOREIGN KEY (cod_no_concurso) REFERENCES concurso_mantenimientos(cod_concurso_mantenimiento);


--
-- TOC entry 2395 (class 2606 OID 16853)
-- Name: mantenimiento_reparacion manto_reparacion_proveedores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_proveedores FOREIGN KEY (cod_proveedor) REFERENCES proveedores(cod_proveedor);


--
-- TOC entry 2396 (class 2606 OID 16858)
-- Name: mantenimiento_reparacion manto_reparacion_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- TOC entry 2397 (class 2606 OID 16863)
-- Name: mantenimiento_reparacion manto_reparacion_tipomanto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_tipomanto_fk FOREIGN KEY (cod_tipo_mantenimiento) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);


--
-- TOC entry 2398 (class 2606 OID 16868)
-- Name: mantenimiento_reparacion manto_reparacion_vehiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);


--
-- TOC entry 2399 (class 2606 OID 16873)
-- Name: municipio municipio_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- TOC entry 2401 (class 2606 OID 16878)
-- Name: persona persona_puesto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_puesto_fkey FOREIGN KEY (cod_puesto) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2403 (class 2606 OID 16883)
-- Name: puesto puesto_cod_persona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_persona_fkey FOREIGN KEY (cod_persona) REFERENCES persona(cod_persona);


--
-- TOC entry 2404 (class 2606 OID 16888)
-- Name: puesto puesto_cod_puesto_reemplazo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_puesto_reemplazo_fkey FOREIGN KEY (cod_puesto_reemplazo) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2405 (class 2606 OID 16893)
-- Name: puesto puesto_cod_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);


--
-- TOC entry 2406 (class 2606 OID 16898)
-- Name: sede sede_cod_coordindor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_coordindor_fkey FOREIGN KEY (cod_coordindor) REFERENCES persona(cod_persona);


--
-- TOC entry 2407 (class 2606 OID 16903)
-- Name: sede sede_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- TOC entry 2408 (class 2606 OID 16908)
-- Name: vehiculo vehiculo_cod_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_color_fkey FOREIGN KEY (cod_color) REFERENCES color(cod_color);


--
-- TOC entry 2409 (class 2606 OID 16913)
-- Name: vehiculo vehiculo_cod_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);


--
-- TOC entry 2410 (class 2606 OID 16918)
-- Name: vehiculo vehiculo_cod_linea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES linea(cod_linea);


--
-- TOC entry 2411 (class 2606 OID 16923)
-- Name: vehiculo vehiculo_cod_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);


--
-- TOC entry 2412 (class 2606 OID 16928)
-- Name: vehiculo vehiculo_cod_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);


--
-- TOC entry 2413 (class 2606 OID 16933)
-- Name: vehiculo vehiculo_cod_persona_asignacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_persona_asignacion_fkey FOREIGN KEY (cod_persona_asignacion) REFERENCES persona(cod_persona);


--
-- TOC entry 2414 (class 2606 OID 16938)
-- Name: vehiculo vehiculo_cod_pueston_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_pueston_fkey FOREIGN KEY (cod_pueston) REFERENCES puesto(cod_puesto);


--
-- TOC entry 2415 (class 2606 OID 16943)
-- Name: vehiculo vehiculo_cod_tipo_tipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_tipo_fkey FOREIGN KEY (cod_tipo_tipo) REFERENCES tipo_tipo(cod_tipo_tipo);


--
-- TOC entry 2416 (class 2606 OID 16948)
-- Name: vehiculo vehiculo_cod_tipo_uso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_uso_fkey FOREIGN KEY (cod_tipo_uso) REFERENCES tipo_uso(cod_tipo_uso);


-- Completed on 2017-11-23 10:16:46

--
-- PostgreSQL database dump complete
--

