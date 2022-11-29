--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13 (Debian 12.13-1.pgdg110+1)
-- Dumped by pg_dump version 14.6

-- Started on 2022-11-28 13:52:03 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: BUCKETING_COLS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BUCKETING_COLS" (
    "SD_ID" bigint NOT NULL,
    "BUCKET_COL_NAME" character varying(256) DEFAULT NULL::character varying,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."BUCKETING_COLS" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16389)
-- Name: CDS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CDS" (
    "CD_ID" bigint NOT NULL
);


ALTER TABLE public."CDS" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16392)
-- Name: COLUMNS_V2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."COLUMNS_V2" (
    "CD_ID" bigint NOT NULL,
    "COMMENT" character varying(4000),
    "COLUMN_NAME" character varying(767) NOT NULL,
    "TYPE_NAME" text,
    "INTEGER_IDX" integer NOT NULL
);


ALTER TABLE public."COLUMNS_V2" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16398)
-- Name: DATABASE_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DATABASE_PARAMS" (
    "DB_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(180) NOT NULL,
    "PARAM_VALUE" character varying(4000) DEFAULT NULL::character varying
);


ALTER TABLE public."DATABASE_PARAMS" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16405)
-- Name: DBS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DBS" (
    "DB_ID" bigint NOT NULL,
    "DESC" character varying(4000) DEFAULT NULL::character varying,
    "DB_LOCATION_URI" character varying(4000) NOT NULL,
    "NAME" character varying(128) DEFAULT NULL::character varying,
    "OWNER_NAME" character varying(128) DEFAULT NULL::character varying,
    "OWNER_TYPE" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public."DBS" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16415)
-- Name: DB_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DB_PRIVS" (
    "DB_GRANT_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "DB_ID" bigint,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "DB_PRIV" character varying(128) DEFAULT NULL::character varying
);


ALTER TABLE public."DB_PRIVS" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16653)
-- Name: DELEGATION_TOKENS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DELEGATION_TOKENS" (
    "TOKEN_IDENT" character varying(767) NOT NULL,
    "TOKEN" character varying(767)
);


ALTER TABLE public."DELEGATION_TOKENS" OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16689)
-- Name: FUNCS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FUNCS" (
    "FUNC_ID" bigint NOT NULL,
    "CLASS_NAME" character varying(4000),
    "CREATE_TIME" integer NOT NULL,
    "DB_ID" bigint,
    "FUNC_NAME" character varying(128),
    "FUNC_TYPE" integer NOT NULL,
    "OWNER_NAME" character varying(128),
    "OWNER_TYPE" character varying(10)
);


ALTER TABLE public."FUNCS" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16697)
-- Name: FUNC_RU; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FUNC_RU" (
    "FUNC_ID" bigint NOT NULL,
    "RESOURCE_TYPE" integer NOT NULL,
    "RESOURCE_URI" character varying(4000),
    "INTEGER_IDX" integer NOT NULL
);


ALTER TABLE public."FUNC_RU" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16426)
-- Name: GLOBAL_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GLOBAL_PRIVS" (
    "USER_GRANT_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "USER_PRIV" character varying(128) DEFAULT NULL::character varying
);


ALTER TABLE public."GLOBAL_PRIVS" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16437)
-- Name: IDXS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IDXS" (
    "INDEX_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "DEFERRED_REBUILD" boolean NOT NULL,
    "INDEX_HANDLER_CLASS" character varying(4000) DEFAULT NULL::character varying,
    "INDEX_NAME" character varying(128) DEFAULT NULL::character varying,
    "INDEX_TBL_ID" bigint,
    "LAST_ACCESS_TIME" bigint NOT NULL,
    "ORIG_TBL_ID" bigint,
    "SD_ID" bigint
);


ALTER TABLE public."IDXS" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16445)
-- Name: INDEX_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."INDEX_PARAMS" (
    "INDEX_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(256) NOT NULL,
    "PARAM_VALUE" character varying(4000) DEFAULT NULL::character varying
);


ALTER TABLE public."INDEX_PARAMS" OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16718)
-- Name: KEY_CONSTRAINTS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KEY_CONSTRAINTS" (
    "CHILD_CD_ID" bigint,
    "CHILD_INTEGER_IDX" bigint,
    "CHILD_TBL_ID" bigint,
    "PARENT_CD_ID" bigint NOT NULL,
    "PARENT_INTEGER_IDX" bigint NOT NULL,
    "PARENT_TBL_ID" bigint NOT NULL,
    "POSITION" bigint NOT NULL,
    "CONSTRAINT_NAME" character varying(400) NOT NULL,
    "CONSTRAINT_TYPE" smallint NOT NULL,
    "UPDATE_RULE" smallint,
    "DELETE_RULE" smallint,
    "ENABLE_VALIDATE_RELY" smallint NOT NULL
);


ALTER TABLE public."KEY_CONSTRAINTS" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16644)
-- Name: MASTER_KEYS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MASTER_KEYS" (
    "KEY_ID" integer NOT NULL,
    "MASTER_KEY" character varying(767)
);


ALTER TABLE public."MASTER_KEYS" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16642)
-- Name: MASTER_KEYS_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MASTER_KEYS_KEY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."MASTER_KEYS_KEY_ID_seq" OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 238
-- Name: MASTER_KEYS_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MASTER_KEYS_KEY_ID_seq" OWNED BY public."MASTER_KEYS"."KEY_ID";


--
-- TOC entry 246 (class 1259 OID 16705)
-- Name: NOTIFICATION_LOG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NOTIFICATION_LOG" (
    "NL_ID" bigint NOT NULL,
    "EVENT_ID" bigint NOT NULL,
    "EVENT_TIME" integer NOT NULL,
    "EVENT_TYPE" character varying(32) NOT NULL,
    "DB_NAME" character varying(128),
    "TBL_NAME" character varying(256),
    "MESSAGE" text,
    "MESSAGE_FORMAT" character varying(16)
);


ALTER TABLE public."NOTIFICATION_LOG" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16713)
-- Name: NOTIFICATION_SEQUENCE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NOTIFICATION_SEQUENCE" (
    "NNI_ID" bigint NOT NULL,
    "NEXT_EVENT_ID" bigint NOT NULL
);


ALTER TABLE public."NOTIFICATION_SEQUENCE" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16452)
-- Name: NUCLEUS_TABLES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NUCLEUS_TABLES" (
    "CLASS_NAME" character varying(128) NOT NULL,
    "TABLE_NAME" character varying(128) NOT NULL,
    "TYPE" character varying(4) NOT NULL,
    "OWNER" character varying(2) NOT NULL,
    "VERSION" character varying(20) NOT NULL,
    "INTERFACE_NAME" character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."NUCLEUS_TABLES" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16459)
-- Name: PARTITIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PARTITIONS" (
    "PART_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "LAST_ACCESS_TIME" bigint NOT NULL,
    "PART_NAME" character varying(767) DEFAULT NULL::character varying,
    "SD_ID" bigint,
    "TBL_ID" bigint
);


ALTER TABLE public."PARTITIONS" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16466)
-- Name: PARTITION_EVENTS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PARTITION_EVENTS" (
    "PART_NAME_ID" bigint NOT NULL,
    "DB_NAME" character varying(128),
    "EVENT_TIME" bigint NOT NULL,
    "EVENT_TYPE" integer NOT NULL,
    "PARTITION_NAME" character varying(767),
    "TBL_NAME" character varying(256)
);


ALTER TABLE public."PARTITION_EVENTS" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16472)
-- Name: PARTITION_KEYS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PARTITION_KEYS" (
    "TBL_ID" bigint NOT NULL,
    "PKEY_COMMENT" character varying(4000) DEFAULT NULL::character varying,
    "PKEY_NAME" character varying(128) NOT NULL,
    "PKEY_TYPE" character varying(767) NOT NULL,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."PARTITION_KEYS" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16479)
-- Name: PARTITION_KEY_VALS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PARTITION_KEY_VALS" (
    "PART_ID" bigint NOT NULL,
    "PART_KEY_VAL" character varying(256) DEFAULT NULL::character varying,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."PARTITION_KEY_VALS" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16483)
-- Name: PARTITION_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PARTITION_PARAMS" (
    "PART_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(256) NOT NULL,
    "PARAM_VALUE" character varying(4000) DEFAULT NULL::character varying
);


ALTER TABLE public."PARTITION_PARAMS" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16490)
-- Name: PART_COL_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PART_COL_PRIVS" (
    "PART_COLUMN_GRANT_ID" bigint NOT NULL,
    "COLUMN_NAME" character varying(767) DEFAULT NULL::character varying,
    "CREATE_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PART_ID" bigint,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PART_COL_PRIV" character varying(128) DEFAULT NULL::character varying
);


ALTER TABLE public."PART_COL_PRIVS" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16676)
-- Name: PART_COL_STATS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PART_COL_STATS" (
    "CS_ID" bigint NOT NULL,
    "DB_NAME" character varying(128) DEFAULT NULL::character varying,
    "TABLE_NAME" character varying(256) DEFAULT NULL::character varying,
    "PARTITION_NAME" character varying(767) DEFAULT NULL::character varying,
    "COLUMN_NAME" character varying(767) DEFAULT NULL::character varying,
    "COLUMN_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PART_ID" bigint NOT NULL,
    "LONG_LOW_VALUE" bigint,
    "LONG_HIGH_VALUE" bigint,
    "DOUBLE_LOW_VALUE" double precision,
    "DOUBLE_HIGH_VALUE" double precision,
    "BIG_DECIMAL_LOW_VALUE" character varying(4000) DEFAULT NULL::character varying,
    "BIG_DECIMAL_HIGH_VALUE" character varying(4000) DEFAULT NULL::character varying,
    "NUM_NULLS" bigint NOT NULL,
    "NUM_DISTINCTS" bigint,
    "AVG_COL_LEN" double precision,
    "MAX_COL_LEN" bigint,
    "NUM_TRUES" bigint,
    "NUM_FALSES" bigint,
    "LAST_ANALYZED" bigint NOT NULL
);


ALTER TABLE public."PART_COL_STATS" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16502)
-- Name: PART_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PART_PRIVS" (
    "PART_GRANT_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PART_ID" bigint,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PART_PRIV" character varying(128) DEFAULT NULL::character varying
);


ALTER TABLE public."PART_PRIVS" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16513)
-- Name: ROLES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ROLES" (
    "ROLE_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "OWNER_NAME" character varying(128) DEFAULT NULL::character varying,
    "ROLE_NAME" character varying(128) DEFAULT NULL::character varying
);


ALTER TABLE public."ROLES" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16518)
-- Name: ROLE_MAP; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ROLE_MAP" (
    "ROLE_GRANT_ID" bigint NOT NULL,
    "ADD_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "ROLE_ID" bigint
);


