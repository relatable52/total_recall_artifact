
  BEGIN TRANSACTION;
  CREATE TABLE t_content(col0 INTEGER);
  PRAGMA writable_schema=ON;
  CREATE VIRTUAL TABLE t0 USING fts3(col0 INTEGER PRIMARY KEY,col1 VARCHAR(8),col2 BINARY,col3 BINARY);
  INSERT INTO t0_content VALUES(0,NULL,NULL,NULL,NULL);
  INSERT INTO t0_segdir VALUES(0,0,0,0,'0 42',X'000131030102000103323334050101010200000461616161050101020200000462626262050101030200');
  COMMIT;

  SELECT 0+matchinfo(t0,'yxyyxy') FROM t0 WHERE t0 MATCH CAST( x'2b0a312b0a312a312a2a0b5d0a0b0b0a312a0a0b0b0a312a0b310a392a0b0a27312a2a0b5d0a312a0b310a31315d0b310a312a316d2a0b313b15bceaa50a312a0b0a27312a2a0b5d0a312a0b310a312b0b2a310a312a0b2a0b2a0b2e5d0a0bff313336e34a2a312a0b0a3c310b0a0b4b4b0b4b2a4bec40322b2a0b310a0a312a0a0a0a0a0a0a0a0a0b310a312a2a2a0b5d0a0b0b0a312a0b310a312a0b0a4e4541530b310a5df5ced70a0a0a0a0a4f520a0a0a0a0a0a0a312a0b0a4e4541520b310a5d616161610a0a0a0a4f520a0a0a0a0a0a312b0a312a312a0a0a0a0a0a0a004a0b0a310b220a0b0a310a4a22310a0b0a7e6fe0e0e030e0e0e0e0e01176e02000e0e0e0e0e01131320226310a0b0a310a4a22310a0b0a310a766f8b8b4ee0e0300ae0090909090909090909090909090909090909090909090909090909090909090947aaaa540b09090909090909090909090909090909090909090909090909090909090909fae0e0f2f22164e0e0f273e07fefefef7d6dfafafafa6d6d6d6d' AS TEXT);

  CREATE VIRTUAL TABLE t1 USING fts3(col0 INTEGER PRIMARY KEY,col1 VARCHAR(8),col2 BINARY,col3 BINARY);
  INSERT INTO t1_content VALUES(0,NULL,NULL,NULL,NULL);
  INSERT INTO t1_segdir VALUES(0,0,0,0,'0 42',X'000131030102000103323334050101010200000461616161050101020200000462626262050101030200');

  SELECT 42+matchinfo(t1,'yxyyxy')  FROM t1 WHERE t1 MATCH  x'2b0a312b0a312a312a2a0b5d0a0b0b0a312a0a0b0b0a312a0b310a392a0b0a27312a2a0b5d0a312a0b310a31315d0b310a312a316d2a0b313b15bceaa50a312a0b0a27312a2a0b5d0a312a0b310a312b0b2a310a312a0b2a0b2a0b2e5d0a0bff313336e34a2a312a0b0a3c310b0a0b4b4b0b4b2a4bec40322b2a0b310a0a312a0a0a0a0a0a0a0a0a0b310a312a2a2a0b5d0a0b0b0a312a0b310a312a0b0a4e4541530b310a5df5ced70a0a0a0a0a4f520a0a0a0a0a0a0a312a0b0a4e4541520b310a5d616161610a0a0a0a4f520a0a0a0a0a0a312b0a312a312a0a0a0a0a0a0a004a0b0a310b220a0b0a310a4a22310a0b0a7e6fe0e0e030e0e0e0e0e01176e02000e0e0e0e0e01131320226310a0b0a310a4a22310a0b0a310a766f8b8b4ee0e0300ae0090909090909090909090909090909090909090909090909090909090909090947aaaa540b09090909090909090909090909090909090909090909090909090909090909fae0e0f2f22164e0e0f273e07fefefef7d6dfafafafa6d6d6d6d';

  CREATE VIRTUAL TABLE t0 USING fts3(a);
  INSERT INTO t0_segdir VALUES(0,0,0,0,'0 42',X'000131030782000103323334050100fff200010461616161050101020200000462626262050101030200');

  SELECT count(*) FROM t0 WHERE t0 MATCH '(1 NEAR 1) AND (aaaa OR 1)';
