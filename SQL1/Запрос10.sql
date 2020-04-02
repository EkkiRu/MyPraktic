SELECT
  bolshakov_course.name
FROM bolshakov_graduate
  INNER JOIN bolshakov_course
    ON bolshakov_graduate.course_id = bolshakov_course.course_id
WHERE bolshakov_course.special_id IS NULL