
      CREATE TABLE t1(a, b, UNIQUE(a, b));
      INSERT INTO t1 VALUES(randomblob(1000), randomblob(1000));
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
      INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
    
      SELECT count(*) FROM t1;
      PRAGMA integrity_check;
    