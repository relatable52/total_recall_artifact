
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           INNER JOIN t2 USING(c,d)
           INNER JOIN t3 USING(a,b,f)
           INNER JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           LEFT JOIN t2 USING(c,d)
           LEFT JOIN t3 USING(a,b,f)
           LEFT JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           LEFT JOIN t2 USING(c,d)
           RIGHT JOIN t3 USING(a,b,f)
           LEFT JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           RIGHT JOIN t2 USING(c,d)
           LEFT JOIN t3 USING(a,b,f)
           RIGHT JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           FULL JOIN t2 USING(c,d)
           LEFT JOIN t3 USING(a,b,f)
           RIGHT JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           RIGHT JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           RIGHT JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           RIGHT JOIN t2 USING(c,d)
           LEFT JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           LEFT JOIN t2 USING(c,d)
           RIGHT JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           FULL JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e,t1.a
      FROM t1
           FULL JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
     WHERE t1.a!=0
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e,t3.a
      FROM t1
           FULL JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
     WHERE t3.a!=0
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e,t4.a
      FROM t1
           FULL JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
     WHERE t4.a!=0
    ORDER BY 1 nulls first, 3 nulls first;
  
    SELECT a,b,c,d,t2.e,f,t3.e
      FROM t1
           FULL JOIN t2 USING(c,d)
           FULL JOIN t3 USING(a,b,f)
           FULL JOIN t4 USING(a,c,d,f)
     WHERE t2.e!=0
    ORDER BY 1 nulls first, 3 nulls first;
  