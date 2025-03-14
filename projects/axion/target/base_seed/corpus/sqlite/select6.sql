
  CREATE TABLE t(i,j,k);
  CREATE TABLE j(l,m);
  CREATE TABLE k(o);

  SELECT * FROM (SELECT * FROM t), j;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(w INT, x INT);
  INSERT INTO t1(w,x)
   VALUES(1,10),(2,20),(3,30),
         (2,21),(3,31),
         (3,32);
  CREATE INDEX t1wx ON t1(w,x);

  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(w INT, y VARCHAR(8));
  INSERT INTO t2(w,y) VALUES(1,'one'),(2,'two'),(3,'three'),(4,'four');
  CREATE INDEX t2wy ON t2(w,y);

  SELECT cnt, xyz, (SELECT y FROM t2 WHERE w=cnt), '|'
    FROM (SELECT count(*) AS cnt, w AS xyz FROM t1 GROUP BY 2)
   ORDER BY cnt, xyz;

  SELECT cnt, xyz, lower((SELECT y FROM t2 WHERE w=cnt)), '|'
    FROM (SELECT count(*) AS cnt, w AS xyz FROM t1 GROUP BY 2)
   ORDER BY cnt, xyz;

  SELECT cnt, xyz, '|'
    FROM (SELECT count(*) AS cnt, w AS xyz FROM t1 GROUP BY 2)
   WHERE (SELECT y FROM t2 WHERE w=cnt)!='two'
   ORDER BY cnt, xyz;

  SELECT cnt, xyz, '|'
    FROM (SELECT count(*) AS cnt, w AS xyz FROM t1 GROUP BY 2)
   ORDER BY lower((SELECT y FROM t2 WHERE w=cnt));

  SELECT cnt, xyz, 
         CASE WHEN (SELECT y FROM t2 WHERE w=cnt)=='two'
              THEN 'aaa' ELSE 'bbb'
          END, '|'
    FROM (SELECT count(*) AS cnt, w AS xyz FROM t1 GROUP BY 2)
   ORDER BY +cnt;

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(x);
  CREATE TABLE t2(y, z);
  SELECT ( SELECT y FROM t2 WHERE z = cnt )
    FROM ( SELECT count(*) AS cnt FROM t1 );

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);
  CREATE TABLE t2(b);
  INSERT INTO t2 VALUES(3);
  SELECT * FROM (
    SELECT * FROM (SELECT * FROM t1 LIMIT 1)
    UNION ALL
    SELECT * from t2);
