--Q1: OK
SELECT substr(dob,1,4), COUNT(username)
FROM users
GROUP BY substr(dob,1,4)
HAVING substr(dob,1,4) >= '1970';

--Q2: OK
SELECT r1 
FROM( SELECT r1, MAX(r2)
	  FROM( SELECT substr(post_date,12,2) as r1, COUNT(substr(post_date,12,2)) as r2
            FROM ads
            GROUP BY substr(post_date,12,2) ) );

--Q3: OK
SELECT COUNT(category_id)
FROM( SELECT * 
      FROM ads
      WHERE post_date > ( SELECT last_logout
                          FROM users
                          WHERE username = 'lhartj')
      AND category_id = 250);

--Q4: OK
SELECT city_id
FROM (SELECT city_id, MAX(num_of_regions)
	  FROM (SELECT city_id, COUNT(city_id) as num_of_regions 
			FROM regions
			GROUP BY city_id) ) ;

--Q5: OK
SELECT users.name
FROM (SELECT creator
	  FROM ads JOIN likes 
      ON ads.ad_id = likes.ad_id
      GROUP BY creator
      HAVING COUNT(likes.ad_id) = ( SELECT MAX(num)
                                    FROM(SELECT creator, COUNT(likes.ad_id) as num
	                                     FROM ads JOIN likes 
	                                     ON ads.ad_id = likes.ad_id
	                                     GROUP BY creator) as t1)  ) as t2 JOIN users
ON t2.creator = users.username;

--Q6: OK
SELECT region_id
FROM (SELECT region_id, MAX(r)
      FROM (SELECT region_id, COUNT(ad_id) as r
            FROM ads
            GROUP BY region_id) );

--Q7: OK
SELECT creator
FROM ads 
WHERE substr(post_date, 1,4) = '2015'
GROUP BY creator
ORDER BY COUNT(creator) DESC
LIMIT 3;

--Q8: OK
SELECT title, price
FROM( SELECT title, price, MAX(post_date)
      FROM ( SELECT *
             FROM ads 
             WHERE creator = 'bnguyen50'));

