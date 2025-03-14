
  -- Build up a test table with some indexes
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c, d);
  CREATE UNIQUE INDEX t1bc ON t1(b,c);
  CREATE INDEX t1d ON t1(d);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
    INSERT INTO t1(a,b,c,d) SELECT x, x, x, x FROM c;
  -- Verify that the hasStat1 flag is clear on on indexes
  SELECT idx, flgs FROM pragma_stats
   WHERE idx IS NOT NULL
   ORDER BY idx;
  -- Verify that the TF_HasStat1 flag is clear on the table
  SELECT tbl, (flgs & 0x10)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE a=55;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE a IN (55,199,299);

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE (b,c)=(45,45);

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE d=45;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE d=45 AND a=45;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE d=45 AND a IN (45,46);

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT * FROM t1 WHERE b=45;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;

  SELECT (flgs & 0x0100)!=0 FROM pragma_stats WHERE tbl='t1' AND idx IS NULL;
