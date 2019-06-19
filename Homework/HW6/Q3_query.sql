SELECT count(distinct p1.phlid) from PHLogger p1, Member m1, Interest i1
where  p1.phlid = m1.phlid and
  m1.iname = i1.iname and
        (p1.phlid not in (select distinct a1.phlid FROM About a1
WHERE a1.phlid = p1.phlid AND a1.iname = i1.iname));