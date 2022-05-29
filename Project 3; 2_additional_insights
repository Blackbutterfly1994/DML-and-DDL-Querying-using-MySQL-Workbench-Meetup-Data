-- venue_
SELECT 
city,
venue_name,
COUNT(venue_id)
FROM venue_
GROUP BY city;
/* Venues in the LetsMeet communities are mostly hosted in New York, Chicago, and San Francisco. The most used venues are Starbucks Coffee, Heartland Cafe, and 111 Minna Gallery.*/

-- grp
SELECT 
group_id,
join_mode,
group_name,
who
FROM grp
WHERE join_mode IN ('approval')
GROUP BY group_name;
/* The different kind of groups for meet up at LetsMeet varies grandly. With a very diverse selection of members. The groups that meet up are groups such as NYC International Arabic Language & Culture Club. Tending to those who are Arabophiles. Which are people who are highly involved in Arabian studies and culture. The Chicago Boston Terrier Meetup Group for Boston Terrier Owners. Boston Terrier's are a dog breed. Lastly, The New York City Jewelery Making Meetup Group. This group is for Jewelry Makers.*/

-- grp_member
SELECT
grp.group_name, grp_member.member_name, grp.created, grp_member.joined, member_status
FROM grp
JOIN grp_member ON grp_member.group_id = grp.group_id
GROUP BY group_name
ORDER BY created asc;

SELECT
grp.group_name, grp_member.member_name, grp.created, grp_member.joined, member_status
FROM grp
JOIN grp_member ON grp_member.group_id = grp.group_id
GROUP BY group_name
ORDER BY joined asc;
/* LetsMeet has many old and new groups. The first group with active members was created on October 08, 2002 called NYC Dining + Cooking. While Chicago Pugs has the oldest active member with a join date of April 28, 2003.*/

-- city
SELECT 
DISTINCT(COUNT(member_name)), city
FROM grp_member
GROUP BY city
ORDER BY COUNT(member_name) desc;
/*LetsMeet has a big community in New York. With it's member total being 23,190. San Fransisco has the second biggest member base at 11,019. With Chicago coming in next with 9,056 members.*/

-- event
SELECT
g.members, e.headcount, e.event_name, v.state, v.city, v.venue_name, count(venue_name)
FROM grp AS g
JOIN event AS e ON g.group_id = e.group_id
JOIN venue_ AS v ON e.venue_id = v.venue_id
GROUP BY venue_name
ORDER BY COUNT(venue_name) desc;

/*What venue hosts the most events? How many members attended this event? What city and State was it in?
The LetsMeet community hosts the most events in The Ainsworth venue in New York, NY. There has been 370 event hosted in this venue. The events hosted there has had 1,867 member attend the events.*/

-- category
SELECT 
group_name, category_name, created, COUNT(group_name)
FROM grp
RIGHT JOIN category ON grp.category_id = category.category_id
GROUP BY category_name
ORDER BY COUNT(group_name) desc;

/* The oldest catergory with the most groups are in Tech. This category had it's first group created in March 18, 2003. With as many as 911 groups created with in it. The second most popular category is Career & Business with it's earliest created group in November 1, 2002. With 790 groups. The third most popular group category is Socializing. The first created group was in Feburary 05, 2003 and a total of 320 were created.*/
