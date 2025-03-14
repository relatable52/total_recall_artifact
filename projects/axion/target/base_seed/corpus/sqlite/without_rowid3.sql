
  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(a,b,c,d,e,f,
     UNIQUE (a,b),
     PRIMARY KEY (e,c),
     FOREIGN KEY (d,f) REFERENCES t1(e,c)
  ) WITHOUT rowid;
  INSERT INTO t1 VALUES(1,2,3,5,5,3);
  INSERT INTO t1 VALUES(2,3,4,6,6,4);
  INSERT INTO t1 VALUES('x','y',1.5,'fizzle','fizzle',1.5);
  SELECT *, '|' FROM t1 ORDER BY a, b;

  UPDATE t1 SET c=99, f=99 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  UPDATE t1 SET e=876, d=876 WHERE a=2;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  DELETE FROM t1 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  DROP TABLE t1;
  CREATE TABLE t1(a,b,c,d,e,f,
     PRIMARY KEY (a,b),
     UNIQUE (e,c),
     FOREIGN KEY (d,f) REFERENCES t1(e,c)
  ) WITHOUT rowid;
  INSERT INTO t1 VALUES(1,2,3,5,5,3);
  INSERT INTO t1 VALUES(2,3,4,6,6,4);
  INSERT INTO t1 VALUES('x','y',1.5,'fizzle','fizzle',1.5);
  SELECT *, '|' FROM t1 ORDER BY a, b;

  UPDATE t1 SET c=99, f=99 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  UPDATE t1 SET e=876, d=876 WHERE a=2;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  DELETE FROM t1 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;

  CREATE TABLE t1(a,b,PRIMARY KEY(a,b)) WITHOUT ROWID;
  CREATE TABLE t2(a,b,PRIMARY KEY(a,b)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1,2),(3,4),(5,6);
  SELECT changes();

  INSERT INTO t2 SELECT * FROM t1;
  SELECT changes();
