
  CREATE VIRTUAL TABLE t1 USING fts4;
  BEGIN;
    INSERT INTO t1 VALUES('this is a dog');
    INSERT INTO t1 VALUES('an instance of a phrase');
    INSERT INTO t1 VALUES('an instance of a longer phrase');
    INSERT INTO t1 VALUES($aaa);
  COMMIT;

  SELECT count(*) FROM t1_segments WHERE length(block)>10000;
  UPDATE t1_segments 
    SET block = zeroblob(length(block)) 
    WHERE length(block)>10000;
 DROP TABLE t1  
    SELECT count(*) FROM t1_segments WHERE length(block)>10000 
  
  CREATE VIRTUAL TABLE x1 USING fts4(a, b);
  INSERT INTO x1 VALUES('a b c', 'd e f');
  INSERT INTO x1 SELECT * FROM x1;
  INSERT INTO x1 SELECT * FROM x1;
  INSERT INTO x1 SELECT * FROM x1;
  INSERT INTO x1 SELECT * FROM x1;

  SELECT count(*) FROM x1 WHERE x1 MATCH '"d e f"'

  CREATE VIRTUAL TABLE x2 USING FTS4(x);
  BEGIN;
  INSERT INTO x2 VALUES('m m m m m m m m m m m m m m m m m m m m m m m m m m');
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 SELECT * FROM x2;
  INSERT INTO x2 VALUES('a b c d e f g h i j k l m n o p q r s t u v w x y m');
  COMMIT;

  SELECT * FROM x2 WHERE x2 MATCH 'a b c d e f g h i j k l m n o p q r s';

    BEGIN;
    INSERT INTO x3 VALUES('b b b b b b b b b b b', 'b b b b b b b b b b b b b');
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 SELECT * FROM x3;
    INSERT INTO x3 VALUES('a b c', NULL);
    INSERT INTO x3 VALUES('a x c', NULL);
    COMMIT;

    SELECT * FROM x3 WHERE x3 MATCH 'a b';
   DROP TABLE x3 