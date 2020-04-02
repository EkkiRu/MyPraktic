SELECT bolshakov_user.user_id, bolshakov_user.lastname, bolshakov_user.firstname
FROM bolshakov_user
Inner Join bolshakov_student ON bolshakov_student.user_id = bolshakov_user.user_id
Inner Join bolshakov_gruppa ON bolshakov_student.gruppa_id = bolshakov_gruppa.gruppa_id
Inner Join bolshakov_graduate ON bolshakov_graduate.gruppa_id = bolshakov_gruppa.gruppa_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_day ON bolshakov_graduate_time.day_id = bolshakov_day.day_id AND bolshakov_day.name = 'Пятница'
