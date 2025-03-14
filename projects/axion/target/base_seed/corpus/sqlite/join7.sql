
    SELECT b, d FROM t1 FULL OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT a, c FROM t1 FULL OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c
     WHERE b=c
     ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c
     WHERE b>0
     ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c
     WHERE b>0 OR b IS NULL
     ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c AND b>3 AND c>4
     ORDER BY coalesce(b,c,0);
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c AND b>3 WHERE c>4
     ORDER BY coalesce(b,c,0);
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c WHERE b>3 AND c>4
     ORDER BY coalesce(b,c,0);
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c WHERE b>3 OR c>4
     ORDER BY coalesce(b,c,0);
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c AND (b>3 OR c>4)
     ORDER BY coalesce(b,c,0);
  
    SELECT * FROM t1 RIGHT OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 LEFT OUTER JOIN t1 ON b=c ORDER BY +b;
  
    SELECT * FROM dual JOIN t1 ON true RIGHT OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT t1.*, t2.* 
      FROM t2 LEFT JOIN (dual JOIN t1 ON true) ON b=c ORDER BY +b;
  
    SELECT * FROM dual CROSS JOIN t1 RIGHT OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT dual.*, t1.*, t2.*
      FROM t1 CROSS JOIN dual RIGHT OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT * FROM t1 LEFT OUTER JOIN t2 ON b=c ORDER BY +b;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c AND a=1 ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c AND a=1 ORDER BY +b;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c WHERE a=1 ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c WHERE a=1 ORDER BY +b;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c
     WHERE a=1 OR a IS NULL ORDER BY +b;
  
    SELECT t1.*, t2.* FROM t2 FULL OUTER JOIN t1 ON b=c
     WHERE a=1 OR a IS NULL ORDER BY +b;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c WHERE a IS NULL ORDER BY +d;
  
    SELECT * FROM t1 FULL OUTER JOIN t2 ON b=c AND d<=0 ORDER BY +b, +d;
  
    SELECT a, b, c, d
      FROM t2 FULL OUTER JOIN t1 ON b=c AND d<=0 ORDER BY +b, +d;
  
    SELECT a, b, c, d
      FROM t2 FULL OUTER JOIN t1 ON b=c AND d<=0
     ORDER BY +b, +d LIMIT 2 OFFSET 2
  