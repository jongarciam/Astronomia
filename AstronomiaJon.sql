
CREATE TABLE ESTRELLAS
(
ID_ESTRELLA VARCHAR2(25)
CONSTRAINT ESTRELLA_ID_PK PRIMARY KEY,
TAMAÑO NUMBER,
DISTANCIA_ENTRE_ELLAS NUMBER
);
CREATE TABLE PLANETAS
(
ID_PLANETA VARCHAR2(25)
CONSTRAINT  PLANETA_ID_PK PRIMARY KEY,
TIEMPO_ROTACION DATE,
DISTANCIA_SOL NUMBER,
TAMAÑO NUMBER,
COMPOSICION VARCHAR2(25)

);
CREATE TABLE AGENCIAS
(
ID_AGENCIA VARCHAR2(25)
CONSTRAINT AGENCIAS_ID_PK PRIMARY KEY
);
CREATE TABLE SATELITES
(
ID_SATELITES VARCHAR2(25)
CONSTRAINT SATELITES_ID_PK PRIMARY KEY,
FECHA_LANZAMIENTO DATE,
FECHA_PERDIDA DATE,
DISTANCIA_RECORRIDA NUMBER,
TAMAÑO NUMBER,
TIEMPO_ROTACION NUMBER,
DISTANCIA_SOL NUMBER,
ID_AGENCIA VARCHAR2(25)
CONSTRAINT AGENCIA_ID_NN1 NOT NULL,
CONSTRAINT AGENCIA_ID_FK FOREIGN KEY(ID_AGENCIA) REFERENCES AGENCIAS
);
CREATE TABLE FOTOGRAFIAS
(
ID_FOTOGRAFIA VARCHAR2(25)
CONSTRAINT FOTOGRAFIA_ID_PK PRIMARY KEY,
TIPO_FOTOGRAFIA VARCHAR2(25),
ID_SATELITES VARCHAR2(25)
CONSTRAINT SATELITES_ID_NN1 NOT NULL,
CONSTRAINT SATELITES_ID_FK1 FOREIGN KEY (ID_SATELITES) REFERENCES SATELITES
);
CREATE TABLE ORBITARALREDEDORDE2
(
 ID_PLANETA VARCHAR2(25),
 ID_SATELITES VARCHAR2(25),
CONSTRAINT ORBITARALREDEDORDE2_PK PRIMARY KEY (ID_PLANETA,ID_SATELITES),
CONSTRAINT ORBITARALREDEDORDE2_FK1 FOREIGN KEY (ID_PLANETA) REFERENCES PLANETAS,
CONSTRAINT ORBITARALREDEDORDE2_FK2 FOREIGN KEY (ID_SATELITES) REFERENCES SATELITES
);
CREATE TABLE ORBITARALREDEDORDE1
(
 ID_PLANETA VARCHAR2(25),
 ID_ESTRELLA VARCHAR2(25),
 CONSTRAINT ORBITARALREDEDORDE1_PK PRIMARY KEY (ID_PLANETA, ID_ESTRELLA),
 CONSTRAINT ORBITARALREDEDORDE1_FK1 FOREIGN KEY (ID_PLANETA) REFERENCES PLANETAS,
 CONSTRAINT ORBITARALREDEDORDE1_FK2 FOREIGN KEY (ID_ESTRELLA) REFERENCES ESTRELLAS

);
CREATE TABLE COMETAS
(
 ID_COMETA VARCHAR2(25)
 CONSTRAINT COMETA_ID_PK PRIMARY KEY,
TAMAÑO NUMBER,
COMPOSICION VARCHAR2(25),
EDAD NUMBER,
DISTANCIA_SOL NUMBER,
TIEMPO_ROTACION NUMBER
);
CREATE TABLE ASTEROIDES
(
 ID_ASTEROIDES   VARCHAR2(25)
  CONSTRAINT ASTEROIDE_ID_PK PRIMARY KEY ,
 COMPOSICION     VARCHAR2(25),
 TAMAÑO          NUMBER,
 DISTANCIA_SOL   NUMBER,
 TIEMPO_ROTACION NUMBER

);
CREATE TABLE ORBITARALREDEDORDE3 (
ID_PLANETA VARCHAR2(25),
ID_ASTEROIDE VARCHAR2(25),
CONSTRAINT ORBITARALREDEDORDE3_PK PRIMARY KEY (ID_PLANETA, ID_ASTEROIDE),
CONSTRAINT ORBITARALREDEDORDE3_FK1 FOREIGN KEY (ID_PLANETA) REFERENCES PLANETAS,
CONSTRAINT ORBITARALREDEDORDE3_FK2 FOREIGN KEY (ID_ASTEROIDE) REFERENCES ASTEROIDES
);
CREATE TABLE ORBITARALREDEDORDE4 (
 ID_ESTRELLA VARCHAR2(25),
 ID_COMETA VARCHAR2(25),
 CONSTRAINT ORBITARALREDEDORDE4_PK PRIMARY KEY (ID_ESTRELLA,ID_COMETA),
 CONSTRAINT ORBITARALREDEDORDE4_FK1 FOREIGN KEY (ID_ESTRELLA) REFERENCES ESTRELLAS,
 CONSTRAINT ORBITARALREDEDORDE4_FK2 FOREIGN KEY (ID_COMETA) REFERENCES COMETAS

);
INSERT INTO PLANETAS VALUES ('TIERRA',TO_DATE(23-56-00),149000000,6371,'AGUA TIERRA');
