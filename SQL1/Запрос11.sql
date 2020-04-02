SELECT
  bolshakov_special.name
FROM bolshakov_course
  INNER JOIN bolshakov_special
    ON bolshakov_course.special_id = bolshakov_special.special_id
  INNER JOIN bolshakov_graduate
    ON bolshakov_graduate.course_id = bolshakov_course.course_id
WHERE bolshakov_graduate.course_id IS NULL