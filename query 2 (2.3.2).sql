use brt;
select b2b.station_num, avg(c.`value`) as `Avrage_Capacity`	 
from `bus2busstops` as b2b join `bus` using(bus_id)
join capacities as c using(tag_id)
group by b2b.station_num;