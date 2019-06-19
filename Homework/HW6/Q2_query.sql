SELECT distinct p1.phlid from PHLogger p1, Observer o1, Observer o2
where
	o1.phlid = p1.phlid
    group by o1.phlid
    HAVING COUNT(distinct o1.kind) = (SELECT COUNT(distinct o2.kind));
    