SELECT bolshakov_user.user_id, bolshakov_user.lastname, bolshakov_user.firstname, bolshakov_gruppa.name, bolshakov_special.name
FROM bolshakov_user
INNER JOIN bolshakov_student ON bolshakov_student.user_id = bolshakov_user.user_id
INNER JOIN bolshakov_gruppa ON bolshakov_gruppa.gruppa_id = bolshakov_student.gruppa_id
INNER JOIN bolshakov_special ON bolshakov_special.special_id = bolshakov_gruppa.special_id
Inner JOIN bolshakov_graduate ON bolshakov_graduate.gruppa_id = bolshakov_gruppa.gruppa_id
INNER JOIN bolshakov_course ON bolshakov_graduate.course_id = bolshakov_course.course_id AND bolshakov_course.hours > '95'