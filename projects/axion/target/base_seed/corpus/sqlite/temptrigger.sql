
  CREATE TABLE t1(x);
  CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN
    SELECT 1,2,3;
  END;

  CREATE TEMP TABLE t1(x);

  CREATE TABLE t1(x);
  CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN SELECT 1,2,3; END;

  SELECT * FROM sqlite_master;
  SELECT * FROM temp.sqlite_master;

  CREATE TABLE t1(x);
  CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN 
    SELECT raise(ABORT, 'error'); 
  END;
  ATTACH 'test.db2' AS aux;

  SELECT type,name,tbl_name,sql FROM aux.sqlite_master;
  INSERT INTO aux.t1 VALUES(1,2,3);
