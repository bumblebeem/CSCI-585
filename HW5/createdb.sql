—-create table about ambulances
CREATE TABLE GAMBULANCE(
	"AMBULANCE_ID" VARCHAR2(20 BYTE) PRIMARY KEY,
	shape SDO_GEOMETRY NOT NULL
);

--insert values
INSERT INTO "GAMBULANCE" VALUES(
	'A1',
	SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(100,310,190,400,100,490)
    )
);

INSERT INTO "GAMBULANCE" VALUES(
	'A3',
	SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(400,310,490,400,400,490)
    )
);

INSERT INTO "GAMBULANCE" VALUES(
	'A2',
	SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(250,310,340,400,250,490)
    )
);

INSERT INTO "GAMBULANCE" VALUES(
	'A5',
	SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(300,10,390,100,300,190)
    )
);

INSERT INTO "GAMBULANCE" VALUES(
	'A4',
	SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(400,160,490,250,400,340)
    )
);

--update metadata view
INSERT INTO user_sdo_geom_metadata
	(TABLE_NAME,
     COLUMN_NAME,
     DIMINFO,
     SRID)
    VALUES(
    	'GAMBULANCE',
    	'shape',
   	    SDO_DIM_ARRAY(
            SDO_DIM_ELEMENT('X',0,20,0.005),
            SDO_DIM_ELEMENT('Y',0,20,0.005)
        ),
    NULL
);

--create spatial index
CREATE INDEX gambulance_spatial_index
  ON GAMBULANCE(shape)
  INDEXTYPE IS MDSYS.SPATIAL_INDEX;



—-create table about regions
  CREATE TABLE GREGION(
    "REGION_ID" VARCHAR2(20 BYTE) PRIMARY KEY,
    shape SDO_GEOMETRY NOT NULL
); 

--insert values
INSERT INTO "GREGION" VALUES(
    'R4',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(400,0,500,0,500,100,400,100,400,0)
    )
);

INSERT INTO "GREGION" VALUES(
    'R5',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(400,100,500,100,500,250,400,200,400,100)
    )
);

INSERT INTO "GREGION" VALUES(
    'R6',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(300,150,400,100,400,200,250,250,300,150)
    )
);

INSERT INTO "GREGION" VALUES(
    'R7',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(100,100,300,150,250,250,150,250,100,100)
    )
);

INSERT INTO "GREGION" VALUES(
    'R12',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(400,200,500,250,500,350,400,350,400,200)
    )
);

INSERT INTO "GREGION" VALUES(
    'R1',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(0,0,150,0,100,100,0,100,0,0)
    )
);

INSERT INTO "GREGION" VALUES(
    'R2',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(150,0,250,0,300,150,100,100,150,0)
    )
);

INSERT INTO "GREGION" VALUES(
    'R3',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(250,0,400,0,400,100,300,150,250,0)
    )
);

INSERT INTO "GREGION" VALUES(
    'R11',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(250,250,400,200,400,350,300,350,250,250)
    )
);

INSERT INTO "GREGION" VALUES(
    'R8',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(0,100,100,100,150,250,0,250,0,100)
    )
);

INSERT INTO "GREGION" VALUES(
    'R9',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(0,250,150,250,150,400,0,350,0,250)
    )
);

INSERT INTO "GREGION" VALUES(
    'R10',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(150,250,250,250,300,350,150,400,150,250)
    )
);

INSERT INTO "GREGION" VALUES(
    'R15',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(150,400,300,350,300,500,150,500,150,400)
    )
);

INSERT INTO "GREGION" VALUES(
    'R14',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(300,350,400,350,400,500,300,500,300,350)
    )
);

INSERT INTO "GREGION" VALUES(
    'R16',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(0,350,150,400,150,500,0,500,0,350)
    )
);

INSERT INTO "GREGION" VALUES(
    'R13',
    SDO_GEOMETRY(
        2003,  
        NULL,
        NULL,
        SDO_ELEM_INFO_ARRAY(1,1003,1), 
        SDO_ORDINATE_ARRAY(400,350,500,350,500,500,400,500,400,350)
    )
);

--update metadata view
INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,
     COLUMN_NAME,
     DIMINFO,
     SRID)
    VALUES(
        'GREGION',
        'shape',
        SDO_DIM_ARRAY(
            SDO_DIM_ELEMENT('X',0,20,0.005),
            SDO_DIM_ELEMENT('Y',0,20,0.005)
         ),
    NULL
);

--create spatial index
CREATE INDEX gregion_spatial_index
  ON GREGION(shape)
  INDEXTYPE IS MDSYS.SPATIAL_INDEX;



—-create table about lions
  CREATE TABLE GLION(
    "LION_ID" VARCHAR2(20 BYTE) PRIMARY KEY,
    location SDO_GEOMETRY NOT NULL
);

--insert values
INSERT INTO GLION VALUES(
    'L14',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(350,50,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L10',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(355,190,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L11',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(30,210,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L12',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(50,200,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L13',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(170,230,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L6',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(350,300,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L7',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(35,10,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L4',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(450,300,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L5',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(20,20,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L2',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(230,475,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L3',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(370,455,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L1',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(50,450,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L8',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(115,350,NULL),
        NULL,
        NULL
    )
);

INSERT INTO GLION VALUES(
    'L9',
    SDO_GEOMETRY(
        2001,
        NULL,
        SDO_POINT_TYPE(240,335,NULL),
        NULL,
        NULL
    )
);


--update metadata view
INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,
     COLUMN_NAME,
     DIMINFO,
     SRID)
    VALUES(
        'GLION',
        'location',
        SDO_DIM_ARRAY(
            SDO_DIM_ELEMENT('X',0,20,0.005),
            SDO_DIM_ELEMENT('Y',0,20,0.005)
         ),
    NULL
);


--create spatial index
CREATE INDEX glion_spatial_index
  ON GLION(location)
  INDEXTYPE IS MDSYS.SPATIAL_INDEX;



—-create table about pond
  CREATE TABLE GPOND (
  "POND_ID" VARCHAR2(20 BYTE) PRIMARY KEY, 
  shape SDO_GEOMETRY NOT NULL
);


--insert values
INSERT INTO "GPOND" VALUES(
  'P2',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(220,415,235,430,220,445)
  )
);

INSERT INTO "GPOND" VALUES(
  'P3',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(370,420,385,435,370,450)
  )
);

INSERT INTO "GPOND" VALUES(
  'P1',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(75,415,90,430,75,445)
  )
);

INSERT INTO "GPOND" VALUES(
  'P6',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(220,305,235,320,220,335)
  )
);

INSERT INTO "GPOND" VALUES(
  'P7',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(470,265,485,280,470,295)
  )
);

INSERT INTO "GPOND" VALUES(
  'P4',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(75,315,90,330,75,345)
  )
);

INSERT INTO "GPOND" VALUES(
  'P5',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(320,265,335,280,320,295)
  )
);

INSERT INTO "GPOND" VALUES(
  'P2',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,1003,4),
    SDO_ORDINATE_ARRAY(375,160,390,175,375,190)
  )
);


--update metadata view
INSERT INTO user_sdo_geom_metadata
  (TABLE_NAME,
   COLUMN_NAME,
   DIMINFO,
   SRID)
  VALUES(
    'GPOND',
    'shape',
    SDO_DIM_ARRAY(
      SDO_DIM_ELEMENT('X',0,20,0.005),
      SDO_DIM_ELEMENT('Y',0,20,0.005)
    ),
  NULL
);


--create spatial index
CREATE INDEX gpond_spatial_index
  ON GPOND(shape)
  INDEXTYPE IS MDSYS.SPATIAL_INDEX;