ALTER TABLE public."ROLE_MAP" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16528)
-- Name: SDS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SDS" (
    "SD_ID" bigint NOT NULL,
    "INPUT_FORMAT" character varying(4000) DEFAULT NULL::character varying,
    "IS_COMPRESSED" boolean NOT NULL,
    "LOCATION" character varying(4000) DEFAULT NULL::character varying,
    "NUM_BUCKETS" bigint NOT NULL,
    "OUTPUT_FORMAT" character varying(4000) DEFAULT NULL::character varying,
    "SERDE_ID" bigint,
    "CD_ID" bigint,
    "IS_STOREDASSUBDIRECTORIES" boolean NOT NULL
);


ALTER TABLE public."SDS" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16537)
-- Name: SD_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SD_PARAMS" (
    "SD_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(256) NOT NULL,
    "PARAM_VALUE" text
);


ALTER TABLE public."SD_PARAMS" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16543)
-- Name: SEQUENCE_TABLE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SEQUENCE_TABLE" (
    "SEQUENCE_NAME" character varying(255) NOT NULL,
    "NEXT_VAL" bigint NOT NULL
);


ALTER TABLE public."SEQUENCE_TABLE" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16546)
-- Name: SERDES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SERDES" (
    "SERDE_ID" bigint NOT NULL,
    "NAME" character varying(128) DEFAULT NULL::character varying,
    "SLIB" character varying(4000) DEFAULT NULL::character varying
);


ALTER TABLE public."SERDES" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16554)
-- Name: SERDE_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SERDE_PARAMS" (
    "SERDE_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(256) NOT NULL,
    "PARAM_VALUE" text
);


ALTER TABLE public."SERDE_PARAMS" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16628)
-- Name: SKEWED_COL_NAMES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SKEWED_COL_NAMES" (
    "SD_ID" bigint NOT NULL,
    "SKEWED_COL_NAME" character varying(256) DEFAULT NULL::character varying,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."SKEWED_COL_NAMES" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16632)
-- Name: SKEWED_COL_VALUE_LOC_MAP; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SKEWED_COL_VALUE_LOC_MAP" (
    "SD_ID" bigint NOT NULL,
    "STRING_LIST_ID_KID" bigint NOT NULL,
    "LOCATION" character varying(4000) DEFAULT NULL::character varying
);


ALTER TABLE public."SKEWED_COL_VALUE_LOC_MAP" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16621)
-- Name: SKEWED_STRING_LIST; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SKEWED_STRING_LIST" (
    "STRING_LIST_ID" bigint NOT NULL
);


ALTER TABLE public."SKEWED_STRING_LIST" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16624)
-- Name: SKEWED_STRING_LIST_VALUES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SKEWED_STRING_LIST_VALUES" (
    "STRING_LIST_ID" bigint NOT NULL,
    "STRING_LIST_VALUE" character varying(256) DEFAULT NULL::character varying,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."SKEWED_STRING_LIST_VALUES" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16639)
-- Name: SKEWED_VALUES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SKEWED_VALUES" (
    "SD_ID_OID" bigint NOT NULL,
    "STRING_LIST_ID_EID" bigint NOT NULL,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."SKEWED_VALUES" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16560)
-- Name: SORT_COLS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SORT_COLS" (
    "SD_ID" bigint NOT NULL,
    "COLUMN_NAME" character varying(767) DEFAULT NULL::character varying,
    "ORDER" bigint NOT NULL,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."SORT_COLS" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16567)
-- Name: TABLE_PARAMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TABLE_PARAMS" (
    "TBL_ID" bigint NOT NULL,
    "PARAM_KEY" character varying(256) NOT NULL,
    "PARAM_VALUE" text
);


ALTER TABLE public."TABLE_PARAMS" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16661)
-- Name: TAB_COL_STATS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TAB_COL_STATS" (
    "CS_ID" bigint NOT NULL,
    "DB_NAME" character varying(128) DEFAULT NULL::character varying,
    "TABLE_NAME" character varying(256) DEFAULT NULL::character varying,
    "COLUMN_NAME" character varying(767) DEFAULT NULL::character varying,
    "COLUMN_TYPE" character varying(128) DEFAULT NULL::character varying,
    "TBL_ID" bigint NOT NULL,
    "LONG_LOW_VALUE" bigint,
    "LONG_HIGH_VALUE" bigint,
    "DOUBLE_LOW_VALUE" double precision,
    "DOUBLE_HIGH_VALUE" double precision,
    "BIG_DECIMAL_LOW_VALUE" character varying(4000) DEFAULT NULL::character varying,
    "BIG_DECIMAL_HIGH_VALUE" character varying(4000) DEFAULT NULL::character varying,
    "NUM_NULLS" bigint NOT NULL,
    "NUM_DISTINCTS" bigint,
    "AVG_COL_LEN" double precision,
    "MAX_COL_LEN" bigint,
    "NUM_TRUES" bigint,
    "NUM_FALSES" bigint,
    "LAST_ANALYZED" bigint NOT NULL
);


ALTER TABLE public."TAB_COL_STATS" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16573)
-- Name: TBLS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TBLS" (
    "TBL_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "DB_ID" bigint,
    "LAST_ACCESS_TIME" bigint NOT NULL,
    "OWNER" character varying(767) DEFAULT NULL::character varying,
    "RETENTION" bigint NOT NULL,
    "SD_ID" bigint,
    "TBL_NAME" character varying(256) DEFAULT NULL::character varying,
    "TBL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "VIEW_EXPANDED_TEXT" text,
    "VIEW_ORIGINAL_TEXT" text,
    "IS_REWRITE_ENABLED" boolean NOT NULL
);


ALTER TABLE public."TBLS" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16582)
-- Name: TBL_COL_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TBL_COL_PRIVS" (
    "TBL_COLUMN_GRANT_ID" bigint NOT NULL,
    "COLUMN_NAME" character varying(767) DEFAULT NULL::character varying,
    "CREATE_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "TBL_COL_PRIV" character varying(128) DEFAULT NULL::character varying,
    "TBL_ID" bigint
);


ALTER TABLE public."TBL_COL_PRIVS" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16594)
-- Name: TBL_PRIVS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TBL_PRIVS" (
    "TBL_GRANT_ID" bigint NOT NULL,
    "CREATE_TIME" bigint NOT NULL,
    "GRANT_OPTION" smallint NOT NULL,
    "GRANTOR" character varying(128) DEFAULT NULL::character varying,
    "GRANTOR_TYPE" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_NAME" character varying(128) DEFAULT NULL::character varying,
    "PRINCIPAL_TYPE" character varying(128) DEFAULT NULL::character varying,
    "TBL_PRIV" character varying(128) DEFAULT NULL::character varying,
    "TBL_ID" bigint
);


ALTER TABLE public."TBL_PRIVS" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16605)
-- Name: TYPES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TYPES" (
    "TYPES_ID" bigint NOT NULL,
    "TYPE_NAME" character varying(128) DEFAULT NULL::character varying,
    "TYPE1" character varying(767) DEFAULT NULL::character varying,
    "TYPE2" character varying(767) DEFAULT NULL::character varying
);


ALTER TABLE public."TYPES" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16614)
-- Name: TYPE_FIELDS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TYPE_FIELDS" (
    "TYPE_NAME" bigint NOT NULL,
    "COMMENT" character varying(256) DEFAULT NULL::character varying,
    "FIELD_NAME" character varying(128) NOT NULL,
    "FIELD_TYPE" character varying(767) NOT NULL,
    "INTEGER_IDX" bigint NOT NULL
);


ALTER TABLE public."TYPE_FIELDS" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16673)
-- Name: VERSION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VERSION" (
    "VER_ID" bigint NOT NULL,
    "SCHEMA_VERSION" character varying(127) NOT NULL,
    "VERSION_COMMENT" character varying(255) NOT NULL
);


ALTER TABLE public."VERSION" OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 17103)
-- Name: aux_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aux_table (
    mt_key1 character varying(128) NOT NULL,
    mt_key2 bigint NOT NULL,
    mt_comment character varying(255)
);


ALTER TABLE public.aux_table OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17084)
-- Name: compaction_queue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compaction_queue (
    cq_id bigint NOT NULL,
    cq_database character varying(128) NOT NULL,
    cq_table character varying(128) NOT NULL,
    cq_partition character varying(767),
    cq_state character(1) NOT NULL,
    cq_type character(1) NOT NULL,
    cq_tblproperties character varying(2048),
    cq_worker_id character varying(128),
    cq_start bigint,
    cq_run_as character varying(128),
    cq_highest_txn_id bigint,
    cq_meta_info bytea,
    cq_hadoop_job_id character varying(32)
);


ALTER TABLE public.compaction_queue OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17095)
-- Name: completed_compactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.completed_compactions (
    cc_id bigint NOT NULL,
    cc_database character varying(128) NOT NULL,
    cc_table character varying(128) NOT NULL,
    cc_partition character varying(767),
    cc_state character(1) NOT NULL,
    cc_type character(1) NOT NULL,
    cc_tblproperties character varying(2048),
    cc_worker_id character varying(128),
    cc_start bigint,
    cc_end bigint,
    cc_run_as character varying(128),
    cc_highest_txn_id bigint,
    cc_meta_info bytea,
    cc_hadoop_job_id character varying(32)
);


ALTER TABLE public.completed_compactions OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17062)
-- Name: completed_txn_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.completed_txn_components (
    ctc_txnid bigint,
    ctc_database character varying(128) NOT NULL,
    ctc_table character varying(256),
    ctc_partition character varying(767)
);


ALTER TABLE public.completed_txn_components OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17071)
-- Name: hive_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hive_locks (
    hl_lock_ext_id bigint NOT NULL,
    hl_lock_int_id bigint NOT NULL,
    hl_txnid bigint,
    hl_db character varying(128) NOT NULL,
    hl_table character varying(128),
    hl_partition character varying(767) DEFAULT NULL::character varying,
    hl_lock_state character(1) NOT NULL,
    hl_lock_type character(1) NOT NULL,
    hl_last_heartbeat bigint NOT NULL,
    hl_acquired_at bigint,
    hl_user character varying(128) NOT NULL,
    hl_host character varying(128) NOT NULL,
    hl_heartbeat_count integer,
    hl_agent_info character varying(128),
    hl_blockedby_ext_id bigint,
    hl_blockedby_int_id bigint
);


ALTER TABLE public.hive_locks OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 17092)
-- Name: next_compaction_queue_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.next_compaction_queue_id (
    ncq_next bigint NOT NULL
);


ALTER TABLE public.next_compaction_queue_id OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 17081)
-- Name: next_lock_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.next_lock_id (
    nl_next bigint NOT NULL
);


ALTER TABLE public.next_lock_id OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 17068)
-- Name: next_txn_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.next_txn_id (
    ntxn_next bigint NOT NULL
);


ALTER TABLE public.next_txn_id OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17049)
-- Name: txn_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.txn_components (
    tc_txnid bigint,
    tc_database character varying(128) NOT NULL,
    tc_table character varying(128),
    tc_partition character varying(767) DEFAULT NULL::character varying,
    tc_operation_type character(1) NOT NULL
);


ALTER TABLE public.txn_components OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17041)
-- Name: txns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.txns (
    txn_id bigint NOT NULL,
    txn_state character(1) NOT NULL,
    txn_started bigint NOT NULL,
    txn_last_heartbeat bigint NOT NULL,
    txn_user character varying(128) NOT NULL,
    txn_host character varying(128) NOT NULL,
    txn_agent_info character varying(128),
    txn_meta_info character varying(128),
    txn_heartbeat_count integer
);


