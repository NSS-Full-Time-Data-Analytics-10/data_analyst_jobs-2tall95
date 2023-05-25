----- Q1
SELECT *
FROM data_analyst_jobs;
----- Q2
SELECT *
FROM data_analyst_jobs 
LIMIT 10;
---Exxon Mobile
-----Q3
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN'OR location = 'KY';
---21,6 In KY
-----Q4
SELECT location, star_rating
FROM data_analyst_jobs
WHERE star_rating > 4 AND location = 'TN';
--- 3
-----Q5
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--- 151
-----Q6
SELECT location as state ,AVG(star_rating) as avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
---Nebraska
-----Q7
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;
---881
-----Q8
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';
---230
-----Q9
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000; 
---71
-----Q10
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
GROUP BY company
HAVING SUM (review_count) > 5000
ORDER BY avg DESC;
--- Google
----- Q11
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
---774
----- Q12
SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';
