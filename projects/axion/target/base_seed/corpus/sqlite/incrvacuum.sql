
    PRAGMA auto_vacuum = 2;
    CREATE TABLE t3(a);
    INSERT INTO t3 VALUES(1), (2), (3), (4);
  
    CREATE TABLE t2(x);
    INSERT INTO t2 VALUES( randomblob(1000) );
    INSERT INTO t2 VALUES( randomblob(1000) );
    INSERT INTO t2 VALUES( randomblob(1000) );
    INSERT INTO t2 VALUES( randomblob(1000) );
    INSERT INTO t2 VALUES( randomblob(1000) );
    INSERT INTO t2 VALUES( randomblob(1000) );
  
    PRAGMA mmap_size = 1000000;
    BEGIN;
    DELETE FROM t2;
    PRAGMA incremental_vacuum = 1000;
  