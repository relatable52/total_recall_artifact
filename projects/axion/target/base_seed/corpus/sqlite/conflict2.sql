
  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(
    x TEXT PRIMARY KEY NOT NULL, 
    y TEXT NOT NULL,
    z INTEGER
  );
  INSERT INTO t1 VALUES('alpha','beta',1);
  CREATE UNIQUE INDEX t1xy ON t1(x,y);
  REPLACE INTO t1(x,y,z) VALUES('alpha','gamma',1);
  PRAGMA integrity_check;
  SELECT x,y FROM t1 INDEXED BY t1xy;
  SELECT x,y,z FROM t1 NOT INDEXED;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(
    x TEXT PRIMARY KEY NOT NULL, 
    y TEXT NOT NULL,
    z INTEGER
  ) WITHOUT ROWID;
  INSERT INTO t1 VALUES('alpha','beta',1);
  CREATE UNIQUE INDEX t1xy ON t1(x,y);
  REPLACE INTO t1(x,y,z) VALUES('alpha','gamma',1);
  PRAGMA integrity_check;
  SELECT x,y FROM t1 INDEXED BY t1xy;
  SELECT x,y,z FROM t1 NOT INDEXED;
