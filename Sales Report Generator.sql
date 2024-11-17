select * from salary


insert into emp_transaction
select emp_id, emp_name, trns_type
, case when trns_type = 'Allowance' then round (base_salary * (percentage/100), 2)
   when trns_type = 'Basic' then round (base_salary * (percentage/100), 2)
   when trns_type = 'Others' then round (base_salary * (percentage/100), 2)
   when trns_type = 'House' then round (base_salary * (percentage/100), 2)
   when trns_type = 'Health' then round (base_salary * (percentage/100), 2)
   when trns_type = 'Insurance' then round (base_salary * (percentage/100), 2)
  end amount 
from salary
     cross join(select deduction as trns_type, cast(percentage as decimal) as percentage from deduction
			    Union
			    select income as trns_type, cast(percentage as decimal) as percentage from income) x


select * from emp_transaction

select emp_id, emp_name, trns_type
, case when trns_type = 'Allowance' then round (base_salary * (percentage/100), 2)
  case when trns_type = 'Basic' then round (base_salary * (percentage/100), 2)
  case when trns_type = 'Others' then round (base_salary * (percentage/100), 2)
  case when trns_type = 'House' then round (base_salary * (percentage/100), 2)
  case when trns_type = 'Health' then round (base_salary * (percentage/100), 2)
  case when trns_type = 'Insurance' then round (base_salary * (percentage/100), 2)
  end amount 
from salary
     cross join(select deduction as trns_type, cast(percentage as decimal) as percentage from deduction
			    Union
			    select income as trns_type, cast(percentage as decimal) as percentage from income) x

