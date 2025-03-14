
  CREATE VIRTUAL TABLE t1 USING fts4(x, tokenize=unicode61);
  CREATE VIRTUAL TABLE t2 USING fts4(
      x, 
      tokenize=unicode61 "remove_diacritics=2"
  );

    DELETE FROM t1;
    INSERT INTO t1(rowid, x) VALUES (1, 'Ha Noi');
    SELECT count(*) FROM t1 WHERE t1 MATCH $q
  
    DELETE FROM t1;
    INSERT INTO t1(rowid, x) VALUES (1, $q);
    SELECT count(*) FROM t1 WHERE t1 MATCH 'Ha Noi'
  
    DELETE FROM t2;
    INSERT INTO t2(rowid, x) VALUES (1, 'Ha Noi');
    SELECT count(*) FROM t2 WHERE t2 MATCH $q
  
    DELETE FROM t2;
    INSERT INTO t2(rowid, x) VALUES (1, $q);
    SELECT count(*) FROM t2 WHERE t2 MATCH 'Ha Noi'
  