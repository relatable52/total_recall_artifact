wal
    PRAGMA wal_autocheckpoint = 10;
    CREATE TABLE t1(a, b);                -- 2 wal syncs
    INSERT INTO t1 VALUES(1, 2);          -- 2 wal sync
    PRAGMA wal_checkpoint;                -- 1 wal sync, 1 db sync
    BEGIN;
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 6);
    COMMIT;                               -- 2 wal sync
    PRAGMA wal_checkpoint;                -- 1 wal sync, 1 db sync
  