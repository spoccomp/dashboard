select
	students.id,
	first_name,
	last_name,
	age,
	education
	
from
	students
inner join cohorts on cohorts.students_id = students.id

