 INSERT INTO t2 VALUES('a b c') 
    SELECT offsets(t2) FROM t2 WHERE t2 MATCH 'a AND d OR b' ORDER BY docid ASC
  
    SELECT snippet(t2,'[',']') FROM t2 WHERE t2 MATCH 'a AND d OR b' 
    ORDER BY docid ASC
   INSERT INTO t2 VALUES('a c d') 
    SELECT offsets(t2) FROM t2 WHERE t2 MATCH 'a AND d OR b' ORDER BY docid ASC
  
    SELECT snippet(t2,'[',']') FROM t2 WHERE t2 MATCH 'a AND d OR b'
    ORDER BY docid ASC
   INSERT INTO t3 VALUES('a c d') 
    SELECT offsets(t3) FROM t3 WHERE t3 MATCH 'a AND d OR b' ORDER BY docid DESC
  
    SELECT snippet(t3,'[',']') FROM t3 WHERE t3 MATCH 'a AND d OR b'
      ORDER BY docid DESC
   
    INSERT INTO t3 VALUES('a b c');
  
    SELECT offsets(t3) FROM t3 WHERE t3 MATCH 'a AND d OR b' ORDER BY docid DESC
  
    SELECT snippet(t3,'[',']') FROM t3 WHERE t3 MATCH 'a AND d OR b'
      ORDER BY docid DESC
  