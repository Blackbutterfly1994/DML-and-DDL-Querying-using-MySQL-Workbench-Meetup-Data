SELECT
M_Join, YEAR(joined), COUNT(member_id) AS Members_Count
FROM grp_member,
(SELECT
member_id AS member, YEAR(MIN(joined)) AS M_Join
FROM grp_member) AS Subquery_a
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);
    

SET SQL_SAFE_UPDATES = 0;

UPDATE city
SET city = "Chicago"
WHERE city LIKE "%hicago%";

UPDATE city
SET city = "San Francisco"
WHERE city LIKE "%an _rancisco%";

UPDATE city
SET city = "New York"
WHERE city LIKE "%ew _ork%";

SET SQL_SAFE_UPDATES =1;

SELECT
city, YEAR(MIN(joined)) AS M_Join, YEAR(joined), COUNT(member_id) AS Members_Count
FROM grp_member,
(SELECT
member_id AS member, YEAR(MIN(joined))
FROM grp_member) AS Subquery_a
WHERE group_id 
IN(SELECT group_id
	FROM grp
	WHERE city_id IN( SELECT city_id
					FROM city))
                    GROUP BY YEAR(joined)
                    HAVING city IN("Chicago")
                    ORDER BY YEAR(joined);

SELECT
city, YEAR(MIN(joined)) AS M_Join, YEAR(joined), COUNT(member_id) AS Members_Count
FROM grp_member,
(SELECT
member_id AS member, YEAR(MIN(joined))
FROM grp_member) AS Subquery_a
WHERE group_id 
IN(SELECT group_id
	FROM grp
	WHERE city_id IN( SELECT city_id
					FROM city))
                    GROUP BY YEAR(joined)
                    HAVING city IN("San Francisco")
                    ORDER BY YEAR(joined);
                    
SELECT
city, YEAR(MIN(joined)) AS M_Join, YEAR(joined), COUNT(member_id) AS Members_Count
FROM grp_member,
(SELECT
member_id AS member, YEAR(MIN(joined))
FROM grp_member) AS Subquery_a
WHERE group_id 
IN(SELECT group_id
	FROM grp
	WHERE city_id IN( SELECT city_id
					FROM city))
					GROUP BY YEAR(joined)
                    HAVING city IN("New York")
                    ORDER BY YEAR(joined);
                    

SELECT
M_Join, YEAR(joined) AS Yearly, MONTH(joined), COUNT(member_id) AS Members_Count
FROM grp_member,
(SELECT
member_id AS member, MONTH(MIN(joined)) AS M_Join
FROM grp_member
WHERE YEAR(joined) IN ("2017")) AS Subquery_a
WHERE YEAR(joined) IN ("2017")
GROUP BY MONTH(joined)
ORDER BY MONTH(joined) ASC;

