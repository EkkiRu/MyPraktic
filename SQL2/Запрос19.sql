SELECT bolshakov_course.name, bolshakov_course.hours, bolshakov_special.name, bolshakov_day.name
FROM bolshakov_otdel 
INNER JOIN bolshakov_special ON bolshakov_special.otdel_id = bolshakov_otdel.otdel_id
INNER JOIN bolshakov_course ON bolshakov_course.special_id = bolshakov_special.special_id
INNER JOIN bolshakov_graduate ON bolshakov_graduate.course_id = bolshakov_course.course_id
INNER JOIN bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
INNER JOIN bolshakov_day ON bolshakov_graduate_time.day_id = bolshakov_day.day_id 
WHERE bolshakov_otdel.otdel_id = '2' AND (bolshakov_day.day_id = '3' OR bolshakov_day.day_id = '5')
