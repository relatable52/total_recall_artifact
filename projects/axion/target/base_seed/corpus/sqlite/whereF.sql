
  PRAGMA automatic_index = 0;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);
  CREATE UNIQUE INDEX i1 ON t1(a);
  CREATE UNIQUE INDEX i2 ON t2(d);

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  CREATE UNIQUE INDEX i1 ON t1(a);
  CREATE UNIQUE INDEX i2 ON t1(b);
  CREATE UNIQUE INDEX i3 ON t2(d);

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  CREATE UNIQUE INDEX i1 ON t1(a, b);
  CREATE INDEX i2 ON t2(d);

  CREATE TABLE t4(a,b,c,d,e, PRIMARY KEY(a,b,c));
  CREATE INDEX t4adc ON t4(a,d,c);
  CREATE UNIQUE INDEX t4aebc ON t4(a,e,b,c);
  EXPLAIN QUERY PLAN SELECT rowid FROM t4 WHERE a=? AND b=?;

  CREATE TABLE t1(f1);
  CREATE TABLE t2(f2);
  CREATE INDEX t2f ON t2(f2);

  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);

  WITH w(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM w WHERE i<1000
  )
  INSERT INTO t2 SELECT -1 FROM w;

  SELECT count(*) FROM t1, t2 WHERE t2.rowid = +t1.rowid

  SELECT count(*) FROM t1, t2 WHERE (
    t2.rowid = +t1.rowid OR t2.f2 = t1.f1
  )

  SELECT count(*) FROM t1, t2 WHERE (
    t2.rowid = +t1.rowid OR (t2.f2 = t1.f1 AND t1.f1!=-1)
  )

    CREATE TABLE t6(x);
    SELECT * FROM t6 WHERE 1 IN (SELECT value FROM json_each(x));
  
    DROP TABLE t6;
    CREATE TABLE t6(a,b,c);
    INSERT INTO t6 VALUES
     (0,null,'{"a":0,"b":[3,4,5],"c":{"x":4.5,"y":7.8
    DROP TABLE IF EXISTS t;
    CREATE TABLE t(json JSON);
    SELECT * FROM t
     WHERE(EXISTS(SELECT 1 FROM json_each(t.json,"$.foo") j
                   WHERE j.value = 'meep'));
  
    INSERT INTO t VALUES('{"xyzzy":null
  DROP TABLE IF EXISTS cd;
  CREATE TABLE cd ( cdid INTEGER PRIMARY KEY NOT NULL, genreid integer );
  CREATE INDEX cd_idx_genreid ON cd (genreid);
  INSERT INTO cd  ( cdid, genreid ) VALUES
                     ( 1,    1 ),
                     ( 2, NULL ),
                     ( 3, NULL ),
                     ( 4, NULL ),
                     ( 5, NULL );
  
  SELECT cdid
    FROM cd me
  WHERE 2 > (
    SELECT COUNT( * )
      FROM cd rownum__emulation
    WHERE
      (
        me.genreid IS NOT NULL
          AND
        rownum__emulation.genreid IS NULL
      )
        OR
      (
        me.genreid IS NOT NULL
          AND
        rownum__emulation.genreid IS NOT NULL
          AND
        rownum__emulation.genreid < me.genreid
      )
        OR
      (
        ( me.genreid = rownum__emulation.genreid OR ( me.genreid IS NULL
  AND rownum__emulation.genreid IS NULL ) )
          AND
        rownum__emulation.cdid > me.cdid
      )
  );

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1(a,b) VALUES(1,1);
  CREATE TABLE t2(aa INTEGER PRIMARY KEY, bb);
  INSERT INTO t2(aa,bb) VALUES(1,1),(2,NULL),(3,NULL);
  SELECT (
    SELECT COUNT(*) FROM t2
     WHERE ( t1.b IS NOT NULL AND t2.bb IS NULL )
        OR ( t2.bb < t1.b )
        OR ( t1.b IS t2.bb AND t2.aa > t1.a )
    )
    FROM t1;

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1(a,b) VALUES(1,'abcxyz');
  CREATE TABLE t2(aa INTEGER PRIMARY KEY, bb TEXT);
  INSERT INTO t2(aa,bb) VALUES(1,'abc'),(2,'wxyz'),(3,'xyz');
  CREATE INDEX t2bb ON t2(bb);
  EXPLAIN SELECT (
    SELECT COUNT(*) FROM t2
     WHERE ( t1.b GLOB 'a*z' AND t2.bb='xyz' )
        OR ( t2.bb = t1.b )
        OR ( t2.aa = t1.a )
    )
    FROM t1;
