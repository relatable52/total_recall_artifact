
  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES($a,$b,$c);
  CREATE INDEX t1a ON t1(a);
  SELECT run, sql FROM sqlite_stmt ORDER BY 1;

  INSERT INTO t1 VALUES($a,$b,$c);
  SELECT reprep,run,SQL FROM sqlite_stmt WHERE sql LIKE '%INSERT%' AND NOT busy;

  INSERT INTO t1 VALUES($a,$b,$c);
  SELECT reprep,run,SQL FROM sqlite_stmt WHERE sql LIKE '%INSERT%' AND NOT busy;

  CREATE INDEX t1b ON t1(b);
  INSERT INTO t1 VALUES($a,$b,$c);
  SELECT reprep,run,SQL FROM sqlite_stmt WHERE sql LIKE '%INSERT%' AND NOT busy;

  SELECT count(*) FROM sqlite_stmt WHERE NOT busy;

  SELECT count(*) FROM sqlite_stmt WHERE mem>5000;

  SELECT * FROM sqlite_stmt WHERE NOT busy;
