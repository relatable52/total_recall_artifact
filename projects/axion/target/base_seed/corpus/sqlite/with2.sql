
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);

  WITH x1 AS (SELECT * FROM t1)
  SELECT sum(a) FROM x1;

  WITH x1 AS (SELECT * FROM t1)
  SELECT (SELECT sum(a) FROM x1);

  WITH x1 AS (SELECT * FROM t1)
  SELECT (SELECT sum(a) FROM x1);

  CREATE TABLE t2(i);
  INSERT INTO t2 VALUES(2);
  INSERT INTO t2 VALUES(3);
  INSERT INTO t2 VALUES(5);

  WITH x1   AS (SELECT i FROM t2),
       i(a) AS (
         SELECT min(i)-1 FROM x1 UNION SELECT a+1 FROM i WHERE a<10
       )
  SELECT a FROM i WHERE a NOT IN x1

  WITH x1 AS (SELECT a FROM t1),
       x2 AS (SELECT i FROM t2),
       x3 AS (SELECT * FROM x1, x2 WHERE x1.a IN x2 AND x2.i IN x1)
  SELECT * FROM x3 

  CREATE TABLE t3 AS SELECT 3 AS x;
  CREATE TABLE t4 AS SELECT 4 AS x;

  WITH x1 AS (SELECT * FROM t3),
       x2 AS (
         WITH t3 AS (SELECT * FROM t4)
         SELECT * FROM x1
       )
  SELECT * FROM x2;

  WITH x2 AS (
         WITH t3 AS (SELECT * FROM t4)
         SELECT * FROM t3
       )
  SELECT * FROM x2;

  WITH x2 AS (
         WITH t3 AS (SELECT * FROM t4)
         SELECT * FROM main.t3
       )
  SELECT * FROM x2;

  WITH x1 AS (SELECT * FROM t1)
  SELECT (SELECT sum(a) FROM x1), (SELECT max(a) FROM x1);

  WITH x1 AS (SELECT * FROM t1)
  SELECT (SELECT sum(a) FROM x1), (SELECT max(a) FROM x1), a FROM x1;

  WITH 
  i(x) AS ( 
    WITH 
    j(x) AS ( SELECT * FROM i ), 
    i(x) AS ( SELECT * FROM t1 )
    SELECT * FROM j
  )
  SELECT * FROM i;

  WITH r(i) AS (
    VALUES('.')
    UNION ALL
    SELECT i || '.' FROM r, (
      SELECT x FROM x INTERSECT SELECT y FROM y
    ) WHERE length(i) < 10
  ),
  x(x) AS ( VALUES(1) UNION ALL VALUES(2) UNION ALL VALUES(3) ),
  y(y) AS ( VALUES(2) UNION ALL VALUES(4) UNION ALL VALUES(6) )

  SELECT * FROM r;

  WITH r(i) AS (
    VALUES('.')
    UNION ALL
    SELECT i || '.' FROM r, ( SELECT x FROM x WHERE x=2 ) WHERE length(i) < 10
  ),
  x(x) AS ( VALUES(1) UNION ALL VALUES(2) UNION ALL VALUES(3) )

  SELECT * FROM r ORDER BY length(i) DESC;

  WITH 
  t4(x) AS ( 
    VALUES(4)
    UNION ALL 
    SELECT x+1 FROM t4 WHERE x<10
  )
  SELECT * FROM t4;

  WITH 
  t4(x) AS ( 
    VALUES(4)
    UNION ALL 
    SELECT x+1 FROM main.t4 WHERE x<10
  )
  SELECT * FROM t4;

  WITH i(x) AS (
    VALUES($min) UNION ALL SELECT x+1 FROM i WHERE x < $max
  )
  SELECT * FROM i;

  WITH i(x) AS (
    VALUES($min) UNION ALL SELECT x+1 FROM i WHERE x < $max
  )
  SELECT x FROM i JOIN i AS j USING (x);

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);

  CREATE TABLE t5(x INTEGER);
  CREATE TABLE t6(y INTEGER);

  WITH s(x) AS ( VALUES(7) UNION ALL SELECT x+7 FROM s WHERE x<49 )
  INSERT INTO t5 
  SELECT * FROM s;

  INSERT INTO t6 
  WITH s(x) AS ( VALUES(2) UNION ALL SELECT x+2 FROM s WHERE x<49 )
  SELECT * FROM s;

  SELECT * FROM t6 WHERE y IN (SELECT x FROM t5)

  WITH ss AS (SELECT x FROM t5)
  SELECT * FROM t6 WHERE y IN (SELECT x FROM ss)

  WITH ss(x) AS ( VALUES(7) UNION ALL SELECT x+7 FROM ss WHERE x<49 )
  SELECT * FROM t6 WHERE y IN (SELECT x FROM ss)

  SELECT * FROM t6 WHERE y IN (
    WITH ss(x) AS ( VALUES(7) UNION ALL SELECT x+7 FROM ss WHERE x<49 )
    SELECT x FROM ss
  )

  CREATE TABLE t7(y);
  INSERT INTO t7 VALUES(NULL);
  CREATE VIEW v AS SELECT * FROM t7 ORDER BY y;

  WITH q(a) AS (
    SELECT 1
    UNION 
    SELECT a+1 FROM q, v WHERE a<5
  )
  SELECT * FROM q;

  WITH q(a) AS (
    SELECT 1
    UNION ALL
    SELECT a+1 FROM q, v WHERE a<5
  )
  SELECT * FROM q;

  WITH xyz(a) AS (
    WITH abc AS ( SELECT 1234 ) SELECT * FROM abc
  )
  SELECT * FROM xyz AS one, xyz AS two, (
    SELECT * FROM xyz UNION ALL SELECT * FROM xyz
  );

  WITH
    cst(rsx, rsy) AS  (
      SELECT 100, 100
    ),
    cst2(minx, maxx, stepx, miny, maxy, stepy, qualitativex, qualitativey) AS (
      SELECT NULL, NULL, NULL, NULL, NULL, NULL, 0, 0
    ),
    ds0(m, n, x, y, x2, y2, title, size, mark, label, markmode) AS (
      SELECT 1, 2, 3, 4, 5, 6, 7 , 8, 9, 10, 11
    ),
    ds(m, n, x, y, x2, y2, title, size, mark, label, markmode) AS (
      SELECT m, n, x,
        y, x2,
        y2,
        title, size, mark, label, markmode
      FROM ds0
      WINDOW w AS (PARTITION BY m, x ORDER BY n)
    ),
    d(m, n, x, y, x2, y2, labelx,labely,title,size,mark,label,markmode) AS (
      SELECT m, n, x, y,  x2, y2, x, y, title, size, mark, label, markmode
      FROM ds, cst2
    ),
    ylabels(y, label) AS (
      SELECT y, MIN(labely) FROM d GROUP BY y
    ),
    yaxis(maxy, miny, stepy , minstepy) AS (
      WITH
        xt0(minx, maxx) AS (
          SELECT  coalesce(miny, min(min(y2),
                  min(y))), coalesce(maxy, max(max(y2),
                  max(y))) + qualitativey
           FROM d, cst2
        ),
        xt1(mx, mn) AS (SELECT maxx, minx FROM xt0),
        xt2(mx, mn, step) AS (SELECT mx, mn, (mx-mn)  FROM xt1),
        
        xt3(mx, mn, ms) AS (
          SELECT mx, mn, first_value(rs) OVER (order by x desc) AS ms
            FROM (SELECT mx, mn, step, f,(mx-mn) as rng,
                         1.0*step/f as rs, 1.0*(mx-mn)/(step/f) AS x
                    FROM xt2, (SELECT 1 AS f UNION ALL SELECT 2
                                UNION ALL SELECT 4
                                UNION ALL SELECT 5)) AS src
                   WHERE x < 10 limit 1),
        xt4(minstepy) AS (
          SELECT MIN(abs(y2-y)) FROM d WHERE y2 != y
        )
      SELECT (mx/ms)*ms, (mn/ms)*ms, coalesce(stepy, ms),
                     coalesce(minstepy, ms, stepy)  FROM xt3, cst2,xt4
    ),
    distinct_mark_n_m(mark, ze, zem, title) AS (
      SELECT DISTINCT mark, n AS ze, m AS zem, title FROM ds0
    ),
    facet0(m, mi, title, radial) AS (
      SELECT md, row_number() OVER () - 1, title, 'radial'
                      IN (SELECT mark FROM distinct_mark_n_m WHERE zem = md)
      FROM (SELECT DISTINCT zem AS md, title AS title
                       FROM distinct_mark_n_m ORDER BY 2, 1)
    ),
    facet(m, mi, xorigin, yorigin, title, radial) AS (
      SELECT m, mi,
        rsx * 1.2 * IFNULL(CASE WHEN (
          0
        ) > 0 THEN mi / (
          0
        ) ELSE mi % (
          2
        )  END, mi),
        rsy  * 1.2 * IFNULL(CASE WHEN (
          2
        ) > 0 THEN mi / (
          2
        ) ELSE mi / (
          0
        )  END, 0),
        title, radial FROM facet0, cst
    ),
    radygrid(m, mi, tty, wty, ttx, ttx2, xorigin, yorigin) AS (
      SELECT m, mi,  rsy / 2 / ((maxy-miny)/stepy) * (value-1) AS tty,
             coalesce(NULL, miny + stepy * (value-1)) AS wty,
             xorigin, xorigin+rsx, xorigin + rsx / 2,
             yorigin + rsy / 2
        FROM generate_series(1), yaxis, cst,
             facet LEFT JOIN ylabels ON ylabels.y = (miny + (value-1) * stepy)
       WHERE radial AND stop = 1+1.0*(maxy-miny)/stepy
    ),
    ypos(m, mi, pcx, pcy, radial) AS (
      SELECT m, mi, xorigin, yorigin + CASE
        WHEN 0 BETWEEN miny AND maxy THEN
          rsy - (0 - miny) * rsy / (maxy-miny)
        WHEN 0 >= maxy THEN 0
        ELSE  rsy
      END, radial FROM yaxis, cst, facet WHERE NOT radial
      UNION ALL
      SELECT m, mi, xorigin + rsx / 2, yorigin + (CASE
        WHEN 0 BETWEEN miny AND maxy THEN
          rsy - (0 - miny) * rsy / 2 / (maxy-miny)
        WHEN 0 >= maxy THEN 0
        ELSE  rsy
      END ) / 2, radial FROM yaxis, cst, facet WHERE radial
    )
  SELECT * FROM radygrid , ypos;

  SELECT 1 AS c WHERE (
    SELECT (
      WITH t1(a) AS (VALUES( c ))
      SELECT ( SELECT t1a.a FROM t1 AS t1a, t1 AS t1x )
      FROM t1 AS xyz GROUP BY 1
    )
  )

    CREATE TABLE t1(a);
    CREATE VIEW v2(c) AS
        WITH x AS (
          WITH y AS (
             WITH z AS(SELECT * FROM t1)
             SELECT * FROM v2
          ) SELECT a
        ) SELECT * from t1;
    ALTER TABLE t1 RENAME COLUMN a TO b;
    SELECT sql FROM sqlite_schema WHERE name='t1';
  
    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(1),('hello'),(4.25),(NULL),(x'3c626c6f623e');
    CREATE VIEW v2(c) AS WITH x AS (WITH y AS (WITH z AS(SELECT * FROM t1) SELECT * FROM v2) SELECT a) SELECT * from t1;
    CREATE VIEW v3(c) AS WITH x AS (WITH y AS (WITH z AS(SELECT * FROM v2) SELECT * FROM v3) SELECT a) SELECT * from t1;
    ALTER TABLE t1 RENAME TO t1x;
    SELECT quote(c) FROM v3;
  
  WITH
    t1(x) AS (SELECT 111),
    t2(y) AS (SELECT 222),
    t3(z) AS (SELECT * FROM t2 WHERE false UNION ALL SELECT * FROM t2)
  SELECT * FROM t1, t3;
