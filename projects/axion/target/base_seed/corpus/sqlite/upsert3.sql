
  CREATE TABLE t1(k int, v text);
  CREATE UNIQUE INDEX x1 ON t1(k, v);

  INSERT INTO t1 VALUES(0, 'abcdefghij')
      ON CONFLICT(k,v) DO NOTHING;
  SELECT * FROM t1;

  INSERT INTO t1 VALUES(0, 'abcdefghij')
      ON CONFLICT(v,k) DO NOTHING;
  SELECT * FROM t1;

  CREATE TABLE excluded(a INT, b INT, c INT DEFAULT 0);
  CREATE UNIQUE INDEX excludedab ON excluded(a,b);
  INSERT INTO excluded(a,b) VALUES(1,2),(1,2),(3,4),(1,2),(5,6),(3,4)
    ON CONFLICT(b,a) DO UPDATE SET c=excluded.c+1;
  SELECT *, 'x' FROM excluded ORDER BY a;

  INSERT INTO excluded AS base(a,b,c) VALUES(1,2,8),(1,2,3)
    ON CONFLICT(b,a) DO UPDATE SET c=excluded.c+1 WHERE base.c<excluded.c;
  SELECT *, 'x' FROM excluded ORDER BY a;
