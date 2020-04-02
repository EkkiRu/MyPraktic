SELECT
  bolshakov_otdel.name,
  COUNT(bolshakov_otdel.name)
FROM bolshakov_student
  INNER JOIN bolshakov_user
    ON bolshakov_student.user_id = bolshakov_user.User_id
  INNER JOIN bolshakov_gruppa
    ON bolshakov_student.gruppa_id = bolshakov_gruppa.gruppa_id
  INNER JOIN bolshakov_special
    ON bolshakov_gruppa.special_id = bolshakov_special.special_id
  INNER JOIN bolshakov_otdel
    ON bolshakov_special.otdel_id = bolshakov_otdel.otdel_id
GROUP BY bolshakov_otdel.name
         