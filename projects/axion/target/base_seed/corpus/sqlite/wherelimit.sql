
    CREATE TABLE t1(a int);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    CREATE TABLE t2(a int);
    INSERT INTO t2 SELECT a+100 FROM t1;
    CREATE VIEW tv(r,a) AS
       SELECT rowid, a FROM t2 UNION ALL SELECT rowid, a FROM t1;
    CREATE TRIGGER tv_del INSTEAD OF DELETE ON tv
    BEGIN
      DELETE FROM t1 WHERE rowid=old.r;
      DELETE FROM t2 WHERE rowid=old.r;
    END;
  
    CREATE TABLE t3(a,b,c,d TEXT, PRIMARY KEY(a,b)) WITHOUT ROWID;
    INSERT INTO t3(a,b,c,d) VALUES(1,2,3,4),(5,6,7,8),(9,10,11,12);
  
    SELECT a,b,c,d FROM t3 ORDER BY 1;
  