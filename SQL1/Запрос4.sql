SELECT
  bolshakov_gruppa.name,
  bolshakov_gruppa.date_begin,
  bolshakov_gruppa.date_end
FROM bolshakov_gruppa
  INNER JOIN bolshakov_special
    ON bolshakov_gruppa.special_id = bolshakov_special.special_id
WHERE bolshakov_special.special_id=1