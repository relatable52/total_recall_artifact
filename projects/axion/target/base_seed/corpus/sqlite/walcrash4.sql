
  PRAGMA autovacuum = 0;
  PRAGMA page_size = 1024;
  PRAGMA journal_mode = wal;
  PRAGMA main.synchronous = full;
 
      SELECT count(*) FROM t1;
      PRAGMA integrity_check;
    