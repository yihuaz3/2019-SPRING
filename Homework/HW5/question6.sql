select Distinct o1.observer_id, count(o2.observation_id)
from cs122a_sp19.Observer o1, cs122a_sp19.Observable o2
where 
o1.manufacturer = 'Apple'
and o1.observer_id = o2.observer_id
and o2.kind = 'bloodpressure'
group by o1.observer_id
having count(*) > 3