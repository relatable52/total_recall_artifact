
    WITH s(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i < $nBig
    )
    INSERT INTO t1 SELECT i FROM s;
  
    INSERT INTO t1 VALUES(-1)
  
    SELECT count(*) FROM t1
  
    DELETE FROM t1
  