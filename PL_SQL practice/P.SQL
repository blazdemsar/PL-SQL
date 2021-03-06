DECLARE
	CURSOR C1 IS SELECT * FROM EMP;
	X EMP%ROWTYPE;
BEGIN
	OPEN C1;
	LOOP
		FETCH C1 INTO X;
		EXIT WHEN C1%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(X.ENAME||' '||X.SAL||' '||X.DEPTNO||' '||X.JOB);
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('NR. OF RECORDS FETCHED:: '||C1%ROWCOUNT);
	CLOSE C1;
END;
/