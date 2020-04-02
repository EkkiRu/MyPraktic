SELECT
  bolshakov_user.lastname,
  bolshakov_user.firstname,
  bolshakov_user.partonomic,
  bolshakov_gruppa.name,
  bolshakov_course.name
FROM bolshakov_student
  INNER JOIN bolshakov_gruppa
    ON bolshakov_student.gruppa_id = bolshakov_gruppa.gruppa_id
  INNER JOIN bolshakov_user
    ON bolshakov_student.user_id = bolshakov_user.User_id
  INNER JOIN bolshakov_graduate
    ON bolshakov_graduate.gruppa_id = bolshakov_gruppa.gruppa_id
  INNER JOIN bolshakov_course
    ON bolshakov_graduate.course_id = bolshakov_course.course_id