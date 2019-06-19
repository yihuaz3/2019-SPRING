Select distinct p1.name from cs122a_sp19.PHLogger p1, cs122a_sp19.Thought t1, cs122a_sp19.About a1, cs122a_sp19.Interest i1, cs122a_sp19.Member m1
where p1.phlid = t1.phlid 
and a1.phlid = t1.phlid
and a1.tnum = t1.tnum
and a1.iname = i1.iname
and m1.phlid = p1.phlid
and m1.iname = i1.iname
and i1.topic = 'exercise'