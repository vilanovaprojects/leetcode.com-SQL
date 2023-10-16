Select id, movie, description, rating
from CINEMA 
WHERE id % 2 != 0 
AND description != 'boring'
ORDER BY rating DESC;