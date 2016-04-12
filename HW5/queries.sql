--a)
SELECT l.LION_ID FROM GLION l 
WHERE l.location.SDO_POINT.X >= 150
AND l.location.SDO_POINT.X <= 400
AND l.location.SDO_POINT.Y >= 200
AND l.location.SDO_POINT.Y <= 350;

--b)
SELECT l.LION_ID FROM GLION l, GPOND p 
WHERE SDO_GEOM.SDO_DISTANCE(l.location, p.shape, 0.005) <= 150
AND p.POND_ID = 'P1';

--d)
SELECT /*+ LEADING(l) INDEX(p gpond_spatial_index)*/
p.POND_ID, SDO_NN_DISTANCE(1)dist 
FROM GLION l, GPOND p
WHERE l.LION_ID = 'L2'
AND SDO_NN(p.shape, l.location, 'SDO_NUM_RES = 3', 1) = 'TRUE';

--f)Nothing
SELECT l.LION_ID, p.POND_ID
FROM TABLE(SDO_JOIN('GLION', 'location',
					'GPOND', 'shape',
					'mask = INSIDE')) r,
	GLION l, GPOND p
WHERE l.LION_ID = r.rowid1 AND p.POND_ID = r.rowid2;

SELECT l.LION_ID, p.POND_ID
FROM GLION l, GPOND p
WHERE SDO_RELATE(l.location, p.shape,
				'mask = INSIDE querytype = join') = 'TRUE';

--h)
SELECT r.REGION_ID
FROM GREGION r, GLION l
WHERE SDO_RELATE(l.location, r.shape,
	'mask = INSIDE'
) = 'TRUE'
INTERSECT
SELECT r1.REGION_ID
FROM GREGION r1
WHERE r1.REGION_ID NOT IN(
SELECT r2.REGION_ID
FROM GREGION r2, GPOND p
WHERE SDO_RELATE(p.shape, r2.shape,
	'mask = ANYINTERACT'
) = 'TRUE'
);

--i)cannot use 'FALSE'
SELECT l1.LION_ID
FROM GLION l1
WHERE l1.LION_ID NOT IN(
SELECT l2.LION_ID 
FROM GLION l2, GAMBULANCE a
WHERE SDO_RELATE(l2.location, a.shape,
	'mask = INSIDE') = 'TRUE'
);



