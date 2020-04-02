SELECT bolshakov_otdel.name
From bolshakov_otdel
Inner Join bolshakov_teacher ON bolshakov_teacher.otdel_id = bolshakov_otdel.otdel_id
Inner Join bolshakov_graduate ON bolshakov_graduate.user_id = bolshakov_teacher.user_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_day ON bolshakov_graduate_time.day_id = bolshakov_day.day_id AND bolshakov_day.name = 'Вторник'
Inner Join bolshakov_lesson_num On bolshakov_graduate_time.lesson_num_id = bolshakov_lesson_num.lesson_num_id AND bolshakov_lesson_num.time_lesson BETWEEN '09:00:00' AND '12:00:00'
