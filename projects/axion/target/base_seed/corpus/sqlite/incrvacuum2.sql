
    PRAGMA page_size = 512;
    PRAGMA auto_vacuum = 2;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(400));
    INSERT INTO t1 SELECT * FROM t1;            --    2
    INSERT INTO t1 SELECT * FROM t1;            --    4
    INSERT INTO t1 SELECT * FROM t1;            --    8
    INSERT INTO t1 SELECT * FROM t1;            --   16
    INSERT INTO t1 SELECT * FROM t1;            --   32
    INSERT INTO t1 SELECT * FROM t1;            --  128
    INSERT INTO t1 SELECT * FROM t1;            --  256
    INSERT INTO t1 SELECT * FROM t1;            --  512
    INSERT INTO t1 SELECT * FROM t1;            -- 1024
    INSERT INTO t1 SELECT * FROM t1;            -- 2048
    INSERT INTO t1 SELECT * FROM t1;            -- 4096
    INSERT INTO t1 SELECT * FROM t1;            -- 8192
    DELETE FROM t1 WHERE oid>512;
    DELETE FROM t1;
  