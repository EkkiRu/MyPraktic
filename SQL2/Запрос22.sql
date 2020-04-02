SELECT bolshakov_special.*
FROM bolshakov_special
INNER JOIN bolshakov_course ON bolshakov_course.special_id = bolshakov_special.special_id
INNER JOIN bolshakov_graduate ON bolshakov_graduate.course_id = bolshakov_course.course_id
INNER JOIN bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
LEFT JOIN bolshakov_day ON (bolshakov_graduate_time.day_id = bolshakov_day.day_id)
LEFT JOIN bolshakov_lesson_num ON (bolshakov_graduate_time.lesson_num_id = bolshakov_lesson_num.lesson_num_id)
WHERE bolshakov_lesson_num.time_lesson BETWEEN '14:00:00' and '18:00:00' AND (bolshakov_day.name = 'Четверг' OR bolshakov_day.name = 'Суббота') AND bolshakov_day.day_id IS NULL AND bolshakov_lesson_num.lesson_num_id IS NULL
