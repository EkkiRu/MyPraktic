SELECT
  bolshakov_gruppa.name,
  COUNT(bolshakov_course.course_id)
FROM bolshakov_gruppa
  INNER JOIN bolshakov_special
    ON bolshakov_gruppa.special_id = bolshakov_special.special_id
  INNER JOIN bolshakov_course
    ON bolshakov_course.special_id = bolshakov_special.special_id
  GROUP BY bolshakov_course.course_id