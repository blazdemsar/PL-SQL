DECLARE
	TYPE T IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
	R T;
	Y T;
BEGIN
	R(0):=1000;
	R(1):=2000;
	R(2):=3000;
	R(3):=4000;
	R(4):=5000;

	FOR I IN 0..4 LOOP
		DBMS_OUTPUT.PUT_LINE(R(I));
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE(R(R.FIRST));
	DBMS_OUTPUT.PUT_LINE(R(R.LAST));
	DBMS_OUTPUT.PUT_LINE(R.COUNT);
	R.DELETE(1);
	DBMS_OUTPUT.PUT_LINE(R.COUNT);
END;
/