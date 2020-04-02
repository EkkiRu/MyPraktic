SELECT
 bolshakov_day.name, COUNT(*)
 FROM bolshakov_course
 INNER JOIN bolshakov_graduate ON bolshakov_graduate.course_id = bolshakov_course.course_id
 INNER JOIN bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id= bolshakov_graduate.graduate_id
 INNER JOIN bolshakov_day ON bolshakov_graduate_time.day_id=bolshakov_day.day_id
 GROUP BY bolshakov_day.day_id
