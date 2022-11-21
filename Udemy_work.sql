-- Checking for the dataset
-- SELECT * FROM courses.udemy_courses_1;

-- Write a query for paid courses, showing the  course with the highest number of subscribers per month

-- SELECT course_id,
--        course_title, 
--        is_paid,
--        max(num_subscribers) as num_subscribers,
--        date_format(published_timestamp, '%M') AS month_paid
-- FROM udemy_courses_1
-- WHERE is_paid = 'true'
-- GROUP BY date_format(published_timestamp, '%M') 
-- order by  max(num_subscribers) desc

-- Write a query for paid courses, showing the course with the highest sales per month
SELECT course_id,
       course_title, 
       is_paid,
       (num_subscribers * price) as sales,
       date_format(published_timestamp, '%M') AS month_paid
FROM udemy_courses_1
WHERE is_paid = 'true'
GROUP BY date_format(published_timestamp, '%M') 
order by  sales desc