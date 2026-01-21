# hana_hw
Q1: Count how many students passed the exam.
select
count(result_status) 
from day_2_exam
where "result_status"='Pass'


Q2: Find the average score of all students who failed
select
avg(total_score) AS AVG_SCORE
from day_2_exam
where "result_status"='Fail'


Q3: Get the highest score among all students.
select
max(total_score) AS MAX_SCORE
from day_2_exam

Q4: Get the lowest score among passed students.
select
min(total_score) AS MIN_SCORE
from day_2_exam

Q5: Sum the total marks of all students who scored above 40.
select
sum(total_score)
from day_2_exam
where "total_score" > '40'

Q6: Count students by result status for those who scored 35 or more.
select
distinct (result_status),
count(total_score)
from day_2_exam
where "total_score" > '35'
group by result_status


Q7: Find average score grouped by result status for students with scores between 30 and 40.
select
distinct (result_status),
avg(total_score) 
from day_2_exam
where "total_score" >'35' and "total_score" <'40'
group by result_status


Q8: Get maximum and minimum scores grouped by result status for students who scored less than 35.
select
distinct (result_status),
max(total_score) AS MAX_SCORE,
min(total_score) AS MIN_SCORE
from day_2_exam
where "total_score" <'35'
group by result_status


Q9: Count students grouped by result status for those whose names start with 'A'.
select
count(student_name)
from day_1_exam
where student_name like 'A%'


Q10: Sum total scores grouped by result status for students who scored exactly 35, 40, or 45.
select
distinct (result_status),
sum(total_score) AS total_score
from day_2_exam
where "total_score" in ('35','40','45')
group by result_status


Q11: Count students by each score value, ordered by score descending.
select
total_score,
count(total_score)
from day_2_exam
where total_score BETWEEN 21 AND 50
group by total_score
order by total_score DESC


Q12: Show average score for each result status, ordered by average score.
select
result_status,
round(AVG(total_score),2) AS avg_score
from day_2_exam
group by result_status
order by avg_score


Q13: Count how many students got each score, only for scores above 30, ordered by frequency.
select
total_score,
count(total_score)
from day_2_exam
where total_score >'30'
group by total_score
order by count desc


Q14: Get total marks sum for each result status, ordered by sum.
select
distinct(result_status),
SUM(total_score) 
from day_2_exam
group by result_status
order by sum


15: Find minimum score for each result status, ordered by min score.
select
distinct(result_status),
MIN(total_score) AS MIN_SCORE
from day_2_exam
group by result_status
order by MIN_SCORE


Q16: For passed students only, show count, average, max and min scores grouped by whether score is above 40.
select
count(total_score) AS PASSED_STUDENTS,
round(avg(total_score),2) AS AVG_SCORE,
max(total_score) AS MAX_SCORE,
MIN(total_score) AS MIN_SCORE
from day_2_exam
WHERE total_score > '40'


Q17: Count and average score for each result status, only for scores not equal to 35.
select
DISTINCT(result_status),
ROUND(AVG(total_score),2) AS AVG_SCORE,
COUNT(total_score) AS COUNT
FROM day_2_exam
WHERE total_score <> '35'
GROUP BY result_status


Q19: For each result status, show count of students with scores greater than 30 and less than 40.
SELECT
distinct(result_status),
COUNT(total_score) AS COUNT
FROM day_2_exam
WHERE total_score >'30' AND total_score <'40'
GROUP BY result_status
