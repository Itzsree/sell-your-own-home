-- Database: sell_your_own_home_db


-- DROP DATABASE sellyourownhomedb;

CREATE DATABASE sellyourownhomedb
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_Ireland.1252'
       LC_CTYPE = 'English_Ireland.1252'
       CONNECTION LIMIT = -1;
       
       
-- #################################################################################################################################################


-- Table: person

-- DROP TABLE person;


CREATE TABLE person
(
  person_id 						SERIAL NOT NULL,
  first_name 						CHARACTER VARYING(150) NOT NULL,
  last_name 						CHARACTER VARYING(150) NOT NULL,
  username 							CHARACTER VARYING(150) NOT NULL,
  password 							CHARACTER VARYING(150) NOT NULL,
  CONSTRAINT pk_person 				PRIMARY KEY (person_id),
  CONSTRAINT uk_url_location	 	UNIQUE (username)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE person
OWNER TO postgres;


INSERT INTO person (person_id, first_name, last_name, username, password)
VALUES( 101, 'Lola', 'Murphy', 'lo', 'pass' );

SELECT * FROM person;


-- #################################################################################################################################################


-- Table: photo_information

-- DROP TABLE photo_information;


CREATE TABLE photo_information
(
  photo_information_id 				SERIAL NOT NULL,
  is_main_url_photo 				BOOLEAN NOT NULL,
  url_location 						CHARACTER VARYING(150) NOT NULL,
  CONSTRAINT pk_photo_information 	PRIMARY KEY (photo_information_id),
  CONSTRAINT uk_person_username 	UNIQUE (url_location)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE photo_information
OWNER TO postgres;


INSERT INTO photo_information (photo_information_id, is_main_url_photo, url_location)
VALUES( 1001, TRUE, '/images/property-listings/property_2.jpg' );

SELECT * FROM photo_information;


-- #################################################################################################################################################
