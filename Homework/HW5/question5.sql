select * from cs122a_sp19.PHLogger p3
where p3.phlid in 
((select p1.phlid
from cs122a_sp19.PHLogger p1, cs122a_sp19.Observation o1 ,cs122a_sp19.PHLG_obs phlg1
where
p1.phlid = o1.phlid
and o1.observation_id = phlg1.observation_id
and phlg1.text LIKE '%yoga%')
union
(select p2.phlid
from cs122a_sp19.PHLogger p2,cs122a_sp19.Thought t1
where
p2.phlid = t1.phlid
and t1.text LIKE '%hiking%'));
