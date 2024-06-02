use bank;
show tables;
describe account;
describe client;
select client_id from client
where district_id = 1
limit 5;
select client_id from client 
where district_id = 72
order by client_id desc
limit 1;

describe loan;
select amount from loan 
order by amount asc 
limit 3;

select distinct status from loan
order by status asc;

describe loan;
select loan_id from loan
order by payments desc
limit 1;

select account_id, amount from loan
order by amount asc
limit 5;

select account_id from loan 
where duration = 60 
order by amount asc
limit 5;
select distinct k_symbol from `order`;

describe `order`;

select order_id from `order` 
where account_id = 34;

select distinct account_id from `order`
where order_id between  29540 and   29560;

describe `order`;

select amount from `order`
where account_to = 30067122;

describe `trans`;
select trans_id, date, type , amount from trans
where account_id = 793
order by date desc
limit 10;

SELECT district_id, COUNT(*) AS client_by_district from client
where district_id < 10
group by district_id
order by district_id desc;

describe card;

select type, count(*) as number_by_type from card
group by type
order by number_by_type desc;

describe loan;

select account_id , sum(amount) as sum_ from loan
group by account_id
order by sum_ desc
limit 10;

describe loan;

select date, count(*) from loan
where date <  930907
group by date
order by date desc;

describe loan ;

select date, duration, count(*) as number_of_d from loan 

group by date, duration 
order by date asc, duration asc;


SELECT 
    DATE_FORMAT(date, '%y%m%d') AS formatted_date,
    duration,
    COUNT(*) AS number_of_d
FROM 
    loan
WHERE 
    date LIKE '9712%'
GROUP BY 
    formatted_date, duration
ORDER BY 
    formatted_date ASC, duration ASC;


describe trans;

select account_id, type, sum(amount) from trans 
where account_id = 396
group by type;