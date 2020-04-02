SELECT bolshakov_user.user_id, bolshakov_user.lastname, bolshakov_user.firstname, bolshakov_otdel.name
FROM bolshakov_user
Inner Join bolshakov_teacher ON bolshakov_teacher.user_id = bolshakov_user.user_id
Inner Join bolshakov_otdel ON bolshakov_teacher.otdel_id = bolshakov_otdel.otdel_id
Inner Join bolshakov_graduate ON bolshakov_graduate.user_id = bolshakov_teacher.user_id
Inner Join bolshakov_graduate_time ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
Inner Join bolshakov_day ON bolshakov_graduate_time.day_id = bolshakov_day.day_id AND bolshakov_day.name = 'Суббота'
