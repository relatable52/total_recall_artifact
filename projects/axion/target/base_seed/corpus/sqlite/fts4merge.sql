 
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level 
   INSERT INTO t1(t1) VALUES('merge=1')  
      SELECT docid FROM t1 WHERE t1 MATCH 'zero one two three'
     
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level 
   INSERT INTO t1(t1) VALUES('merge=1,4')  
      SELECT docid FROM t1 WHERE t1 MATCH 'zero one two three'
     
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level 
   
    SELECT level, group_concat(idx, ' ') FROM t2_segdir GROUP BY level 
   
    INSERT INTO t2(t2) VALUES('merge=1000000,2');
    SELECT level, group_concat(idx, ' ') FROM t2_segdir GROUP BY level 
  
      INSERT INTO t4(t4) VALUES('merge=1,16');
      SELECT level, group_concat(idx, ' ') FROM t4_segdir GROUP BY level;
    
    SELECT quote(value) FROM t4_stat WHERE rowid=1
  
    DELETE FROM t4_stat WHERE rowid=1;
    INSERT INTO t4(t4) VALUES('merge=1,12');
    SELECT level, group_concat(idx, ' ') FROM t4_segdir GROUP BY level;
  
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
  
    INSERT INTO t1(t1) VALUES('merge=1,5');
    INSERT INTO t1(t1) VALUES('merge=1,5');
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
  X'010F'X'010F'
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
    SELECT quote(value) from t1_stat WHERE rowid=1;
  
    INSERT INTO t1(t1) VALUES('merge=1,6');
    INSERT INTO t1(t1) VALUES('merge=1,6');
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
    SELECT quote(value) from t1_stat WHERE rowid=1;
  
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
    SELECT quote(value) from t1_stat WHERE rowid=1;
  
    INSERT INTO t1(t1) VALUES('merge=1,6');
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level;
    SELECT quote(value) from t1_stat WHERE rowid=1;
  
    SELECT level, group_concat(idx, ' ') FROM t1_segdir GROUP BY level
  
  CREATE VIRTUAL TABLE t1 USING fts4(a, order=DESC);
  INSERT INTO t1(a) VALUES (0);
  INSERT INTO t1(a) VALUES (0);
  UPDATE t1 SET a = NULL;

  INSERT INTO t1(t1) VALUES('merge=1,4');
