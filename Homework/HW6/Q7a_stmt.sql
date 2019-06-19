delimiter $$
CREATE TRIGGER checkPhlid 
AFTER INSERT ON THOUGHT
FOR EACH ROW
BEGIN
	IF NEW.phlid NOT IN (SELECT phlid FROM phlogger) THEN
		SIGNAL SQLSTATE '02000' 
				SET MESSAGE_TEXT = 
                'ERROR: PHLogger does not exist!'; 
	END IF;
END;$$
delimiter ;

