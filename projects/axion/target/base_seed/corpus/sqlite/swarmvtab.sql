
  CREATE TABLE t0(a INTEGER PRIMARY KEY, b TEXT);
  WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<400) 
  INSERT INTO t0 SELECT i, hex(randomblob(50)) FROM s;

  CREATE TABLE dir(f, t, imin, imax);
 
  DROP TABLE s1; 

  CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  SELECT count(*) FROM s1 WHERE rowid<50;

  SELECT count(*) FROM s1 a, s1 b WHERE b.rowid<=200;

  SELECT count(*) FROM s1 a, s1 b, s1 c 
  WHERE a.rowid=b.rowid AND b.rowid=c.rowid;

  ATTACH 'test.db1' AS aux;
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO aux.t1 VALUES(1, NULL);
  INSERT INTO aux.t1 VALUES(2, NULL);
  INSERT INTO aux.t1 VALUES(9, NULL);
  DETACH aux;
  CREATE VIRTUAL TABLE temp.xyz USING swarmvtab(
    'VALUES
        (''test.db1'', ''t1'', 1, 10),
        (''test.db2'', ''t1'', 11, 20)
    ', 'fetch_db'
  );
