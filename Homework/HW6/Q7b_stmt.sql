delimiter $$
CREATE TRIGGER Asychonus
AFTER INSERT ON PHLogger
FOR EACH ROW
BEGIN
	DECLARE CreateIName VARCHAR(20);
	SET CreateIName = (SELECT iname FROM Interest ORDER BY RAND());
	INSERT INTO Member (phlid, iname) VALUES (NEW.phlid, RandName);
	call AddThought(NEW.phlid, RandName, "Hello!");  ##need run after the function declrartion
END;$$
delimiter ;

