with input(a, _, _, b) as (
    select * from read_csv('./day1/input1', delim = ' ')
),
a as (
    select a, row_number() over (order by a) as rn from input order by a
),
b as (
    select b, row_number() over (order by b) as rn from input order by b
)
select sum(abs(b - a)) from a join b using (rn);
