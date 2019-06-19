select distinct e.eid, e.ename
from cs122a_sp19.Event e, cs122a_sp19.Observation o,cs122a_sp19.Indicate i
where
e.phlid = o.phlid
and i.eid = e.eid
and i.observation_id = o.observation_id
and timediff(o.end, o.start) > '00:01:55';