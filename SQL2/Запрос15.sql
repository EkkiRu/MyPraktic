SELECT bolshakov_day.*
FROM bolshakov_day
LEFT JOIN bolshakov_graduate_time ON (bolshakov_day.day_id = bolshakov_graduate_time.day_id)
WHERE bolshakov_graduate_time.graduate_time_id IS NULL
