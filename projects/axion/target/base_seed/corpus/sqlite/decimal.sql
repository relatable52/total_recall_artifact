
  SELECT decimal(1);

  SELECT decimal(1.0);

  SELECT decimal(0001.0);

  SELECT decimal(+0001.0);

  SELECT decimal(-0001.0);

  SELECT decimal(1.0e72);

  SELECT decimal(1.0e-72);

  SELECT decimal(-123e-4);

  SELECT decimal(+123e+4);

  CREATE TABLE t1(seq INTEGER PRIMARY KEY, val TEXT);
  INSERT INTO t1 VALUES
    (1, '-9999e99'),
    (2, '-9998.000e+99'),
    (3, '-9999.0'),
    (4, '-1'),
    (5, '-9999e-20'),
    (6, '0'),
    (7, '1e-30'),
    (8, '1e-29'),
    (9, '1'),
    (10,'1.00000000000000001'),
    (11,'+1.00001'),
    (12,'99e+99');
  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq<b.seq
     AND decimal_cmp(a.val,b.val)>=0;

  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq<>b.seq
     AND decimal_cmp(a.val,b.val)==0;

  SELECT *, '|'
    FROM t1 AS a, t1 AS b
   WHERE a.seq>b.seq
     AND decimal_cmp(a.val,b.val)<=0;

  SELECT seq FROM t1 ORDER BY val COLLATE decimal;

  SELECT seq FROM t1 ORDER BY val COLLATE decimal DESC;

  CREATE TABLE t3(seq INTEGER PRIMARY KEY, val TEXT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<10)
    INSERT INTO t3(seq, val) SELECT x, x FROM c;
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<5)
    INSERT INTO t3(seq, val) SELECT x+10, x*1000 FROM c;
  SELECT decimal(val) FROM t3 ORDER BY seq;

  SELECT decimal_add(val,'0.5') FROM t3 WHERE seq>5 ORDER BY seq

  SELECT decimal_add(val,'-10') FROM t3 ORDER BY seq;

  SELECT decimal_sum(val) FROM t3;

  SELECT decimal_sum(decimal_add(val,val||'e+10')) FROM t3;

  SELECT decimal_sum(decimal_add(val||'e+20',decimal_add(val,val||'e-20')))
    FROM t3;

  WITH RECURSIVE c(x,y,z) AS (
    VALUES(0,'1','1')
    UNION ALL
    SELECT x+1, decimal_mul(y,'2'), decimal_mul(z,'0.5')
      FROM c WHERE x<32
  )
  SELECT count(*) FROM c WHERE decimal_mul(y,z)='1';

  SELECT decimal_mul('1234.00','2.00');

  SELECT decimal_mul('1234.00','2.0000');

  SELECT decimal_mul('1234.0000','2.000');

  SELECT decimal_mul('1234.0000','2');

  CREATE TABLE pow2(x INTEGER PRIMARY KEY, v TEXT);
  WITH RECURSIVE c(x,v) AS (
    VALUES(0,'1')
    UNION ALL
    SELECT x+1, decimal_mul(v,'2') FROM c WHERE x+1<=971
  ) INSERT INTO pow2(x,v) SELECT x, v FROM c;
  WITH RECURSIVE c(x,v) AS (
    VALUES(-1,'0.5')
    UNION ALL
    SELECT x-1, decimal_mul(v,'0.5') FROM c WHERE x-1>=-1075
  ) INSERT INTO pow2(x,v) SELECT x, v FROM c;

  WITH c(n) AS (SELECT ieee754_from_blob(x'0000000000000001'))
SELECT decimal_mul(ieee754_mantissa(c.n),pow2.v)
  FROM pow2, c WHERE pow2.x=ieee754_exponent(c.n);

  WITH c(n) AS (SELECT ieee754_from_blob(x'7fefffffffffffff'))
SELECT decimal_mul(ieee754_mantissa(c.n),pow2.v)
  FROM pow2, c WHERE pow2.x=ieee754_exponent(c.n);

  SELECT ieee754(ieee754_from_blob(x'0000000000000001'));

  SELECT ieee754(ieee754_from_blob(x'7fefffffffffffff'));

  SELECT printf('%.8e',ieee754_from_blob(x'0000000000000001'));

  SELECT printf('%.8e',ieee754_from_blob(x'ffefffffffffffff'));
