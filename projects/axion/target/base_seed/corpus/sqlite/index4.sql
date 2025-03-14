
  BEGIN;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(102));
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --     2
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --     4
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --     8
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --    64
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --   128
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --   256
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --   512
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --  1024
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --  2048
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --  4096
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     --  8192
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     -- 16384
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     -- 32768
    INSERT INTO t1 SELECT randomblob(102) FROM t1;     -- 65536
  COMMIT;

  CREATE INDEX i1 ON t1(x);

  PRAGMA integrity_check 

    PRAGMA cache_size = 10;
    CREATE INDEX i2 ON t1(x);
  
    PRAGMA integrity_check 
  
  BEGIN;
    DROP TABLE t1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES('a');
    INSERT INTO t1 VALUES('b');
    INSERT INTO t1 VALUES('c');
    INSERT INTO t1 VALUES('d');
    INSERT INTO t1 VALUES('e');
    INSERT INTO t1 VALUES('f');
    INSERT INTO t1 VALUES('g');
    INSERT INTO t1 VALUES(NULL);
    INSERT INTO t1 SELECT randomblob(1202) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(2202) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(3202) FROM t1;     --    64
    INSERT INTO t1 SELECT randomblob(4202) FROM t1;     --   128
    INSERT INTO t1 SELECT randomblob(5202) FROM t1;     --   256
  COMMIT;
  CREATE INDEX i1 ON t1(x); 
  PRAGMA integrity_check

  BEGIN;
    DROP TABLE t1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES('a');
  COMMIT;
  CREATE INDEX i1 ON t1(x); 
  PRAGMA integrity_check

  BEGIN;
    DROP TABLE t1;
    CREATE TABLE t1(x);
  COMMIT;
  CREATE INDEX i1 ON t1(x); 
  PRAGMA integrity_check

  BEGIN;
    CREATE TABLE t2(x);
    INSERT INTO t2 VALUES(14);
    INSERT INTO t2 VALUES(35);
    INSERT INTO t2 VALUES(15);
    INSERT INTO t2 VALUES(35);
    INSERT INTO t2 VALUES(16);
  COMMIT;
