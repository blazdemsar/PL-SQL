/*
CREATE OR REPLACE TRIGGER RESTRICT_EMP
BEFORE INSERT ON EMP
BEGIN
	RAISE_APPLICATION_ERROR(-20987, 'INSERTION IS NOT ALLOWED');
END;
/
*/

/*
CREATE OR REPLACE TRIGGER RESTRICT_EMP
BEFORE INSERT OR UPDATE OR DELETE ON EMP
BEGIN
	IF INSERTING THEN
		RAISE_APPLICATION_ERROR(-20987, 'INSERTION IS NOT ALLOWED');
	ELSIF UPDATING THEN
		RAISE_APPLICATION_ERROR(-20987, 'UPDATING IS NOT ALLOWED');
	ELSIF DELETING THEN
		RAISE_APPLICATION_ERROR(-20987, 'DELETING IS NOT ALLOWED');
	END IF;
END;
/
*/

CREATE OR REPLACE TRIGGER RESTRICT_EMP
BEFORE INSERT OR UPDATE OF ENAME ON EMP
FOR EACH ROW
BEGIN
	DBMS_OUTPUT.PUT_LINE('MANIPULATING EMP TABLE...');
	:NEW.ENAME := UPPER(:NEW.ENAME);
END;
/