
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,3,4,5)
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,4,5)
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,4,5)
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,3,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,3,4,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,4,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,4,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e'
      ON CONFLICT(a) DO UPDATE SET b='a';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e'
      ON CONFLICT(a) DO UPDATE SET b='a';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(e) DO UPDATE SET b='e'
      ON CONFLICT(a) DO UPDATE SET b='a';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a1'
      ON CONFLICT(a) DO UPDATE SET b='a2'
      ON CONFLICT(a) DO UPDATE SET b='a3'
      ON CONFLICT(a) DO UPDATE SET b='a4'
      ON CONFLICT(a) DO UPDATE SET b='a5'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT(a) DO UPDATE SET b='a1'
      ON CONFLICT(a) DO UPDATE SET b='a2'
      ON CONFLICT(a) DO UPDATE SET b='a3'
      ON CONFLICT(a) DO UPDATE SET b='a4'
      ON CONFLICT(a) DO UPDATE SET b='a5'
      ON CONFLICT(e) DO UPDATE SET b='e';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,4,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,4,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,4,95)
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,94,95)
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO NOTHING
      ON CONFLICT(d) DO NOTHING
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO NOTHING
      ON CONFLICT(d) DO NOTHING
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,4,95)
      ON CONFLICT(c) DO NOTHING
      ON CONFLICT(d) DO NOTHING
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,94,95)
      ON CONFLICT(c) DO NOTHING
      ON CONFLICT(d) DO NOTHING
      ON CONFLICT DO UPDATE set b='x';
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,93,94,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,94,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(91,NULL,3,4,95)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    INSERT INTO t1(a,b,c,d,e) VALUES(1,NULL,93,4,5)
      ON CONFLICT(c) DO UPDATE SET b='c'
      ON CONFLICT(d) DO UPDATE SET b='d'
      ON CONFLICT DO NOTHING;
    SELECT a,b,c,d,e FROM t1;
  
  CREATE TABLE t2(a, b, c REAL, d, e, PRIMARY KEY(a,b)) WITHOUT ROWID;
  CREATE UNIQUE INDEX t2c ON t2(c);
