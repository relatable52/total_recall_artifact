
  SELECT intreal(5);

  SELECT intreal(5)=5, 6=intreal(6);

  SELECT intreal(7)=7.0, 8.0=intreal(8);

  SELECT typeof(intreal(9));

  SELECT 'a'||intreal(11)||'z';

  SELECT max(1.0,intreal(2),3.0), max(1,intreal(2),3);

  SELECT max(1.0,intreal(4),3.0), max(1,intreal(4),3);

  SELECT max(1.0,intreal(2),intreal(3),4.0),
         max(1,intreal(2),intreal(3),4);

  SELECT max(1.0,intreal(5),intreal(3),4.0),
         max(1,intreal(5),intreal(3),4);

  CREATE TABLE t2(a REAL);
  INSERT INTO t2 VALUES( 836627109860825358 );
  SELECT substr(a,1,4) FROM t2 WHERE a = CAST(836627109860825358 AS REAL);

  CREATE INDEX i2 ON t2(a);
  SELECT substr(a,1,4) FROM t2 WHERE a = CAST(836627109860825358 AS REAL);

  CREATE TABLE t0 (c0);
  CREATE TABLE t1 (c1 REAL);
  INSERT INTO t1(c1) VALUES (8366271098608253588);
  INSERT INTO t0(c0) VALUES ('a');

  SELECT * FROM t1 WHERE (t1.c1 = CAST(8366271098608253588 AS REAL));

  SELECT * FROM t0, t1 WHERE (t1.c1 = CAST(8366271098608253588 AS REAL));

  SELECT * FROM t0, t1 
  WHERE (
        t1.c1 >= CAST(8366271098608253588 AS REAL) 
    AND t1.c1 <= CAST(8366271098608253588 AS REAL)
  );

  CREATE TABLE t0 (c0 REAL, c1);
  CREATE UNIQUE INDEX i0 ON t0(c1, 0 | c0);
  INSERT INTO t0(c0) VALUES (4750228396194493326), (0);
  UPDATE OR REPLACE t0 SET c0 = 'a', c1 = '';
  SELECT * FROM t0 ORDER BY t0.c1;
  PRAGMA integrity_check;

  CREATE TABLE t1(a REAL, b AS ('expr') ); 

  INSERT INTO t1 VALUES( REPLACE(0, '', 'expr') );

  INSERT INTO t1 SELECT REPLACE(4, '', 'expr');

  SELECT typeof(a), a FROM t1;
