
  BEGIN;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(202));
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     2
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     4
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --     8
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --    64
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --   128
    INSERT INTO t1 SELECT randomblob(202) FROM t1;     --   256
  COMMIT;

  BEGIN;
    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(t,u,v,w,x,y,z);
    INSERT INTO t1 VALUES(
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30)
    );
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 2
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 4
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 8
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 16
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 32
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 64
    INSERT INTO t1 SELECT 
      randomblob(30), randomblob(30), randomblob(30), randomblob(30),
      randomblob(30), randomblob(30), randomblob(30) FROM t1;         -- 128
  COMMIT;

  BEGIN;
    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(11000));
    INSERT INTO t1 SELECT randomblob(11001) FROM t1;     --     2
    INSERT INTO t1 SELECT randomblob(11002) FROM t1;     --     4
    INSERT INTO t1 SELECT randomblob(11003) FROM t1;     --     8
    INSERT INTO t1 SELECT randomblob(11004) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(11005) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(11006) FROM t1;     --    64
    INSERT INTO t1 SELECT randomblob(11007) FROM t1;     --   128
    INSERT INTO t1 SELECT randomblob(11008) FROM t1;     --   256
    INSERT INTO t1 SELECT randomblob(11009) FROM t1;     --   512
  COMMIT;

  BEGIN;
    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(11000));
    INSERT INTO t1 SELECT randomblob(11001) FROM t1;     --     2
    INSERT INTO t1 SELECT randomblob(11002) FROM t1;     --     4
    INSERT INTO t1 SELECT randomblob(11003) FROM t1;     --     8
    INSERT INTO t1 SELECT randomblob(11004) FROM t1;     --    16
    INSERT INTO t1 SELECT randomblob(11005) FROM t1;     --    32
    INSERT INTO t1 SELECT randomblob(11005) FROM t1;     --    64
  COMMIT;
