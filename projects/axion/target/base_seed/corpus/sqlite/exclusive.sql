
  CREATE TABLE t4(a, b);
  INSERT INTO t4 VALUES('Eden', 1955);
  BEGIN;
    INSERT INTO t4 VALUES('Macmillan', 1957);
    INSERT INTO t4 VALUES('Douglas-Home', 1963);
    INSERT INTO t4 VALUES('Wilson', 1964);

  PRAGMA locking_mode = EXCLUSIVE;
  SELECT * FROM t4;

  PRAGMA locking_mode = EXCLUSIVE;
  SELECT * FROM sqlite_master;
