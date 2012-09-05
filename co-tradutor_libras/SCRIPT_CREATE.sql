CREATE DATABASE clp
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       LC_COLLATE = 'English, United States'
       LC_CTYPE = 'English, United States'
       CONNECTION LIMIT = -1;

 
CREATE TABLE libras
(
  lexema character varying(200) NOT NULL,
  file character varying(500),
  CONSTRAINT libras_pkey PRIMARY KEY (lexema)
)
WITH (OIDS=FALSE);
ALTER TABLE libras OWNER TO postgres;