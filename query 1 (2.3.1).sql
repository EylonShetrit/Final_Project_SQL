use brt;
select line,
case
when line_id=line_id & first_station = last_station & last_station = first_station & direction != direction then TRUE
else FALSE
end as is_proper_loop
from(
select line,line_id,first_station,last_station,direction
from `lines` as l
join `route` as r using(line_id)
) as A
group by line;