SELECT
  bolshakov_user.lastname,
  bolshakov_user.firstname,
  bolshakov_user.partonomic,
  bolshakov_course.name,
  bolshakov_course.hours,
  bolshakov_gruppa.name
FROM bolshakov_teacher
  INNER JOIN bolshakov_user
    ON bolshakov_teacher.user_id = bolshakov_user.User_id
  INNER JOIN bolshakov_graduate
    ON bolshakov_graduate.user_id = bolshakov_teacher.user_id
  INNER JOIN bolshakov_graduate_time
    ON bolshakov_graduate_time.gradute_id = bolshakov_graduate.graduate_id
  INNER JOIN bolshakov_lesson_num
    ON bolshakov_graduate_time.lesson_num_id = bolshakov_lesson_num.lesson_num_id
  INNER JOIN bolshakov_course
    ON bolshakov_graduate.course_id = bolshakov_course.course_id
  INNER JOIN bolshakov_gruppa
    ON bolshakov_graduate.gruppa_id = bolshakov_gruppa.gruppa_id
WHERE bolshakov_lesson_num.time_lesson between '08:30:00' AND '15:00:00'