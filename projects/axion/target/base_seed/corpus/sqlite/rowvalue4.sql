
  CREATE TABLE t1(a, b, c);
  CREATE INDEX t1bac ON t1(b, a, c);

  CREATE TABLE t2(a, b, c, d);
  INSERT INTO t2 VALUES(1, 1, 1,   1);
  INSERT INTO t2 VALUES(1, 1, 2,   2);
  INSERT INTO t2 VALUES(1, 1, 3,   3);
  INSERT INTO t2 VALUES(1, 2, 1,   4);
  INSERT INTO t2 VALUES(1, 2, 2,   5);
  INSERT INTO t2 VALUES(1, 2, 3,   6);
  INSERT INTO t2 VALUES(1, 3, 1,   7);
  INSERT INTO t2 VALUES(1, 3, 2,   8);
  INSERT INTO t2 VALUES(1, 3, 3,   9);

  INSERT INTO t2 VALUES(2, 1, 1,   10);
  INSERT INTO t2 VALUES(2, 1, 2,   11);
  INSERT INTO t2 VALUES(2, 1, 3,   12);
  INSERT INTO t2 VALUES(2, 2, 1,   13);
  INSERT INTO t2 VALUES(2, 2, 2,   14);
  INSERT INTO t2 VALUES(2, 2, 3,   15);
  INSERT INTO t2 VALUES(2, 3, 1,   16);
  INSERT INTO t2 VALUES(2, 3, 2,   17);
  INSERT INTO t2 VALUES(2, 3, 3,   18);

  INSERT INTO t2 VALUES(3, 1, 1,   19);
  INSERT INTO t2 VALUES(3, 1, 2,   20);
  INSERT INTO t2 VALUES(3, 1, 3,   21);
  INSERT INTO t2 VALUES(3, 2, 1,   22);
  INSERT INTO t2 VALUES(3, 2, 2,   23);
  INSERT INTO t2 VALUES(3, 2, 3,   24);
  INSERT INTO t2 VALUES(3, 3, 1,   25);
  INSERT INTO t2 VALUES(3, 3, 2,   26);
  INSERT INTO t2 VALUES(3, 3, 3,   27);

    CREATE TABLE c1(a, b, c, d);
    INSERT INTO c1(a, b) VALUES(1, 'a');
    INSERT INTO c1(a, b) VALUES(1, 'b');
    INSERT INTO c1(a, b) VALUES(1, 'c');
    INSERT INTO c1(a, b) VALUES(1, 'd');
    INSERT INTO c1(a, b) VALUES(1, 'e');
    INSERT INTO c1(a, b) VALUES(1, 'f');
    INSERT INTO c1(a, b) VALUES(1, 'g');
    INSERT INTO c1(a, b) VALUES(1, 'h');
    INSERT INTO c1(a, b) VALUES(1, 'i');
    INSERT INTO c1(a, b) VALUES(1, 'j');
    INSERT INTO c1(a, b) VALUES(1, 'k');
    INSERT INTO c1(a, b) VALUES(1, 'l');
    INSERT INTO c1(a, b) VALUES(1, 'm');
    INSERT INTO c1(a, b) VALUES(1, 'n');
    INSERT INTO c1(a, b) VALUES(1, 'o');
    INSERT INTO c1(a, b) VALUES(1, 'p');
    INSERT INTO c1(a, b) VALUES(2, 'a');
    INSERT INTO c1(a, b) VALUES(2, 'b');
    INSERT INTO c1(a, b) VALUES(2, 'c');
    INSERT INTO c1(a, b) VALUES(2, 'd');
    INSERT INTO c1(a, b) VALUES(2, 'e');
    INSERT INTO c1(a, b) VALUES(2, 'f');
    INSERT INTO c1(a, b) VALUES(2, 'g');
    INSERT INTO c1(a, b) VALUES(2, 'h');

    INSERT INTO c1(c, d) SELECT a, b FROM c1;

    CREATE INDEX c1ab ON c1(a, b);
    CREATE INDEX c1cd ON c1(c, d);
    ANALYZE;
  
  CREATE TABLE d1(x, y);
  CREATE TABLE d2(a, b, c);
  CREATE INDEX d2ab ON d2(a, b);
  CREATE INDEX d2c ON d2(c);

  WITH i(i) AS (
    VALUES(1) UNION ALL SELECT i+1 FROM i WHERE i<1000
  )
  INSERT INTO d2 SELECT i/100, i%100, i/100 FROM i;
  ANALYZE;

  CREATE TABLE e1(a, b, c, d, e);
  CREATE INDEX e1ab ON e1(a, b);
  CREATE INDEX e1cde ON e1(c, d, e);

  CREATE TABLE f1(a, b, c);
  CREATE INDEX f1ab ON f1(a, b);

  CREATE TABLE c1(x, y);
  CREATE TABLE c2(a, b, c);
  CREATE INDEX c2ab ON c2(a, b);
  CREATE INDEX c2c ON c2(c);

  CREATE TABLE c3(d);
