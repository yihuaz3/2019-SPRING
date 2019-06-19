DROP VIEW IF EXISTS Heart_rate_view;
CREATE VIEW Heart_rate_view AS
SELECT o1.observation_id, p1.phlid, p1.name, o1.rate, o2.manufacturer, o2.model, o2.kind,o2.software_version
FROM Observable o1, Observer o2, PHLogger p1
where
	p1.phlid = o2.phlid and
    o2.observer_id = o1.observer_id and
    o1.kind = 'heartrate';