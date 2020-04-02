SELECT DISTINCT
  bolshakov_user.lastname,
  bolshakov_user.firstname,
  bolshakov_user.partonomic
FROM bolshakov_teacher
  INNER JOIN bolshakov_user
    ON bolshakov_teacher.user_id = bolshakov_user.User_id
  INNER JOIN bolshakov_graduate
    ON bolshakov_graduate.user_id = bolshakov_teacher.user_id
  WHERE bolshakov_graduate.user_id IS null