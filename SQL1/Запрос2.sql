SELECT
  bolshakov_user.lastname,
  bolshakov_user.firstname,
  bolshakov_user.partonomic,
  bolshakov_gruppa.name,
  bolshakov_special.name
FROM bolshakov_otdel
  INNER JOIN bolshakov_special
    ON bolshakov_special.otdel_id = bolshakov_otdel.otdel_id
  INNER JOIN bolshakov_gruppa
    ON bolshakov_gruppa.special_id = bolshakov_special.special_id
  INNER JOIN bolshakov_student
    ON bolshakov_student.gruppa_id = bolshakov_gruppa.gruppa_id
  INNER JOIN bolshakov_user
    ON bolshakov_student.user_id = bolshakov_user.User_id
WHERE bolshakov_special.special_id = 1