ALTER TABLE public.txns OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17108)
-- Name: write_set; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.write_set (
    ws_database character varying(128) NOT NULL,
    ws_table character varying(128) NOT NULL,
    ws_partition character varying(767),
    ws_txnid bigint NOT NULL,
    ws_commit_id bigint NOT NULL,
    ws_operation_type character(1) NOT NULL
);


ALTER TABLE public.write_set OWNER TO postgres;

--
-- TOC entry 3160 (class 2604 OID 16647)
-- Name: MASTER_KEYS KEY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MASTER_KEYS" ALTER COLUMN "KEY_ID" SET DEFAULT nextval('public."MASTER_KEYS_KEY_ID_seq"'::regclass);


--
-- TOC entry 3499 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: BUCKETING_COLS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."BUCKETING_COLS" ("SD_ID", "BUCKET_COL_NAME", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3500 (class 0 OID 16389)
-- Dependencies: 203
-- Data for Name: CDS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CDS" ("CD_ID") FROM stdin;
1
2
3
4
5
6
7
8
\.


--
-- TOC entry 3501 (class 0 OID 16392)
-- Dependencies: 204
-- Data for Name: COLUMNS_V2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."COLUMNS_V2" ("CD_ID", "COMMENT", "COLUMN_NAME", "TYPE_NAME", "INTEGER_IDX") FROM stdin;
1	\N	c_custkey	bigint	0
1	\N	c_name	string	1
1	\N	c_address	string	2
1	\N	c_nationkey	bigint	3
1	\N	c_phone	string	4
1	\N	c_acctbal	double	5
1	\N	c_mktsegment	string	6
1	\N	c_comment	string	7
2	\N	o_orderkey	bigint	0
2	\N	o_custkey	bigint	1
2	\N	o_orderstatus	string	2
2	\N	o_totalprice	double	3
2	\N	o_orderdate	date	4
2	\N	o_orderpriority	string	5
2	\N	o_clerk	string	6
2	\N	o_shippriority	int	7
2	\N	o_comment	string	8
3	\N	l_orderkey	bigint	0
3	\N	l_partkey	bigint	1
3	\N	l_suppkey	bigint	2
3	\N	l_linenumber	int	3
3	\N	l_quantity	double	4
3	\N	l_extendedprice	double	5
3	\N	l_discount	double	6
3	\N	l_tax	double	7
3	\N	l_returnflag	string	8
3	\N	l_linestatus	string	9
3	\N	l_shipdate	date	10
3	\N	l_commitdate	date	11
3	\N	l_receiptdate	date	12
3	\N	l_shipinstruct	string	13
3	\N	l_shipmode	string	14
3	\N	l_comment	string	15
4	\N	p_partkey	bigint	0
4	\N	p_name	string	1
4	\N	p_mfgr	string	2
4	\N	p_brand	string	3
4	\N	p_type	string	4
4	\N	p_size	int	5
4	\N	p_container	string	6
4	\N	p_retailprice	double	7
4	\N	p_comment	string	8
5	\N	ps_partkey	bigint	0
5	\N	ps_suppkey	bigint	1
5	\N	ps_availqty	int	2
5	\N	ps_supplycost	double	3
5	\N	ps_comment	string	4
6	\N	s_suppkey	bigint	0
6	\N	s_name	string	1
6	\N	s_address	string	2
6	\N	s_nationkey	bigint	3
6	\N	s_phone	string	4
6	\N	s_acctbal	double	5
6	\N	s_comment	string	6
7	\N	n_nationkey	bigint	0
7	\N	n_name	string	1
7	\N	n_regionkey	bigint	2
7	\N	n_comment	string	3
8	\N	r_regionkey	bigint	0
8	\N	r_name	string	1
8	\N	r_comment	string	2
\.


--
-- TOC entry 3502 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: DATABASE_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DATABASE_PARAMS" ("DB_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- TOC entry 3503 (class 0 OID 16405)
-- Dependencies: 206
-- Data for Name: DBS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DBS" ("DB_ID", "DESC", "DB_LOCATION_URI", "NAME", "OWNER_NAME", "OWNER_TYPE") FROM stdin;
1	default database	alluxio://s3demo1-master-0.kyuubi:21079/spark	default	anonymous	USER
6		alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db	tpch_tiny	anonymous	USER
\.


--
-- TOC entry 3504 (class 0 OID 16415)
-- Dependencies: 207
-- Data for Name: DB_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DB_PRIVS" ("DB_GRANT_ID", "CREATE_TIME", "DB_ID", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "DB_PRIV") FROM stdin;
\.


--
-- TOC entry 3537 (class 0 OID 16653)
-- Dependencies: 240
-- Data for Name: DELEGATION_TOKENS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DELEGATION_TOKENS" ("TOKEN_IDENT", "TOKEN") FROM stdin;
\.


--
-- TOC entry 3541 (class 0 OID 16689)
-- Dependencies: 244
-- Data for Name: FUNCS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FUNCS" ("FUNC_ID", "CLASS_NAME", "CREATE_TIME", "DB_ID", "FUNC_NAME", "FUNC_TYPE", "OWNER_NAME", "OWNER_TYPE") FROM stdin;
\.


--
-- TOC entry 3542 (class 0 OID 16697)
-- Dependencies: 245
-- Data for Name: FUNC_RU; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FUNC_RU" ("FUNC_ID", "RESOURCE_TYPE", "RESOURCE_URI", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 16426)
-- Dependencies: 208
-- Data for Name: GLOBAL_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GLOBAL_PRIVS" ("USER_GRANT_ID", "CREATE_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "USER_PRIV") FROM stdin;
1	1669608498	1	admin	ROLE	admin	ROLE	All
\.


--
-- TOC entry 3506 (class 0 OID 16437)
-- Dependencies: 209
-- Data for Name: IDXS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IDXS" ("INDEX_ID", "CREATE_TIME", "DEFERRED_REBUILD", "INDEX_HANDLER_CLASS", "INDEX_NAME", "INDEX_TBL_ID", "LAST_ACCESS_TIME", "ORIG_TBL_ID", "SD_ID") FROM stdin;
\.


--
-- TOC entry 3507 (class 0 OID 16445)
-- Dependencies: 210
-- Data for Name: INDEX_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."INDEX_PARAMS" ("INDEX_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- TOC entry 3545 (class 0 OID 16718)
-- Dependencies: 248
-- Data for Name: KEY_CONSTRAINTS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."KEY_CONSTRAINTS" ("CHILD_CD_ID", "CHILD_INTEGER_IDX", "CHILD_TBL_ID", "PARENT_CD_ID", "PARENT_INTEGER_IDX", "PARENT_TBL_ID", "POSITION", "CONSTRAINT_NAME", "CONSTRAINT_TYPE", "UPDATE_RULE", "DELETE_RULE", "ENABLE_VALIDATE_RELY") FROM stdin;
\.


--
-- TOC entry 3536 (class 0 OID 16644)
-- Dependencies: 239
-- Data for Name: MASTER_KEYS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MASTER_KEYS" ("KEY_ID", "MASTER_KEY") FROM stdin;
\.


--
-- TOC entry 3543 (class 0 OID 16705)
-- Dependencies: 246
-- Data for Name: NOTIFICATION_LOG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."NOTIFICATION_LOG" ("NL_ID", "EVENT_ID", "EVENT_TIME", "EVENT_TYPE", "DB_NAME", "TBL_NAME", "MESSAGE", "MESSAGE_FORMAT") FROM stdin;
\.


--
-- TOC entry 3544 (class 0 OID 16713)
-- Dependencies: 247
-- Data for Name: NOTIFICATION_SEQUENCE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."NOTIFICATION_SEQUENCE" ("NNI_ID", "NEXT_EVENT_ID") FROM stdin;
\.


--
-- TOC entry 3508 (class 0 OID 16452)
-- Dependencies: 211
-- Data for Name: NUCLEUS_TABLES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."NUCLEUS_TABLES" ("CLASS_NAME", "TABLE_NAME", "TYPE", "OWNER", "VERSION", "INTERFACE_NAME") FROM stdin;
\.


--
-- TOC entry 3509 (class 0 OID 16459)
-- Dependencies: 212
-- Data for Name: PARTITIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PARTITIONS" ("PART_ID", "CREATE_TIME", "LAST_ACCESS_TIME", "PART_NAME", "SD_ID", "TBL_ID") FROM stdin;
\.


--
-- TOC entry 3510 (class 0 OID 16466)
-- Dependencies: 213
-- Data for Name: PARTITION_EVENTS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PARTITION_EVENTS" ("PART_NAME_ID", "DB_NAME", "EVENT_TIME", "EVENT_TYPE", "PARTITION_NAME", "TBL_NAME") FROM stdin;
\.


--
-- TOC entry 3511 (class 0 OID 16472)
-- Dependencies: 214
-- Data for Name: PARTITION_KEYS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PARTITION_KEYS" ("TBL_ID", "PKEY_COMMENT", "PKEY_NAME", "PKEY_TYPE", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3512 (class 0 OID 16479)
-- Dependencies: 215
-- Data for Name: PARTITION_KEY_VALS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PARTITION_KEY_VALS" ("PART_ID", "PART_KEY_VAL", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3513 (class 0 OID 16483)
-- Dependencies: 216
-- Data for Name: PARTITION_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PARTITION_PARAMS" ("PART_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- TOC entry 3514 (class 0 OID 16490)
-- Dependencies: 217
-- Data for Name: PART_COL_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PART_COL_PRIVS" ("PART_COLUMN_GRANT_ID", "COLUMN_NAME", "CREATE_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PART_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_COL_PRIV") FROM stdin;
\.


--
-- TOC entry 3540 (class 0 OID 16676)
-- Dependencies: 243
-- Data for Name: PART_COL_STATS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PART_COL_STATS" ("CS_ID", "DB_NAME", "TABLE_NAME", "PARTITION_NAME", "COLUMN_NAME", "COLUMN_TYPE", "PART_ID", "LONG_LOW_VALUE", "LONG_HIGH_VALUE", "DOUBLE_LOW_VALUE", "DOUBLE_HIGH_VALUE", "BIG_DECIMAL_LOW_VALUE", "BIG_DECIMAL_HIGH_VALUE", "NUM_NULLS", "NUM_DISTINCTS", "AVG_COL_LEN", "MAX_COL_LEN", "NUM_TRUES", "NUM_FALSES", "LAST_ANALYZED") FROM stdin;
\.


--
-- TOC entry 3515 (class 0 OID 16502)
-- Dependencies: 218
-- Data for Name: PART_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PART_PRIVS" ("PART_GRANT_ID", "CREATE_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PART_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_PRIV") FROM stdin;
\.


--
-- TOC entry 3516 (class 0 OID 16513)
-- Dependencies: 219
-- Data for Name: ROLES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ROLES" ("ROLE_ID", "CREATE_TIME", "OWNER_NAME", "ROLE_NAME") FROM stdin;
1	1669608498	admin	admin
2	1669608498	public	public
\.


--
-- TOC entry 3517 (class 0 OID 16518)
-- Dependencies: 220
-- Data for Name: ROLE_MAP; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ROLE_MAP" ("ROLE_GRANT_ID", "ADD_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "ROLE_ID") FROM stdin;
\.


