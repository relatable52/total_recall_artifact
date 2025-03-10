
  CREATE TABLE t1(
     c0,  c1,  c2,  c3,  c4,  c5,  c6,  c7,  c8,  c9,
     c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
     c20, c21, c22, c23, c24, c25, c26, c27, c28, c29,
     c30, c31, c32, c33, c34, c35, c36, c37, c38, c39,
     c40, c41, c42, c43, c44, c45, c46, c47, c48, c49,
     c50, c51, c52, c53, c54, c55, c56, c57, c58, c59,
     c60, c61, c62, c63, c64, c65
  );
  INSERT INTO t1 VALUES(
     0,  1,  2,  3,  4,  5,  6,  7,  8,  9,
     10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
     20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
     30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
     40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
     50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
     60, 61, 62, 63, 64, 65
  );
  CREATE INDEX t1c60 ON t1(c60);

  SELECT DISTINCT c44 FROM (
    SELECT c0 AS a, *, counter(1) FROM t1
    UNION ALL
    SELECT c1 AS a, *, counter(1) FROM t1
  ) WHERE c60=60;

  SELECT a FROM (
    SELECT counter(1) AS cnt, c15 AS a, *, c62 AS b FROM t1
    UNION ALL
    SELECT counter(1) AS cnt, c16 AS a, *, c61 AS b FROM t1
    ORDER BY b
  );

  CREATE VIEW v1 AS
    SELECT c16 AS a, *, counter(1) AS x FROM t1
    UNION ALL
    SELECT c17 AS a, *, counter(1) AS x FROM t1
    UNION ALL
    SELECT c18 AS a, *, counter(1) AS x FROM t1
    UNION ALL
    SELECT c19 AS a, *, counter(1) AS x FROM t1;
  SELECT count(*) FROM v1 WHERE c60=60;

  SELECT count(a) FROM v1 WHERE c60=60;

  SELECT a FROM v1 WHERE c60=60;

  SELECT x FROM v1 WHERE c60=60;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  SELECT 1 FROM (SELECT DISTINCT name COLLATE rtrim FROM sqlite_schema
                 UNION ALL SELECT a FROM t1);
