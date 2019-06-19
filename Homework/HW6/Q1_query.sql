SELECT Distinct p1.phlid, p1.name, MAX(e1.start) FROM 	PHLogger p1, 
								Thought t1, 
								About a1, 
								Interest i1, 
								Event e1,
                                Member m1
where 	p1.phlid = t1.phlid and
		p1.phlid = e1.phlid and
        p1.phlid = a1.phlid and
        m1.phlid = p1.phlid and
        
		i1.iname = m1.iname and
        i1.topic = "alcoholism" and
        t1.text LIKE '%wasted%'
        group by p1.phlid
        order by p1.phlid asc
        