--
-- TOC entry 3518 (class 0 OID 16528)
-- Dependencies: 221
-- Data for Name: SDS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SDS" ("SD_ID", "INPUT_FORMAT", "IS_COMPRESSED", "LOCATION", "NUM_BUCKETS", "OUTPUT_FORMAT", "SERDE_ID", "CD_ID", "IS_STOREDASSUBDIRECTORIES") FROM stdin;
1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/customer	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	1	1	f
2	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/orders	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	2	2	f
3	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/lineitem	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	3	3	f
4	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/part	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	4	4	f
5	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/partsupp	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	5	5	f
6	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/supplier	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	6	6	f
7	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/nation	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	7	7	f
8	org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat	f	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/region	-1	org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat	8	8	f
\.


--
-- TOC entry 3519 (class 0 OID 16537)
-- Dependencies: 222
-- Data for Name: SD_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SD_PARAMS" ("SD_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- TOC entry 3520 (class 0 OID 16543)
-- Dependencies: 223
-- Data for Name: SEQUENCE_TABLE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SEQUENCE_TABLE" ("SEQUENCE_NAME", "NEXT_VAL") FROM stdin;
org.apache.hadoop.hive.metastore.model.MRole	6
org.apache.hadoop.hive.metastore.model.MGlobalPrivilege	6
org.apache.hadoop.hive.metastore.model.MDatabase	11
org.apache.hadoop.hive.metastore.model.MTable	11
org.apache.hadoop.hive.metastore.model.MStorageDescriptor	11
org.apache.hadoop.hive.metastore.model.MSerDeInfo	11
org.apache.hadoop.hive.metastore.model.MColumnDescriptor	11
org.apache.hadoop.hive.metastore.model.MTablePrivilege	36
\.


--
-- TOC entry 3521 (class 0 OID 16546)
-- Dependencies: 224
-- Data for Name: SERDES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SERDES" ("SERDE_ID", "NAME", "SLIB") FROM stdin;
1	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
2	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
3	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
4	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
5	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
6	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
7	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
8	\N	org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
\.


--
-- TOC entry 3522 (class 0 OID 16554)
-- Dependencies: 225
-- Data for Name: SERDE_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SERDE_PARAMS" ("SERDE_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
1	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/customer
1	serialization.format	1
2	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/orders
2	serialization.format	1
3	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/lineitem
3	serialization.format	1
4	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/part
4	serialization.format	1
5	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/partsupp
5	serialization.format	1
6	serialization.format	1
6	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/supplier
7	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/nation
7	serialization.format	1
8	path	alluxio://s3demo1-master-0.kyuubi:21079/spark/tpch_tiny.db/region
8	serialization.format	1
\.


--
-- TOC entry 3532 (class 0 OID 16628)
-- Dependencies: 235
-- Data for Name: SKEWED_COL_NAMES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SKEWED_COL_NAMES" ("SD_ID", "SKEWED_COL_NAME", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3533 (class 0 OID 16632)
-- Dependencies: 236
-- Data for Name: SKEWED_COL_VALUE_LOC_MAP; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SKEWED_COL_VALUE_LOC_MAP" ("SD_ID", "STRING_LIST_ID_KID", "LOCATION") FROM stdin;
\.


--
-- TOC entry 3530 (class 0 OID 16621)
-- Dependencies: 233
-- Data for Name: SKEWED_STRING_LIST; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SKEWED_STRING_LIST" ("STRING_LIST_ID") FROM stdin;
\.


--
-- TOC entry 3531 (class 0 OID 16624)
-- Dependencies: 234
-- Data for Name: SKEWED_STRING_LIST_VALUES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SKEWED_STRING_LIST_VALUES" ("STRING_LIST_ID", "STRING_LIST_VALUE", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3534 (class 0 OID 16639)
-- Dependencies: 237
-- Data for Name: SKEWED_VALUES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SKEWED_VALUES" ("SD_ID_OID", "STRING_LIST_ID_EID", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3523 (class 0 OID 16560)
-- Dependencies: 226
-- Data for Name: SORT_COLS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SORT_COLS" ("SD_ID", "COLUMN_NAME", "ORDER", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3524 (class 0 OID 16567)
-- Dependencies: 227
-- Data for Name: TABLE_PARAMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TABLE_PARAMS" ("TBL_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
1	spark.sql.create.version	3.3.0
1	spark.sql.sources.provider	parquet
1	numFiles	1
1	transient_lastDdlTime	1669608572
1	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"c_custkey","type":"long","nullable":true,"metadata":{}},{"name":"c_name","type":"string","nullable":true,"metadata":{}},{"name":"c_address","type":"string","nullable":true,"metadata":{}},{"name":"c_nationkey","type":"long","nullable":true,"metadata":{}},{"name":"c_phone","type":"string","nullable":true,"metadata":{}},{"name":"c_acctbal","type":"double","nullable":true,"metadata":{}},{"name":"c_mktsegment","type":"string","nullable":true,"metadata":{}},{"name":"c_comment","type":"string","nullable":true,"metadata":{}}]}
1	totalSize	129174
2	spark.sql.create.version	3.3.0
2	transient_lastDdlTime	1669608574
2	spark.sql.sources.provider	parquet
2	numFiles	1
2	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"o_orderkey","type":"long","nullable":true,"metadata":{}},{"name":"o_custkey","type":"long","nullable":true,"metadata":{}},{"name":"o_orderstatus","type":"string","nullable":true,"metadata":{}},{"name":"o_totalprice","type":"double","nullable":true,"metadata":{}},{"name":"o_orderdate","type":"date","nullable":true,"metadata":{}},{"name":"o_orderpriority","type":"string","nullable":true,"metadata":{}},{"name":"o_clerk","type":"string","nullable":true,"metadata":{}},{"name":"o_shippriority","type":"integer","nullable":true,"metadata":{}},{"name":"o_comment","type":"string","nullable":true,"metadata":{}}]}
2	totalSize	536899
3	spark.sql.create.version	3.3.0
3	transient_lastDdlTime	1669608577
3	spark.sql.sources.provider	parquet
3	numFiles	1
3	totalSize	1903881
3	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"l_orderkey","type":"long","nullable":true,"metadata":{}},{"name":"l_partkey","type":"long","nullable":true,"metadata":{}},{"name":"l_suppkey","type":"long","nullable":true,"metadata":{}},{"name":"l_linenumber","type":"integer","nullable":true,"metadata":{}},{"name":"l_quantity","type":"double","nullable":true,"metadata":{}},{"name":"l_extendedprice","type":"double","nullable":true,"metadata":{}},{"name":"l_discount","type":"double","nullable":true,"metadata":{}},{"name":"l_tax","type":"double","nullable":true,"metadata":{}},{"name":"l_returnflag","type":"string","nullable":true,"metadata":{}},{"name":"l_linestatus","type":"string","nullable":true,"metadata":{}},{"name":"l_shipdate","type":"date","nullable":true,"metadata":{}},{"name":"l_commitdate","type":"date","nullable":true,"metadata":{}},{"name":"l_receiptdate","type":"date","nullable":true,"metadata":{}},{"name":"l_shipinstruct","type":"string","nullable":true,"metadata":{}},{"name":"l_shipmode","type":"string","nullable":true,"metadata":{}},{"name":"l_comment","type":"string","nullable":true,"metadata":{}}]}
4	spark.sql.create.version	3.3.0
4	spark.sql.sources.provider	parquet
4	numFiles	1
4	transient_lastDdlTime	1669608578
4	totalSize	72292
4	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"p_partkey","type":"long","nullable":true,"metadata":{}},{"name":"p_name","type":"string","nullable":true,"metadata":{}},{"name":"p_mfgr","type":"string","nullable":true,"metadata":{}},{"name":"p_brand","type":"string","nullable":true,"metadata":{}},{"name":"p_type","type":"string","nullable":true,"metadata":{}},{"name":"p_size","type":"integer","nullable":true,"metadata":{}},{"name":"p_container","type":"string","nullable":true,"metadata":{}},{"name":"p_retailprice","type":"double","nullable":true,"metadata":{}},{"name":"p_comment","type":"string","nullable":true,"metadata":{}}]}
5	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"ps_partkey","type":"long","nullable":true,"metadata":{}},{"name":"ps_suppkey","type":"long","nullable":true,"metadata":{}},{"name":"ps_availqty","type":"integer","nullable":true,"metadata":{}},{"name":"ps_supplycost","type":"double","nullable":true,"metadata":{}},{"name":"ps_comment","type":"string","nullable":true,"metadata":{}}]}
5	spark.sql.create.version	3.3.0
5	spark.sql.sources.provider	parquet
5	numFiles	1
5	transient_lastDdlTime	1669608579
5	totalSize	439101
6	spark.sql.create.version	3.3.0
6	spark.sql.sources.provider	parquet
6	totalSize	11848
6	numFiles	1
6	transient_lastDdlTime	1669608580
6	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"s_suppkey","type":"long","nullable":true,"metadata":{}},{"name":"s_name","type":"string","nullable":true,"metadata":{}},{"name":"s_address","type":"string","nullable":true,"metadata":{}},{"name":"s_nationkey","type":"long","nullable":true,"metadata":{}},{"name":"s_phone","type":"string","nullable":true,"metadata":{}},{"name":"s_acctbal","type":"double","nullable":true,"metadata":{}},{"name":"s_comment","type":"string","nullable":true,"metadata":{}}]}
7	spark.sql.create.version	3.3.0
7	spark.sql.sources.provider	parquet
7	transient_lastDdlTime	1669608581
7	numFiles	1
7	totalSize	3099
7	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"n_nationkey","type":"long","nullable":true,"metadata":{}},{"name":"n_name","type":"string","nullable":true,"metadata":{}},{"name":"n_regionkey","type":"long","nullable":true,"metadata":{}},{"name":"n_comment","type":"string","nullable":true,"metadata":{}}]}
8	spark.sql.create.version	3.3.0
8	spark.sql.sources.provider	parquet
8	spark.sql.sources.schema	{"type":"struct","fields":[{"name":"r_regionkey","type":"long","nullable":true,"metadata":{}},{"name":"r_name","type":"string","nullable":true,"metadata":{}},{"name":"r_comment","type":"string","nullable":true,"metadata":{}}]}
8	transient_lastDdlTime	1669608582
8	totalSize	1553
8	numFiles	1
\.


--
-- TOC entry 3538 (class 0 OID 16661)
-- Dependencies: 241
-- Data for Name: TAB_COL_STATS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TAB_COL_STATS" ("CS_ID", "DB_NAME", "TABLE_NAME", "COLUMN_NAME", "COLUMN_TYPE", "TBL_ID", "LONG_LOW_VALUE", "LONG_HIGH_VALUE", "DOUBLE_LOW_VALUE", "DOUBLE_HIGH_VALUE", "BIG_DECIMAL_LOW_VALUE", "BIG_DECIMAL_HIGH_VALUE", "NUM_NULLS", "NUM_DISTINCTS", "AVG_COL_LEN", "MAX_COL_LEN", "NUM_TRUES", "NUM_FALSES", "LAST_ANALYZED") FROM stdin;
\.


