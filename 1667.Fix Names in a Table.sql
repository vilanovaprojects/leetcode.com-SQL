SELECT user_id, UPPER(LEFT(name,1)) + LOWER(SUBSTRING(name, 2, LEN(name) -1)) AS name
FROM Users