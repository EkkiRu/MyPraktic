SELECT bolshakov_user.user_id, bolshakov_user.lastname, bolshakov_user.firstname
FROM bolshakov_user
Inner Join bolshakov_student ON bolshakov_student.user_id = bolshakov_user.user_id
Inner Join bolshakov_gruppa ON bolshakov_student.gruppa_id = bolshakov_gruppa.gruppa_id
Inner Join bolshakov_graduate ON bolshakov_graduate.gruppa_id = bolshakov_gruppa.gruppa_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_lesson_num ON bolshakov_graduate_time.lesson_num_id = bolshakov_lesson_num.lesson_num_id AND bolshakov_lesson_num.time_lesson BETWEEN '10:30:00' AND '18:30:00' AND bolshakov_user.gender_id='2'