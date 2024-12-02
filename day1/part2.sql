with input(a, _, _, b) as (
    select * from read_csv('./day1/input1', delim = ' ')
    -- where column0 = 67798
),
w as (
    from input
    select b, count(a) w
    group by b
)
from input
join w on (input.a = w.b)
select sum(a * w)
;
