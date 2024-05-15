# Install libraries
!pip install ipython-sql
!pip install mysql-connector-python
!pip install pymysql

# load data
%load_ext sql

#select database
%sql mysql+mysqlconnector://root:janina@localhost:3306/yacht_db

#bs-1
%%sql
#ADD NEW CUSTOMER DETAILS
insert into customer
value
('D11-111', 'Farhan', 'farhan@ulster.uk', Null, null);
#ADD START DATE AND DURATION
insert into charter
values
('CH-111', '2024-08-09', 20, null, 'D11-111');

%%sql
#GET NEW CUSTOEMRS DETAILS
select * from customer
where customer_id = 'D11-111';

%%sql
#GET NEW CUSTOEMRS DETAILS
select * from charter
where charter_id = 'CH-111';

#BS_2
%%sql
# 2
#SELECT PORT NAME, DURATION
select port_name, sum(duration)
from charter
# INSER THE DATES
where start_date between '2018-06-25' and '2018-08-25'
group by port_name; 

#BS_3
%%sql
# 3
# GET THE DETAILS NEEDED BY TWO GIVEN DATES
select yacht_name, home_port, exp_date, visit_duration
from yacht, visit 
where yacht.Home_port = visit.Port_name
and Exp_date BETWEEN '2018-07-01' AND '2018-07-31';

#BS_4
%%sql
# 4
# LIST OF VISITED PORT, EXP_DATE & STAY DURATION BY CUSTOMER NAME
select visit_duration, Exp_date as date_of_arrival
from charter, visit, customer
where customer.Customer_id = charter.Customer_id
and charter.Charter_id = visit.Charter_id
and customer_name = 'John Wayne'
order by Exp_date;

#BS_5
%%sql
# 5.1
# REMOVE YACHT(SERVICING START/END)
alter table yacht
add column servicing_start date,
add column servicing_end date;

#GET RANDOM DATE FOR SERVICING IN 5 YEARS OF DURATION(2017-2022)
#WE ASSUME EACH SERVICING WILL TAKE (5-8) DYAS
update yacht
set 
servicing_start = date_add('2017-01-01', interval floor(rand() * 1827) day),
servicing_end = date_add(servicing_start, interval floor(rand() * 4) + 5 day);

#5.2
%%sql
#NOW GET LIST OF YACHT WHICH ARE AVAILABLE(BY DATE)
select *
from yacht
where '2021-02-08' not between servicing_start and servicing_end;

#5.2
%%sql
# 5
# ADD YACHT(SERVICING START/END)
alter table yacht
add column servicing_start date default null,
add column servicing_end date default null;

#ADD SERVICING START & END DATE, AND DECLARE THE CHARTER ID 
update yacht
set 
servicing_start = '2020-08-21',
servicing_end = '2020-08-25'
where charter_id = 'CH-027'

#NOW GET LIST OF YACHT WHICH ARE NOT AVAILABLE(BY DATE)
select * 
from yacht 
where '2020-08-23' between servicing_start and servicing_end;


