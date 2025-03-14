
  CREATE TABLE t1(
    x PRIMARY KEY,
    UNIQUE(x,x),
    UNIQUE(x,x) ON CONFLICT REPLACE
  );
  INSERT INTO t1(x) VALUES(1);
  SELECT * FROM t1;

  SELECT * FROM t1;

  -- ON CONFLICT is allowed on table CHECK constraints
  CREATE TABLE t1(a INT, CHECK( a!=5 ) ON CONFLICT ignore);

  SELECT a FROM t1 ORDER BY a;

  INSERT OR IGNORE INTO t1(a) VALUES(4),(5),(6);
  SELECT a FROM t1 ORDER BY a;
