select p1.name from cs122a_sp19.PHLogger p1, cs122a_sp19.Event e1
where
e1.phlid = p1.phlid
group by p1.name
having COUNT(*) > 4;