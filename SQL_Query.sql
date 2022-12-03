
/* Query used to extract both the city level data  and global data */

SELECT c.year,
	   coalesce(c.avg_temp,avg(c.avg_temp ) over ():: DECIMAL(10,2)) as Riyadh_temp,
       g.avg_temp as global_temp
FROM city_data c
left join global_data g
on c.year = g.year
where city = 'Riyadh';
