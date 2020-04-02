SELECT
  bolshakov_special.name,
  bolshakov_course.hours,
  bolshakov_course.name
FROM bolshakov_special
  INNER JOIN bolshakov_course
    ON bolshakov_course.special_id = bolshakov_special.special_id
  WHERE bolshakov_special.otdel_id=2