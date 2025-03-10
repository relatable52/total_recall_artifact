
  CREATE TABLE x1(
      one, two, three, PRIMARY KEY(one), 
      CHECK (three!="xyz"), CHECK (two!="one")
  ) WITHOUT ROWID;
  CREATE INDEX x1i ON x1(one+"two"+"four") WHERE "five";
  CREATE TEMP TRIGGER AFTER INSERT ON x1 BEGIN
    UPDATE x1 SET two=new.three || "new" WHERE one=new.one||"";
  END;
  CREATE TABLE t1(a, b, c, d, PRIMARY KEY(d, b)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3, 4);

  CREATE TABLE t2(k,v);
  CREATE TRIGGER r2 AFTER INSERT ON t2 BEGIN
    UPDATE t2 SET (k,v)= (
       (WITH cte1(a) AS ( SELECT 1 FROM ( SELECT * FROM t2 ) )
       SELECT a FROM cte1
    ), 1);
  END;

  CREATE TRIGGER r1 AFTER INSERT ON t2 BEGIN
    UPDATE t2 SET k=1 FROM t2 AS one, t2 AS two NATURAL JOIN t2 AS three 
    WHERE one.k=two.v;
  END;

  ALTER TABLE t2 RENAME TO t2x;
