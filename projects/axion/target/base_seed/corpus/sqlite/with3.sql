
 WITH
  x1 AS (SELECT 10),
  x2 AS (SELECT 11),
  x3 AS (
    SELECT * FROM x1 UNION ALL SELECT * FROM x2
  ),
  x4 AS (
    WITH
    x1 AS (SELECT 12),
    x2 AS (SELECT 13)
    SELECT * FROM x3
  )
  SELECT * FROM x4;


  CREATE TABLE t1(x);
  WITH
    x1(a) AS (values(100))
  INSERT INTO t1(x)
    SELECT * FROM (WITH x2(y) AS (SELECT * FROM x1) SELECT y+a FROM x1, x2);
  SELECT * FROM t1;

    CREATE TABLE y1(a, b);
    CREATE INDEX y1a ON y1(a);

    WITH cnt(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM cnt LIMIT 1000)
      INSERT INTO y1 SELECT i%10, i FROM cnt;
    ANALYZE;

  
  CREATE TABLE w1(pk INTEGER PRIMARY KEY, x INTEGER);
  CREATE TABLE w2(pk INTEGER PRIMARY KEY);

  WITH t5(t5col1) AS (
    SELECT (
      WITH t3(t3col1) AS (
        WITH t2 AS (
          WITH t1 AS (SELECT 1 AS c1 GROUP BY 1) 
          SELECT a.c1 FROM t1 AS a, t1 AS b
          WHERE anoncol1 = 1
        )
        SELECT (SELECT 1 FROM t2) FROM t2
      ) 
      SELECT t3col1 FROM t3 WHERE t3col1
    ) FROM (SELECT 1 AS anoncol1)
  )
  SELECT t5col1, t5col1 FROM t5

  SELECT EXISTS (
    WITH RECURSIVE Table0 AS (
      WITH RECURSIVE Table0(Col0) AS (SELECT ALL 1  ) 
      SELECT ALL (
        WITH RECURSIVE Table0 AS (
          WITH RECURSIVE Table0 AS (
            WITH RECURSIVE Table0 AS (SELECT DISTINCT 1  GROUP BY 1  ) 
            SELECT DISTINCT * FROM Table0 NATURAL INNER JOIN Table0
            WHERE Col0 = 1  
          )
          SELECT ALL (SELECT DISTINCT * FROM Table0) FROM Table0 WHERE Col0 = 1
        ) 
        SELECT ALL * FROM Table0  NATURAL INNER JOIN  Table0      
      ) FROM Table0 ) 
      SELECT DISTINCT * FROM Table0  NATURAL INNER JOIN  Table0      
    ); 

  SELECT (
    WITH t1(a) AS (VALUES(1))
    SELECT (
      WITH t2(b) AS (
        WITH t3(c) AS (
          WITH t4(d) AS (VALUES('elvis'))
          SELECT t4a.d FROM t4 AS t4a JOIN t4 AS t4b LEFT JOIN t4 AS t4c
        )
        SELECT c FROM t3 WHERE a = 1
      )
      SELECT t2a.b FROM t2 AS t2a JOIN t2 AS t2x
    )
    FROM t1 GROUP BY 1
  )
  GROUP BY 1;

  WITH RECURSIVE c(x) AS (VALUES(0) UNION ALL SELECT x+1 FROM c WHERE x<1)
  SELECT x1.x||x2.x||x3.x||x4.x FROM c AS x1, c AS x2, c AS x3, c AS x4
  ORDER BY 1;
