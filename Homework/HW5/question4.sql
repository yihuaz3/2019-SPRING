select o1.observer_id, o1.manufacturer from cs122a_sp19.Observer o1, cs122a_sp19.Observable o2
where o1.kind = 'smartwatch' 
and o1.observer_id = o2.observer_id 
and o2.rate = (select max(o3.rate) from cs122a_sp19.Observable o3)
