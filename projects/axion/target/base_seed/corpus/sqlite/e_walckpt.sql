
      CREATE TABLE t1(a, b);
      CREATE TABLE t2(a, b);
      PRAGMA journal_mode = wal;
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 6);
    