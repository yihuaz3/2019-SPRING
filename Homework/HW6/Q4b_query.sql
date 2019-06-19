
SELECT o1.observation_id, p1.phlid, p1.name, o1.rate as part_b, o2.manufacturer, o2.model, o2.kind,o2.software_version as Heart_rate_view
FROM Observable o1, Observer o2, PHLogger p1
where
	p1.phlid = o2.phlid and
    o2.observer_id = o1.observer_id and
    o1.kind = 'heartrate';

SELECT p1.phlid, p1.name, h1.kind, h1.manufacturer, h1.model, h1.software_version, 
avg(part_b), table1.a1

FROM heart_rate_view h1, phlogger p1, (SELECT phlid, AVG(part_b) AS a1 FROM heart_rate_view GROUP BY phlid) AS table1

where p1.phlid = h1.phlid and p1.phlid = table1.phlid
group by h1.phlid, h1.kind, h1.manufacturer, h1.model, h1.software_version
having avg(part_b) < table1.a1 * 0.8;


