
  CREATE TABLE t1 (Col0 CHECK(1 COLLATE BINARY BETWEEN 1 AND 1) ) ;
  CREATE TABLE t2(b, a CHECK(
      CASE 'abc' COLLATE nocase WHEN a THEN 1 ELSE 0 END)
  );
