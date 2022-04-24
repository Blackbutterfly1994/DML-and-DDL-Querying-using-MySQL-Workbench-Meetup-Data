SELECT 
COUNT(*)
FROM event
WHERE event_name LIKE '%toastmaster%';

SELECT 
c.city,
e.event_name
FROM event AS e
JOIN grp AS g ON e.group_id = g.group_id
JOIN city AS c ON g.city_id = c.city_id;

SELECT 
c.city,
e.event_name,
COUNT(event_name)
FROM event AS e
JOIN grp AS g ON e.group_id = g.group_id
JOIN city AS c ON g.city_id = c.city_id
WHERE event_name LIKE '%toastmaster%'
GROUP BY city;