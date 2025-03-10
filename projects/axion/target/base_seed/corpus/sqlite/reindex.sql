
      CREATE TABLE t0 (
        c0 INTEGER PRIMARY KEY DESC, 
        c1 UNIQUE DEFAULT NULL
      ) %without_rowid% ;
      INSERT INTO t0(c0) VALUES (1), (2), (3), (4), (5);
      SELECT c0 FROM t0 WHERE c1 IS NULL ORDER BY 1;
    
      REINDEX;
    
      SELECT c0 FROM t0 WHERE c1 IS NULL ORDER BY 1;
    
      SELECT c0 FROM t0 WHERE c1 IS NULL AND c0 IN (1,2,3,4,5);
    
      PRAGMA integrity_check;
    