--
-- TOC entry 3525 (class 0 OID 16573)
-- Dependencies: 228
-- Data for Name: TBLS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TBLS" ("TBL_ID", "CREATE_TIME", "DB_ID", "LAST_ACCESS_TIME", "OWNER", "RETENTION", "SD_ID", "TBL_NAME", "TBL_TYPE", "VIEW_EXPANDED_TEXT", "VIEW_ORIGINAL_TEXT", "IS_REWRITE_ENABLED") FROM stdin;
1	1669608572	6	0	anonymous	0	1	customer	MANAGED_TABLE	\N	\N	f
2	1669608574	6	0	anonymous	0	2	orders	MANAGED_TABLE	\N	\N	f
3	1669608577	6	0	anonymous	0	3	lineitem	MANAGED_TABLE	\N	\N	f
4	1669608578	6	0	anonymous	0	4	part	MANAGED_TABLE	\N	\N	f
5	1669608579	6	0	anonymous	0	5	partsupp	MANAGED_TABLE	\N	\N	f
6	1669608580	6	0	anonymous	0	6	supplier	MANAGED_TABLE	\N	\N	f
7	1669608581	6	0	anonymous	0	7	nation	MANAGED_TABLE	\N	\N	f
8	1669608582	6	0	anonymous	0	8	region	MANAGED_TABLE	\N	\N	f
\.


--
-- TOC entry 3526 (class 0 OID 16582)
-- Dependencies: 229
-- Data for Name: TBL_COL_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TBL_COL_PRIVS" ("TBL_COLUMN_GRANT_ID", "COLUMN_NAME", "CREATE_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_COL_PRIV", "TBL_ID") FROM stdin;
\.


--
-- TOC entry 3527 (class 0 OID 16594)
-- Dependencies: 230
-- Data for Name: TBL_PRIVS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TBL_PRIVS" ("TBL_GRANT_ID", "CREATE_TIME", "GRANT_OPTION", "GRANTOR", "GRANTOR_TYPE", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_PRIV", "TBL_ID") FROM stdin;
1	1669608572	1	anonymous	USER	anonymous	USER	INSERT	1
2	1669608572	1	anonymous	USER	anonymous	USER	SELECT	1
3	1669608572	1	anonymous	USER	anonymous	USER	UPDATE	1
4	1669608572	1	anonymous	USER	anonymous	USER	DELETE	1
5	1669608574	1	anonymous	USER	anonymous	USER	INSERT	2
6	1669608574	1	anonymous	USER	anonymous	USER	SELECT	2
7	1669608574	1	anonymous	USER	anonymous	USER	UPDATE	2
8	1669608574	1	anonymous	USER	anonymous	USER	DELETE	2
9	1669608577	1	anonymous	USER	anonymous	USER	INSERT	3
10	1669608577	1	anonymous	USER	anonymous	USER	SELECT	3
11	1669608577	1	anonymous	USER	anonymous	USER	UPDATE	3
12	1669608577	1	anonymous	USER	anonymous	USER	DELETE	3
13	1669608578	1	anonymous	USER	anonymous	USER	INSERT	4
14	1669608578	1	anonymous	USER	anonymous	USER	SELECT	4
15	1669608578	1	anonymous	USER	anonymous	USER	UPDATE	4
16	1669608578	1	anonymous	USER	anonymous	USER	DELETE	4
17	1669608579	1	anonymous	USER	anonymous	USER	INSERT	5
18	1669608579	1	anonymous	USER	anonymous	USER	SELECT	5
19	1669608579	1	anonymous	USER	anonymous	USER	UPDATE	5
20	1669608579	1	anonymous	USER	anonymous	USER	DELETE	5
21	1669608580	1	anonymous	USER	anonymous	USER	INSERT	6
22	1669608580	1	anonymous	USER	anonymous	USER	SELECT	6
23	1669608580	1	anonymous	USER	anonymous	USER	UPDATE	6
24	1669608580	1	anonymous	USER	anonymous	USER	DELETE	6
25	1669608581	1	anonymous	USER	anonymous	USER	INSERT	7
26	1669608581	1	anonymous	USER	anonymous	USER	SELECT	7
27	1669608581	1	anonymous	USER	anonymous	USER	UPDATE	7
28	1669608581	1	anonymous	USER	anonymous	USER	DELETE	7
29	1669608582	1	anonymous	USER	anonymous	USER	INSERT	8
30	1669608582	1	anonymous	USER	anonymous	USER	SELECT	8
31	1669608582	1	anonymous	USER	anonymous	USER	UPDATE	8
32	1669608582	1	anonymous	USER	anonymous	USER	DELETE	8
\.


--
-- TOC entry 3528 (class 0 OID 16605)
-- Dependencies: 231
-- Data for Name: TYPES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TYPES" ("TYPES_ID", "TYPE_NAME", "TYPE1", "TYPE2") FROM stdin;
\.


--
-- TOC entry 3529 (class 0 OID 16614)
-- Dependencies: 232
-- Data for Name: TYPE_FIELDS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TYPE_FIELDS" ("TYPE_NAME", "COMMENT", "FIELD_NAME", "FIELD_TYPE", "INTEGER_IDX") FROM stdin;
\.


--
-- TOC entry 3539 (class 0 OID 16673)
-- Dependencies: 242
-- Data for Name: VERSION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VERSION" ("VER_ID", "SCHEMA_VERSION", "VERSION_COMMENT") FROM stdin;
1	2.3.0	Hive release version 2.3.0
\.


--
-- TOC entry 3555 (class 0 OID 17103)
-- Dependencies: 258
-- Data for Name: aux_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aux_table (mt_key1, mt_key2, mt_comment) FROM stdin;
\.


--
-- TOC entry 3552 (class 0 OID 17084)
-- Dependencies: 255
-- Data for Name: compaction_queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compaction_queue (cq_id, cq_database, cq_table, cq_partition, cq_state, cq_type, cq_tblproperties, cq_worker_id, cq_start, cq_run_as, cq_highest_txn_id, cq_meta_info, cq_hadoop_job_id) FROM stdin;
\.


--
-- TOC entry 3554 (class 0 OID 17095)
-- Dependencies: 257
-- Data for Name: completed_compactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.completed_compactions (cc_id, cc_database, cc_table, cc_partition, cc_state, cc_type, cc_tblproperties, cc_worker_id, cc_start, cc_end, cc_run_as, cc_highest_txn_id, cc_meta_info, cc_hadoop_job_id) FROM stdin;
\.


--
-- TOC entry 3548 (class 0 OID 17062)
-- Dependencies: 251
-- Data for Name: completed_txn_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.completed_txn_components (ctc_txnid, ctc_database, ctc_table, ctc_partition) FROM stdin;
\.


--
-- TOC entry 3550 (class 0 OID 17071)
-- Dependencies: 253
-- Data for Name: hive_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hive_locks (hl_lock_ext_id, hl_lock_int_id, hl_txnid, hl_db, hl_table, hl_partition, hl_lock_state, hl_lock_type, hl_last_heartbeat, hl_acquired_at, hl_user, hl_host, hl_heartbeat_count, hl_agent_info, hl_blockedby_ext_id, hl_blockedby_int_id) FROM stdin;
\.


--
-- TOC entry 3553 (class 0 OID 17092)
-- Dependencies: 256
-- Data for Name: next_compaction_queue_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.next_compaction_queue_id (ncq_next) FROM stdin;
1
\.


--
-- TOC entry 3551 (class 0 OID 17081)
-- Dependencies: 254
-- Data for Name: next_lock_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.next_lock_id (nl_next) FROM stdin;
1
\.


--
-- TOC entry 3549 (class 0 OID 17068)
-- Dependencies: 252
-- Data for Name: next_txn_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.next_txn_id (ntxn_next) FROM stdin;
1
\.


--
-- TOC entry 3547 (class 0 OID 17049)
-- Dependencies: 250
-- Data for Name: txn_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.txn_components (tc_txnid, tc_database, tc_table, tc_partition, tc_operation_type) FROM stdin;
\.


--
-- TOC entry 3546 (class 0 OID 17041)
-- Dependencies: 249
-- Data for Name: txns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.txns (txn_id, txn_state, txn_started, txn_last_heartbeat, txn_user, txn_host, txn_agent_info, txn_meta_info, txn_heartbeat_count) FROM stdin;
\.


--
-- TOC entry 3556 (class 0 OID 17108)
-- Dependencies: 259
-- Data for Name: write_set; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.write_set (ws_database, ws_table, ws_partition, ws_txnid, ws_commit_id, ws_operation_type) FROM stdin;
\.


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 238
-- Name: MASTER_KEYS_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MASTER_KEYS_KEY_ID_seq"', 1, false);


--
-- TOC entry 3178 (class 2606 OID 16725)
-- Name: BUCKETING_COLS BUCKETING_COLS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BUCKETING_COLS"
    ADD CONSTRAINT "BUCKETING_COLS_pkey" PRIMARY KEY ("SD_ID", "INTEGER_IDX");


--
-- TOC entry 3180 (class 2606 OID 16727)
-- Name: CDS CDS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CDS"
    ADD CONSTRAINT "CDS_pkey" PRIMARY KEY ("CD_ID");


--
-- TOC entry 3182 (class 2606 OID 16729)
-- Name: COLUMNS_V2 COLUMNS_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."COLUMNS_V2"
    ADD CONSTRAINT "COLUMNS_V2_pkey" PRIMARY KEY ("CD_ID", "COLUMN_NAME");


--
-- TOC entry 3185 (class 2606 OID 16731)
-- Name: DATABASE_PARAMS DATABASE_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DATABASE_PARAMS"
    ADD CONSTRAINT "DATABASE_PARAMS_pkey" PRIMARY KEY ("DB_ID", "PARAM_KEY");


