
    PRAGMA page_size = 4096;
    CREATE TABLE t1(a, b);
    CREATE TABLE t2(a, b);
    INSERT INTO t1 VALUES(1, 2), (3, 4);
    PRAGMA journal_mode = wal;
  
    PRAGMA mmap_size = 1000000;
  
    SELECT * FROM t1;
  