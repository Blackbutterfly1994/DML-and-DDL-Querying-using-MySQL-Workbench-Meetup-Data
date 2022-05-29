SELECT 
group_id, rating, group_name, members, 
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM grp
GROUP BY group_name;

SELECT 
group_id, rating, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great,
COUNT(group_name),
745/4340 * 100
FROM grp
GROUP BY rating BETWEEN 0.00 AND 5.00
HAVING rating;

SELECT 
group_id, rating, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM grp
GROUP BY group_name
HAVING rating >= 5.00
ORDER BY members DESC;

SELECT 
group_id, city, rating, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM grp g
JOIN city c ON g.city_id = c.city_id
GROUP BY group_name
HAVING rating >= 5.00
ORDER BY members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY rating
HAVING rating 
ORDER BY members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY group_id
HAVING city IN("New York")
ORDER BY rating AND members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY group_id
HAVING city IN("New York")
ORDER BY members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY group_id
HAVING city IN("New York")
ORDER BY members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY group_id
HAVING city IN("Chicago")
ORDER BY members DESC;

SELECT 
group_id, city, rating, category_name, group_name, members,
SUM(CASE WHEN rating = 0.00 THEN 1 ELSE 0 END) AS No_Rating,
SUM(CASE WHEN rating BETWEEN 1.00 AND 1.99 THEN 1 ELSE 0 END) AS Poor,
SUM(CASE WHEN rating BETWEEN 2.00 AND 2.99 THEN 1 ELSE 0 END) AS Fair,
SUM(CASE WHEN rating BETWEEN 3.00 AND 3.99 THEN 1 ELSE 0 END) AS Good,
SUM(CASE WHEN rating BETWEEN 4.00 AND 4.99 THEN 1 ELSE 0 END) AS Very_Good,
SUM(CASE WHEN rating = 5.00 THEN 1 ELSE 0 END) AS Great
FROM city c
JOIN grp g ON c.city_id = g.city_id
JOIN category cg ON g.category_id = cg.category_id
GROUP BY group_id
HAVING city IN("San Francisco")
ORDER BY members DESC;



