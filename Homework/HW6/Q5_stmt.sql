DROP PROCEDURE IF EXISTS AddThought; 
DELIMITER //
CREATE PROCEDURE AddThought (
	phlid VARCHAR(8),
	iname VARCHAR(20),
	text VARCHAR(300)
) 
BEGIN
	DECLARE NewTnum INTEGER;
	SET NewTnum = (SELECT IFNULL(MAX(tnum)+1, 0) FROM Thought T 
    WHERE T.phlid = phlid);
	INSERT INTO Thought (phlid, tnum, text, date)
	VALUES (phlid, NewTnum, text, CURRENT_TIME());
	INSERT INTO About (phlid, tnum, iname)
	VALUES (phlid, NewTnum, iname);
END //
DELIMITER ;
