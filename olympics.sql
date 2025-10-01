select 
full_name, 
s.sport_name, 
nc.region_name, 
m.medal_name,
g.games_year,
g.games_name,
g.season,
c.city_name,
p.gender,
e,event_name
from olympics.person p 

join olympics.games_competitor gc 
on p.id = gc.person_id 
join olympics.competitor_event ce 
on ce.competitor_id = gc.id 
join olympics.event e 
on e.id = ce.event_id 
join olympics.sport s 
on e.sport_id = s.id 
join olympics.person_region pr 
on p.id = pr.person_id 
join olympics.noc_region nc 
on pr.region_id = nc.id 
join olympics.medal m 
on ce.medal_id = m.id
join olympics.games g
on g.id = gc.games_id
join olympics.games_city gcc
on gcc.games_id = g.id
join olympics.city c
on gcc.city_id = c.id
