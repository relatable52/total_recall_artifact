
  SELECT "" <= '';

  SELECT '' <= "";

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(0),(1),(NULL),(0.5),('1x'),('0x');
  SELECT count(*) FROM t1
   WHERE (x OR (8==9)) != (CASE WHEN x THEN 1 ELSE 0 END);

  SELECT count(*) FROM t1
   WHERE (x OR (8==9)) != (NOT NOT x);

  SELECT sum(NOT x) FROM t1
   WHERE x

  SELECT sum(CASE WHEN x THEN 0 ELSE 1 END) FROM t1
   WHERE x

    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(0),(1),(NULL),(0.5),('1x'),('0x');
  
    SELECT count(*) FROM t1
     WHERE (x OR (8==9)) != (CASE WHEN x THEN 1 ELSE 0 END);
  
    SELECT count(*) FROM t1
     WHERE (x OR (8==9)) != (NOT NOT x);
  
    SELECT sum(NOT x) FROM t1
     WHERE x
  
    SELECT sum(CASE WHEN x THEN 0 ELSE 1 END) FROM t1
     WHERE x
  
  CREATE TABLE t1(a,b,c);
  CREATE TABLE dual(dummy);
  INSERT INTO dual VALUES('X');

  SELECT implies_nonnull_row( (b=1 AND 0)>(b=3 AND 0),a)
  FROM dual LEFT JOIN t1;

  SELECT implies_nonnull_row( (b=1 AND 0)>(b=3 AND a=4),a)
  FROM dual LEFT JOIN t1;

  SELECT implies_nonnull_row( (b=1 AND a=2)>(b=3 AND a=4),a)
  FROM dual LEFT JOIN t1;
