
  SELECT count(*) FROM t1 WHERE x>200 AND x<300;
  SELECT count(*) FROM t1 WHERE x>0 AND x<1100;

  SELECT count(*) FROM t2 WHERE x>1 AND x<2;
  SELECT count(*) FROM t2 WHERE x>0 AND x<99;

  SELECT count(*) FROM t3 WHERE x>200 AND x<300;
  SELECT count(*) FROM t3 WHERE x>0 AND x<1100

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t1 VALUES(1,1,'0000');
  CREATE INDEX t0b ON t1(b);
  ANALYZE;
  SELECT c FROM t1 WHERE b=3 AND a BETWEEN 30 AND hex(1);

  CREATE TABLE t1(a,b,c);
  CREATE INDEX t1a ON t1(a);
  ANALYZE;
  SELECT * FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  ANALYZE sqlite_master;

  CREATE TABLE t1(a PRIMARY KEY, v) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1','1 1');
  INSERT INTO sqlite_stat4 VALUES('t1','t1','1','0','0',X'021b76657273696f6e');
  INSERT INTO sqlite_stat4 VALUES('T1','T1','1','0','0',X'021b76657273696f6e');
  ANALYZE sqlite_schema;

  CREATE TABLE t1(a INT PRIMARY KEY, b INT) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat4 VALUES
     ('t1','t1','1','2','2',X'03000103'),
     ('t1','sqlite_autoindex_t1_1','1','2','2',X'03000103');
  ANALYZE sqlite_schema;
  PRAGMA integrity_check;
