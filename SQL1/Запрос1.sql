SELECT
  bolshakov_user.lastname,
  bolshakov_user.firstname,
  bolshakov_user.partonomic,
  bolshakov_otdel.name,
  bolshakov_gender.name
FROM bolshakov_teacher
  INNER JOIN bolshakov_otdel
    ON bolshakov_teacher.otdel_id = bolshakov_otdel.otdel_id
  INNER JOIN bolshakov_user
    ON bolshakov_teacher.user_id = bolshakov_user.User_id
  INNER JOIN bolshakov_gender
    ON bolshakov_user.gender_id = bolshakov_gender.gender_id