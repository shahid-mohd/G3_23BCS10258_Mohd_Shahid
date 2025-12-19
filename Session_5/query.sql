-- G3_23BCS10258_Mohd_Shahid

Select e.name, b.bonus from Employee e
left join Bonus b
on  e.empId = b.empId
where b.bonus < 1000 or b.bonus is null
order by b.bonus
