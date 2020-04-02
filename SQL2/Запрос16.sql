SELECT bolshakov_special.name
FROM bolshakov_special
Inner Join bolshakov_course ON bolshakov_course.special_id = bolshakov_special.special_id
Inner Join bolshakov_graduate ON bolshakov_graduate.course_id = bolshakov_course.course_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_day ON bolshakov_graduate_time.day_id = bolshakov_day.day_id AND bolshakov_day.name = 'Вторник'