--
-- TOC entry 3191 (class 2606 OID 16733)
-- Name: DB_PRIVS DBPRIVILEGEINDEX; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DB_PRIVS"
    ADD CONSTRAINT "DBPRIVILEGEINDEX" UNIQUE ("DB_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "DB_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3187 (class 2606 OID 16735)
-- Name: DBS DBS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DBS"
    ADD CONSTRAINT "DBS_pkey" PRIMARY KEY ("DB_ID");


--
-- TOC entry 3194 (class 2606 OID 16737)
-- Name: DB_PRIVS DB_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DB_PRIVS"
    ADD CONSTRAINT "DB_PRIVS_pkey" PRIMARY KEY ("DB_GRANT_ID");


--
-- TOC entry 3299 (class 2606 OID 16660)
-- Name: DELEGATION_TOKENS DELEGATION_TOKENS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DELEGATION_TOKENS"
    ADD CONSTRAINT "DELEGATION_TOKENS_pkey" PRIMARY KEY ("TOKEN_IDENT");


--
-- TOC entry 3311 (class 2606 OID 16696)
-- Name: FUNCS FUNCS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FUNCS"
    ADD CONSTRAINT "FUNCS_pkey" PRIMARY KEY ("FUNC_ID");


--
-- TOC entry 3315 (class 2606 OID 16704)
-- Name: FUNC_RU FUNC_RU_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FUNC_RU"
    ADD CONSTRAINT "FUNC_RU_pkey" PRIMARY KEY ("FUNC_ID", "INTEGER_IDX");


--
-- TOC entry 3196 (class 2606 OID 16739)
-- Name: GLOBAL_PRIVS GLOBALPRIVILEGEINDEX; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GLOBAL_PRIVS"
    ADD CONSTRAINT "GLOBALPRIVILEGEINDEX" UNIQUE ("PRINCIPAL_NAME", "PRINCIPAL_TYPE", "USER_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3198 (class 2606 OID 16741)
-- Name: GLOBAL_PRIVS GLOBAL_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GLOBAL_PRIVS"
    ADD CONSTRAINT "GLOBAL_PRIVS_pkey" PRIMARY KEY ("USER_GRANT_ID");


--
-- TOC entry 3203 (class 2606 OID 16743)
-- Name: IDXS IDXS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IDXS"
    ADD CONSTRAINT "IDXS_pkey" PRIMARY KEY ("INDEX_ID");


--
-- TOC entry 3208 (class 2606 OID 16745)
-- Name: INDEX_PARAMS INDEX_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."INDEX_PARAMS"
    ADD CONSTRAINT "INDEX_PARAMS_pkey" PRIMARY KEY ("INDEX_ID", "PARAM_KEY");


--
-- TOC entry 3322 (class 2606 OID 16722)
-- Name: KEY_CONSTRAINTS KEY_CONSTRAINTS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KEY_CONSTRAINTS"
    ADD CONSTRAINT "KEY_CONSTRAINTS_pkey" PRIMARY KEY ("CONSTRAINT_NAME", "POSITION");


--
-- TOC entry 3297 (class 2606 OID 16652)
-- Name: MASTER_KEYS MASTER_KEYS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MASTER_KEYS"
    ADD CONSTRAINT "MASTER_KEYS_pkey" PRIMARY KEY ("KEY_ID");


--
-- TOC entry 3317 (class 2606 OID 16712)
-- Name: NOTIFICATION_LOG NOTIFICATION_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NOTIFICATION_LOG"
    ADD CONSTRAINT "NOTIFICATION_LOG_pkey" PRIMARY KEY ("NL_ID");


--
-- TOC entry 3319 (class 2606 OID 16717)
-- Name: NOTIFICATION_SEQUENCE NOTIFICATION_SEQUENCE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NOTIFICATION_SEQUENCE"
    ADD CONSTRAINT "NOTIFICATION_SEQUENCE_pkey" PRIMARY KEY ("NNI_ID");


--
-- TOC entry 3210 (class 2606 OID 16747)
-- Name: NUCLEUS_TABLES NUCLEUS_TABLES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NUCLEUS_TABLES"
    ADD CONSTRAINT "NUCLEUS_TABLES_pkey" PRIMARY KEY ("CLASS_NAME");


--
-- TOC entry 3214 (class 2606 OID 16749)
-- Name: PARTITIONS PARTITIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITIONS"
    ADD CONSTRAINT "PARTITIONS_pkey" PRIMARY KEY ("PART_ID");


--
-- TOC entry 3219 (class 2606 OID 16751)
-- Name: PARTITION_EVENTS PARTITION_EVENTS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_EVENTS"
    ADD CONSTRAINT "PARTITION_EVENTS_pkey" PRIMARY KEY ("PART_NAME_ID");


--
-- TOC entry 3222 (class 2606 OID 16753)
-- Name: PARTITION_KEYS PARTITION_KEYS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_KEYS"
    ADD CONSTRAINT "PARTITION_KEYS_pkey" PRIMARY KEY ("TBL_ID", "PKEY_NAME");


--
-- TOC entry 3225 (class 2606 OID 16755)
-- Name: PARTITION_KEY_VALS PARTITION_KEY_VALS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_KEY_VALS"
    ADD CONSTRAINT "PARTITION_KEY_VALS_pkey" PRIMARY KEY ("PART_ID", "INTEGER_IDX");


--
-- TOC entry 3228 (class 2606 OID 16757)
-- Name: PARTITION_PARAMS PARTITION_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_PARAMS"
    ADD CONSTRAINT "PARTITION_PARAMS_pkey" PRIMARY KEY ("PART_ID", "PARAM_KEY");


--
-- TOC entry 3232 (class 2606 OID 16759)
-- Name: PART_COL_PRIVS PART_COL_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_COL_PRIVS"
    ADD CONSTRAINT "PART_COL_PRIVS_pkey" PRIMARY KEY ("PART_COLUMN_GRANT_ID");


--
-- TOC entry 3307 (class 2606 OID 16805)
-- Name: PART_COL_STATS PART_COL_STATS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_COL_STATS"
    ADD CONSTRAINT "PART_COL_STATS_pkey" PRIMARY KEY ("CS_ID");


--
-- TOC entry 3236 (class 2606 OID 16761)
-- Name: PART_PRIVS PART_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_PRIVS"
    ADD CONSTRAINT "PART_PRIVS_pkey" PRIMARY KEY ("PART_GRANT_ID");


--
-- TOC entry 3238 (class 2606 OID 16763)
-- Name: ROLES ROLEENTITYINDEX; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLES"
    ADD CONSTRAINT "ROLEENTITYINDEX" UNIQUE ("ROLE_NAME");


--
-- TOC entry 3240 (class 2606 OID 16765)
-- Name: ROLES ROLES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLES"
    ADD CONSTRAINT "ROLES_pkey" PRIMARY KEY ("ROLE_ID");


--
-- TOC entry 3243 (class 2606 OID 16767)
-- Name: ROLE_MAP ROLE_MAP_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLE_MAP"
    ADD CONSTRAINT "ROLE_MAP_pkey" PRIMARY KEY ("ROLE_GRANT_ID");


--
-- TOC entry 3248 (class 2606 OID 16769)
-- Name: SDS SDS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SDS"
    ADD CONSTRAINT "SDS_pkey" PRIMARY KEY ("SD_ID");


--
-- TOC entry 3251 (class 2606 OID 16771)
-- Name: SD_PARAMS SD_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SD_PARAMS"
    ADD CONSTRAINT "SD_PARAMS_pkey" PRIMARY KEY ("SD_ID", "PARAM_KEY");


--
-- TOC entry 3253 (class 2606 OID 16773)
-- Name: SEQUENCE_TABLE SEQUENCE_TABLE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SEQUENCE_TABLE"
    ADD CONSTRAINT "SEQUENCE_TABLE_pkey" PRIMARY KEY ("SEQUENCE_NAME");


--
-- TOC entry 3255 (class 2606 OID 16775)
-- Name: SERDES SERDES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SERDES"
    ADD CONSTRAINT "SERDES_pkey" PRIMARY KEY ("SERDE_ID");


--
-- TOC entry 3258 (class 2606 OID 16777)
-- Name: SERDE_PARAMS SERDE_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SERDE_PARAMS"
    ADD CONSTRAINT "SERDE_PARAMS_pkey" PRIMARY KEY ("SERDE_ID", "PARAM_KEY");


--
-- TOC entry 3291 (class 2606 OID 16797)
-- Name: SKEWED_COL_NAMES SKEWED_COL_NAMES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_COL_NAMES"
    ADD CONSTRAINT "SKEWED_COL_NAMES_pkey" PRIMARY KEY ("SD_ID", "INTEGER_IDX");


--
-- TOC entry 3293 (class 2606 OID 16799)
-- Name: SKEWED_COL_VALUE_LOC_MAP SKEWED_COL_VALUE_LOC_MAP_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_COL_VALUE_LOC_MAP"
    ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_pkey" PRIMARY KEY ("SD_ID", "STRING_LIST_ID_KID");


--
-- TOC entry 3289 (class 2606 OID 16795)
-- Name: SKEWED_STRING_LIST_VALUES SKEWED_STRING_LIST_VALUES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_STRING_LIST_VALUES"
    ADD CONSTRAINT "SKEWED_STRING_LIST_VALUES_pkey" PRIMARY KEY ("STRING_LIST_ID", "INTEGER_IDX");


--
-- TOC entry 3287 (class 2606 OID 16793)
-- Name: SKEWED_STRING_LIST SKEWED_STRING_LIST_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_STRING_LIST"
    ADD CONSTRAINT "SKEWED_STRING_LIST_pkey" PRIMARY KEY ("STRING_LIST_ID");


--
-- TOC entry 3295 (class 2606 OID 16801)
-- Name: SKEWED_VALUES SKEWED_VALUES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_VALUES"
    ADD CONSTRAINT "SKEWED_VALUES_pkey" PRIMARY KEY ("SD_ID_OID", "INTEGER_IDX");


--
-- TOC entry 3261 (class 2606 OID 16779)
-- Name: SORT_COLS SORT_COLS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SORT_COLS"
    ADD CONSTRAINT "SORT_COLS_pkey" PRIMARY KEY ("SD_ID", "INTEGER_IDX");


--
-- TOC entry 3264 (class 2606 OID 16781)
-- Name: TABLE_PARAMS TABLE_PARAMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TABLE_PARAMS"
    ADD CONSTRAINT "TABLE_PARAMS_pkey" PRIMARY KEY ("TBL_ID", "PARAM_KEY");


--
-- TOC entry 3302 (class 2606 OID 16803)
-- Name: TAB_COL_STATS TAB_COL_STATS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TAB_COL_STATS"
    ADD CONSTRAINT "TAB_COL_STATS_pkey" PRIMARY KEY ("CS_ID");


--
-- TOC entry 3268 (class 2606 OID 16783)
-- Name: TBLS TBLS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBLS"
    ADD CONSTRAINT "TBLS_pkey" PRIMARY KEY ("TBL_ID");


--
-- TOC entry 3274 (class 2606 OID 16785)
-- Name: TBL_COL_PRIVS TBL_COL_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBL_COL_PRIVS"
    ADD CONSTRAINT "TBL_COL_PRIVS_pkey" PRIMARY KEY ("TBL_COLUMN_GRANT_ID");


--
-- TOC entry 3278 (class 2606 OID 16787)
-- Name: TBL_PRIVS TBL_PRIVS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBL_PRIVS"
    ADD CONSTRAINT "TBL_PRIVS_pkey" PRIMARY KEY ("TBL_GRANT_ID");


--
-- TOC entry 3280 (class 2606 OID 16789)
-- Name: TYPES TYPES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TYPES"
    ADD CONSTRAINT "TYPES_pkey" PRIMARY KEY ("TYPES_ID");


--
-- TOC entry 3285 (class 2606 OID 16791)
-- Name: TYPE_FIELDS TYPE_FIELDS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TYPE_FIELDS"
    ADD CONSTRAINT "TYPE_FIELDS_pkey" PRIMARY KEY ("TYPE_NAME", "FIELD_NAME");


--
-- TOC entry 3205 (class 2606 OID 16807)
-- Name: IDXS UNIQUEINDEX; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IDXS"
    ADD CONSTRAINT "UNIQUEINDEX" UNIQUE ("INDEX_NAME", "ORIG_TBL_ID");


--
-- TOC entry 3216 (class 2606 OID 16809)
-- Name: PARTITIONS UNIQUEPARTITION; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITIONS"
    ADD CONSTRAINT "UNIQUEPARTITION" UNIQUE ("PART_NAME", "TBL_ID");


--
-- TOC entry 3270 (class 2606 OID 16811)
-- Name: TBLS UNIQUETABLE; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBLS"
    ADD CONSTRAINT "UNIQUETABLE" UNIQUE ("TBL_NAME", "DB_ID");


--
-- TOC entry 3189 (class 2606 OID 16813)
-- Name: DBS UNIQUE_DATABASE; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DBS"
    ADD CONSTRAINT "UNIQUE_DATABASE" UNIQUE ("NAME");


--
-- TOC entry 3282 (class 2606 OID 16815)
-- Name: TYPES UNIQUE_TYPE; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TYPES"
    ADD CONSTRAINT "UNIQUE_TYPE" UNIQUE ("TYPE_NAME");


--
-- TOC entry 3245 (class 2606 OID 16817)
-- Name: ROLE_MAP USERROLEMAPINDEX; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLE_MAP"
    ADD CONSTRAINT "USERROLEMAPINDEX" UNIQUE ("PRINCIPAL_NAME", "ROLE_ID", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3304 (class 2606 OID 17030)
-- Name: VERSION VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VERSION"
    ADD CONSTRAINT "VERSION_pkey" PRIMARY KEY ("VER_ID");


--
-- TOC entry 3334 (class 2606 OID 17107)
-- Name: aux_table aux_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aux_table
    ADD CONSTRAINT aux_table_pkey PRIMARY KEY (mt_key1, mt_key2);


--
-- TOC entry 3330 (class 2606 OID 17091)
-- Name: compaction_queue compaction_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compaction_queue
    ADD CONSTRAINT compaction_queue_pkey PRIMARY KEY (cq_id);


--
-- TOC entry 3332 (class 2606 OID 17102)
-- Name: completed_compactions completed_compactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.completed_compactions
    ADD CONSTRAINT completed_compactions_pkey PRIMARY KEY (cc_id);


--
-- TOC entry 3327 (class 2606 OID 17079)
-- Name: hive_locks hive_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hive_locks
    ADD CONSTRAINT hive_locks_pkey PRIMARY KEY (hl_lock_ext_id, hl_lock_int_id);


--
-- TOC entry 3324 (class 2606 OID 17048)
-- Name: txns txns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.txns
    ADD CONSTRAINT txns_pkey PRIMARY KEY (txn_id);


--
-- TOC entry 3176 (class 1259 OID 16818)
-- Name: BUCKETING_COLS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "BUCKETING_COLS_N49" ON public."BUCKETING_COLS" USING btree ("SD_ID");


--
-- TOC entry 3320 (class 1259 OID 16723)
-- Name: CONSTRAINTS_PARENT_TBLID_INDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "CONSTRAINTS_PARENT_TBLID_INDEX" ON public."KEY_CONSTRAINTS" USING btree ("PARENT_TBL_ID");


--
-- TOC entry 3183 (class 1259 OID 16819)
-- Name: DATABASE_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DATABASE_PARAMS_N49" ON public."DATABASE_PARAMS" USING btree ("DB_ID");


--
-- TOC entry 3192 (class 1259 OID 16820)
-- Name: DB_PRIVS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DB_PRIVS_N49" ON public."DB_PRIVS" USING btree ("DB_ID");


--
-- TOC entry 3309 (class 1259 OID 16852)
-- Name: FUNCS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FUNCS_N49" ON public."FUNCS" USING btree ("DB_ID");


--
-- TOC entry 3313 (class 1259 OID 16853)
-- Name: FUNC_RU_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FUNC_RU_N49" ON public."FUNC_RU" USING btree ("FUNC_ID");


--
-- TOC entry 3199 (class 1259 OID 16821)
-- Name: IDXS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDXS_N49" ON public."IDXS" USING btree ("ORIG_TBL_ID");


--
-- TOC entry 3200 (class 1259 OID 16822)
-- Name: IDXS_N50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDXS_N50" ON public."IDXS" USING btree ("INDEX_TBL_ID");


--
-- TOC entry 3201 (class 1259 OID 16823)
-- Name: IDXS_N51; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDXS_N51" ON public."IDXS" USING btree ("SD_ID");


--
-- TOC entry 3206 (class 1259 OID 16824)
-- Name: INDEX_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "INDEX_PARAMS_N49" ON public."INDEX_PARAMS" USING btree ("INDEX_ID");


--
-- TOC entry 3229 (class 1259 OID 16825)
-- Name: PARTITIONCOLUMNPRIVILEGEINDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITIONCOLUMNPRIVILEGEINDEX" ON public."PART_COL_PRIVS" USING btree ("PART_ID", "COLUMN_NAME", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_COL_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3217 (class 1259 OID 16826)
-- Name: PARTITIONEVENTINDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITIONEVENTINDEX" ON public."PARTITION_EVENTS" USING btree ("PARTITION_NAME");


--
-- TOC entry 3211 (class 1259 OID 16827)
-- Name: PARTITIONS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITIONS_N49" ON public."PARTITIONS" USING btree ("TBL_ID");


--
-- TOC entry 3212 (class 1259 OID 16828)
-- Name: PARTITIONS_N50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITIONS_N50" ON public."PARTITIONS" USING btree ("SD_ID");


--
-- TOC entry 3220 (class 1259 OID 16829)
-- Name: PARTITION_KEYS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITION_KEYS_N49" ON public."PARTITION_KEYS" USING btree ("TBL_ID");


--
-- TOC entry 3223 (class 1259 OID 16830)
-- Name: PARTITION_KEY_VALS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITION_KEY_VALS_N49" ON public."PARTITION_KEY_VALS" USING btree ("PART_ID");


--
-- TOC entry 3226 (class 1259 OID 16831)
-- Name: PARTITION_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTITION_PARAMS_N49" ON public."PARTITION_PARAMS" USING btree ("PART_ID");


--
-- TOC entry 3233 (class 1259 OID 16832)
-- Name: PARTPRIVILEGEINDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PARTPRIVILEGEINDEX" ON public."PART_PRIVS" USING btree ("PART_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3230 (class 1259 OID 16833)
-- Name: PART_COL_PRIVS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PART_COL_PRIVS_N49" ON public."PART_COL_PRIVS" USING btree ("PART_ID");


--
-- TOC entry 3305 (class 1259 OID 16850)
-- Name: PART_COL_STATS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PART_COL_STATS_N49" ON public."PART_COL_STATS" USING btree ("PART_ID");


--
-- TOC entry 3234 (class 1259 OID 16834)
-- Name: PART_PRIVS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PART_PRIVS_N49" ON public."PART_PRIVS" USING btree ("PART_ID");


--
-- TOC entry 3308 (class 1259 OID 16835)
-- Name: PCS_STATS_IDX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "PCS_STATS_IDX" ON public."PART_COL_STATS" USING btree ("DB_NAME", "TABLE_NAME", "COLUMN_NAME", "PARTITION_NAME");


--
-- TOC entry 3241 (class 1259 OID 16836)
-- Name: ROLE_MAP_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ROLE_MAP_N49" ON public."ROLE_MAP" USING btree ("ROLE_ID");


--
-- TOC entry 3246 (class 1259 OID 16837)
-- Name: SDS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SDS_N49" ON public."SDS" USING btree ("SERDE_ID");


--
-- TOC entry 3249 (class 1259 OID 16838)
-- Name: SD_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SD_PARAMS_N49" ON public."SD_PARAMS" USING btree ("SD_ID");


--
-- TOC entry 3256 (class 1259 OID 16839)
-- Name: SERDE_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SERDE_PARAMS_N49" ON public."SERDE_PARAMS" USING btree ("SERDE_ID");


--
-- TOC entry 3259 (class 1259 OID 16840)
-- Name: SORT_COLS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SORT_COLS_N49" ON public."SORT_COLS" USING btree ("SD_ID");


--
-- TOC entry 3271 (class 1259 OID 16841)
-- Name: TABLECOLUMNPRIVILEGEINDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TABLECOLUMNPRIVILEGEINDEX" ON public."TBL_COL_PRIVS" USING btree ("TBL_ID", "COLUMN_NAME", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_COL_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3275 (class 1259 OID 16842)
-- Name: TABLEPRIVILEGEINDEX; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TABLEPRIVILEGEINDEX" ON public."TBL_PRIVS" USING btree ("TBL_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_PRIV", "GRANTOR", "GRANTOR_TYPE");


--
-- TOC entry 3262 (class 1259 OID 16843)
-- Name: TABLE_PARAMS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TABLE_PARAMS_N49" ON public."TABLE_PARAMS" USING btree ("TBL_ID");


--
-- TOC entry 3300 (class 1259 OID 16849)
-- Name: TAB_COL_STATS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TAB_COL_STATS_N49" ON public."TAB_COL_STATS" USING btree ("TBL_ID");


--
-- TOC entry 3265 (class 1259 OID 16844)
-- Name: TBLS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TBLS_N49" ON public."TBLS" USING btree ("DB_ID");


--
-- TOC entry 3266 (class 1259 OID 16845)
-- Name: TBLS_N50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TBLS_N50" ON public."TBLS" USING btree ("SD_ID");


--
-- TOC entry 3272 (class 1259 OID 16846)
-- Name: TBL_COL_PRIVS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TBL_COL_PRIVS_N49" ON public."TBL_COL_PRIVS" USING btree ("TBL_ID");


--
-- TOC entry 3276 (class 1259 OID 16847)
-- Name: TBL_PRIVS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TBL_PRIVS_N49" ON public."TBL_PRIVS" USING btree ("TBL_ID");


--
-- TOC entry 3283 (class 1259 OID 16848)
-- Name: TYPE_FIELDS_N49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TYPE_FIELDS_N49" ON public."TYPE_FIELDS" USING btree ("TYPE_NAME");


--
-- TOC entry 3312 (class 1259 OID 16851)
-- Name: UNIQUEFUNCTION; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "UNIQUEFUNCTION" ON public."FUNCS" USING btree ("FUNC_NAME", "DB_ID");


--
-- TOC entry 3328 (class 1259 OID 17080)
-- Name: hl_txnid_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hl_txnid_index ON public.hive_locks USING hash (hl_txnid);


--
-- TOC entry 3325 (class 1259 OID 17061)
-- Name: tc_txnid_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tc_txnid_index ON public.txn_components USING hash (tc_txnid);


--
-- TOC entry 3335 (class 2606 OID 16884)
-- Name: BUCKETING_COLS BUCKETING_COLS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BUCKETING_COLS"
    ADD CONSTRAINT "BUCKETING_COLS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3336 (class 2606 OID 16889)
-- Name: COLUMNS_V2 COLUMNS_V2_CD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."COLUMNS_V2"
    ADD CONSTRAINT "COLUMNS_V2_CD_ID_fkey" FOREIGN KEY ("CD_ID") REFERENCES public."CDS"("CD_ID") DEFERRABLE;


--
-- TOC entry 3337 (class 2606 OID 16894)
-- Name: DATABASE_PARAMS DATABASE_PARAMS_DB_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DATABASE_PARAMS"
    ADD CONSTRAINT "DATABASE_PARAMS_DB_ID_fkey" FOREIGN KEY ("DB_ID") REFERENCES public."DBS"("DB_ID") DEFERRABLE;


--
-- TOC entry 3338 (class 2606 OID 16899)
-- Name: DB_PRIVS DB_PRIVS_DB_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DB_PRIVS"
    ADD CONSTRAINT "DB_PRIVS_DB_ID_fkey" FOREIGN KEY ("DB_ID") REFERENCES public."DBS"("DB_ID") DEFERRABLE;


--
-- TOC entry 3370 (class 2606 OID 17031)
-- Name: FUNCS FUNCS_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FUNCS"
    ADD CONSTRAINT "FUNCS_FK1" FOREIGN KEY ("DB_ID") REFERENCES public."DBS"("DB_ID") DEFERRABLE;


--
-- TOC entry 3371 (class 2606 OID 17036)
-- Name: FUNC_RU FUNC_RU_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FUNC_RU"
    ADD CONSTRAINT "FUNC_RU_FK1" FOREIGN KEY ("FUNC_ID") REFERENCES public."FUNCS"("FUNC_ID") DEFERRABLE;


--
-- TOC entry 3339 (class 2606 OID 16904)
-- Name: IDXS IDXS_INDEX_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IDXS"
    ADD CONSTRAINT "IDXS_INDEX_TBL_ID_fkey" FOREIGN KEY ("INDEX_TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3340 (class 2606 OID 16909)
-- Name: IDXS IDXS_ORIG_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IDXS"
    ADD CONSTRAINT "IDXS_ORIG_TBL_ID_fkey" FOREIGN KEY ("ORIG_TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3341 (class 2606 OID 16914)
-- Name: IDXS IDXS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IDXS"
    ADD CONSTRAINT "IDXS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3342 (class 2606 OID 16919)
-- Name: INDEX_PARAMS INDEX_PARAMS_INDEX_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."INDEX_PARAMS"
    ADD CONSTRAINT "INDEX_PARAMS_INDEX_ID_fkey" FOREIGN KEY ("INDEX_ID") REFERENCES public."IDXS"("INDEX_ID") DEFERRABLE;


--
-- TOC entry 3343 (class 2606 OID 16924)
-- Name: PARTITIONS PARTITIONS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITIONS"
    ADD CONSTRAINT "PARTITIONS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3344 (class 2606 OID 16929)
-- Name: PARTITIONS PARTITIONS_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITIONS"
    ADD CONSTRAINT "PARTITIONS_TBL_ID_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3345 (class 2606 OID 16934)
-- Name: PARTITION_KEYS PARTITION_KEYS_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_KEYS"
    ADD CONSTRAINT "PARTITION_KEYS_TBL_ID_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3346 (class 2606 OID 16939)
-- Name: PARTITION_KEY_VALS PARTITION_KEY_VALS_PART_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_KEY_VALS"
    ADD CONSTRAINT "PARTITION_KEY_VALS_PART_ID_fkey" FOREIGN KEY ("PART_ID") REFERENCES public."PARTITIONS"("PART_ID") DEFERRABLE;


--
-- TOC entry 3347 (class 2606 OID 16944)
-- Name: PARTITION_PARAMS PARTITION_PARAMS_PART_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PARTITION_PARAMS"
    ADD CONSTRAINT "PARTITION_PARAMS_PART_ID_fkey" FOREIGN KEY ("PART_ID") REFERENCES public."PARTITIONS"("PART_ID") DEFERRABLE;


--
-- TOC entry 3348 (class 2606 OID 16949)
-- Name: PART_COL_PRIVS PART_COL_PRIVS_PART_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_COL_PRIVS"
    ADD CONSTRAINT "PART_COL_PRIVS_PART_ID_fkey" FOREIGN KEY ("PART_ID") REFERENCES public."PARTITIONS"("PART_ID") DEFERRABLE;


--
-- TOC entry 3369 (class 2606 OID 17024)
-- Name: PART_COL_STATS PART_COL_STATS_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_COL_STATS"
    ADD CONSTRAINT "PART_COL_STATS_fkey" FOREIGN KEY ("PART_ID") REFERENCES public."PARTITIONS"("PART_ID") DEFERRABLE;


--
-- TOC entry 3349 (class 2606 OID 16954)
-- Name: PART_PRIVS PART_PRIVS_PART_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PART_PRIVS"
    ADD CONSTRAINT "PART_PRIVS_PART_ID_fkey" FOREIGN KEY ("PART_ID") REFERENCES public."PARTITIONS"("PART_ID") DEFERRABLE;


--
-- TOC entry 3350 (class 2606 OID 16959)
-- Name: ROLE_MAP ROLE_MAP_ROLE_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLE_MAP"
    ADD CONSTRAINT "ROLE_MAP_ROLE_ID_fkey" FOREIGN KEY ("ROLE_ID") REFERENCES public."ROLES"("ROLE_ID") DEFERRABLE;


--
-- TOC entry 3351 (class 2606 OID 16964)
-- Name: SDS SDS_CD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SDS"
    ADD CONSTRAINT "SDS_CD_ID_fkey" FOREIGN KEY ("CD_ID") REFERENCES public."CDS"("CD_ID") DEFERRABLE;


--
-- TOC entry 3352 (class 2606 OID 16969)
-- Name: SDS SDS_SERDE_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SDS"
    ADD CONSTRAINT "SDS_SERDE_ID_fkey" FOREIGN KEY ("SERDE_ID") REFERENCES public."SERDES"("SERDE_ID") DEFERRABLE;


--
-- TOC entry 3353 (class 2606 OID 16974)
-- Name: SD_PARAMS SD_PARAMS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SD_PARAMS"
    ADD CONSTRAINT "SD_PARAMS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3354 (class 2606 OID 16979)
-- Name: SERDE_PARAMS SERDE_PARAMS_SERDE_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SERDE_PARAMS"
    ADD CONSTRAINT "SERDE_PARAMS_SERDE_ID_fkey" FOREIGN KEY ("SERDE_ID") REFERENCES public."SERDES"("SERDE_ID") DEFERRABLE;


--
-- TOC entry 3363 (class 2606 OID 16859)
-- Name: SKEWED_COL_NAMES SKEWED_COL_NAMES_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_COL_NAMES"
    ADD CONSTRAINT "SKEWED_COL_NAMES_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3364 (class 2606 OID 16864)
-- Name: SKEWED_COL_VALUE_LOC_MAP SKEWED_COL_VALUE_LOC_MAP_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_COL_VALUE_LOC_MAP"
    ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_fkey1" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3365 (class 2606 OID 16869)
-- Name: SKEWED_COL_VALUE_LOC_MAP SKEWED_COL_VALUE_LOC_MAP_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_COL_VALUE_LOC_MAP"
    ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_fkey2" FOREIGN KEY ("STRING_LIST_ID_KID") REFERENCES public."SKEWED_STRING_LIST"("STRING_LIST_ID") DEFERRABLE;


--
-- TOC entry 3362 (class 2606 OID 16854)
-- Name: SKEWED_STRING_LIST_VALUES SKEWED_STRING_LIST_VALUES_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_STRING_LIST_VALUES"
    ADD CONSTRAINT "SKEWED_STRING_LIST_VALUES_fkey" FOREIGN KEY ("STRING_LIST_ID") REFERENCES public."SKEWED_STRING_LIST"("STRING_LIST_ID") DEFERRABLE;


--
-- TOC entry 3366 (class 2606 OID 16874)
-- Name: SKEWED_VALUES SKEWED_VALUES_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_VALUES"
    ADD CONSTRAINT "SKEWED_VALUES_fkey1" FOREIGN KEY ("STRING_LIST_ID_EID") REFERENCES public."SKEWED_STRING_LIST"("STRING_LIST_ID") DEFERRABLE;


--
-- TOC entry 3367 (class 2606 OID 16879)
-- Name: SKEWED_VALUES SKEWED_VALUES_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SKEWED_VALUES"
    ADD CONSTRAINT "SKEWED_VALUES_fkey2" FOREIGN KEY ("SD_ID_OID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3355 (class 2606 OID 16984)
-- Name: SORT_COLS SORT_COLS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SORT_COLS"
    ADD CONSTRAINT "SORT_COLS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3356 (class 2606 OID 16989)
-- Name: TABLE_PARAMS TABLE_PARAMS_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TABLE_PARAMS"
    ADD CONSTRAINT "TABLE_PARAMS_TBL_ID_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3368 (class 2606 OID 17019)
-- Name: TAB_COL_STATS TAB_COL_STATS_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TAB_COL_STATS"
    ADD CONSTRAINT "TAB_COL_STATS_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3357 (class 2606 OID 16994)
-- Name: TBLS TBLS_DB_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBLS"
    ADD CONSTRAINT "TBLS_DB_ID_fkey" FOREIGN KEY ("DB_ID") REFERENCES public."DBS"("DB_ID") DEFERRABLE;


--
-- TOC entry 3358 (class 2606 OID 16999)
-- Name: TBLS TBLS_SD_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBLS"
    ADD CONSTRAINT "TBLS_SD_ID_fkey" FOREIGN KEY ("SD_ID") REFERENCES public."SDS"("SD_ID") DEFERRABLE;


--
-- TOC entry 3359 (class 2606 OID 17004)
-- Name: TBL_COL_PRIVS TBL_COL_PRIVS_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBL_COL_PRIVS"
    ADD CONSTRAINT "TBL_COL_PRIVS_TBL_ID_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3360 (class 2606 OID 17009)
-- Name: TBL_PRIVS TBL_PRIVS_TBL_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TBL_PRIVS"
    ADD CONSTRAINT "TBL_PRIVS_TBL_ID_fkey" FOREIGN KEY ("TBL_ID") REFERENCES public."TBLS"("TBL_ID") DEFERRABLE;


--
-- TOC entry 3361 (class 2606 OID 17014)
-- Name: TYPE_FIELDS TYPE_FIELDS_TYPE_NAME_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TYPE_FIELDS"
    ADD CONSTRAINT "TYPE_FIELDS_TYPE_NAME_fkey" FOREIGN KEY ("TYPE_NAME") REFERENCES public."TYPES"("TYPES_ID") DEFERRABLE;


--
-- TOC entry 3372 (class 2606 OID 17056)
-- Name: txn_components txn_components_tc_txnid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.txn_components
    ADD CONSTRAINT txn_components_tc_txnid_fkey FOREIGN KEY (tc_txnid) REFERENCES public.txns(txn_id);


-- Completed on 2022-11-28 13:52:05 CST

--
-- PostgreSQL database dump complete
--

