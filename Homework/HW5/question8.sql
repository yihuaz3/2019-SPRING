select u.phlid, c1.diastolic, c1.systolic, c2.start
from user u,
(select o1.phlid, o1.start from cs122a_sp19.Observation o1, cs122a_sp19.Observable o2
where o1.observation_id = o2.observation_id
and o2.rate = 65
and o2.kind = 'heartrate') as c2,

(select o3.phlid, o3.start, o4.diastolic,o4.systolic from cs122a_sp19.observation o3, cs122a_sp19.observable o4
where o3.observation_id = o4.observation_id
and o4.kind = 'bloodpressure') as c1

where u.phlid = c2.phlid and u.phlid = c1.phlid and c1.start = c2.start