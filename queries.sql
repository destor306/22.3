-- write your queries here


--1.
SELECT * FROM owners LEFT JOIN vehicles on owners.id = vehicles.owner_id;

--2.
SELECT o.first_name, o.last_name, COUNT(*) AS count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id 
GROUP BY o.id
ORDER BY o.first_name;

--3.
SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) as average_price, COUNT(*) AS count
FROM owners o 
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.id
HAVING COUNT(*) > 1 AND AVG(v.price) > 10000
ORDER BY o.first_name DESC;


