
  PRAGMA writable_schema = 1;
  BEGIN TRANSACTION;    
    CREATE TABLE t1(
      a INT AS (c*11),
      b TEXT AS (substr(d,1,3)) STORED, 
      c INTEGEB PRIMARI KEY, d TEXT
    );
    CREATE INDEX t1a ON t1(a);
  COMMIT;
