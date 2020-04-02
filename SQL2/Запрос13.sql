SELECT bolshakov_course.course_id, bolshakov_course.name
FROM bolshakov_course
Inner Join bolshakov_graduate ON bolshakov_graduate.course_id = bolshakov_course.course_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_lesson_num ON bolshakov_graduate_time.lesson_num_id = bolshakov_lesson_num.lesson_num_id AND bolshakov_lesson_num.time_lesson BETWEEN '12:30:00' AND '18:30:00'
