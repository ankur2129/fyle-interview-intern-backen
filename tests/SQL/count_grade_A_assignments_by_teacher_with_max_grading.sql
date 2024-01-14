SELECT MAX(count_grade) AS max_grade 
FROM(
  SELECT teacher_id, Count(grade) AS count_grade FROM assigments WHERE grade='A' AND state='GRADED' GROUP BY teacher_id) 
  AS grade_count;
