/*
Query the list of CITY names from STATION that do not start with vowels 
and do not end with vowels. Your result cannot contain duplicates.

The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/


-- Solution:

SELECT DISTINCT city 
FROM station 
WHERE city REGEXP '^[^aeiouAEIOU].*[^aeiouAEIOU]$';