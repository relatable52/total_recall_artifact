
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4
  );
  SELECT * FROM t1 WHERE c1=10;

  SELECT * FROM t1 WHERE c1='10';

  SELECT rowid FROM t1;

  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header=1
  );
  SELECT * FROM t1 WHERE "soft opinion"=12;

  SELECT name FROM pragma_table_xinfo('t1');

  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header=false
  );
  SELECT * FROM t1 WHERE c1='b';

  SELECT name FROM pragma_table_xinfo('t1');

  DROP TABLE temp.t1;
  CREATE VIRTUAL TABLE temp.t1 USING csv(
    data=
'a,b,"mix-bloom-eel","soft opinion"
1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    header,
    schema='CREATE TABLE x(x0,x1,x2,x3,x4)',
    columns=5
  );
  SELECT * FROM t1 WHERE x1='6';

  SELECT name FROM pragma_table_xinfo('t1');

  DROP TABLE t1;
  CREATE VIRTUAL TABLE temp.t2 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4,
    schema='CREATE TABLE t2(a INT, b TEXT, c REAL, d BLOB)'
  );
  SELECT * FROM t2 WHERE a=9;

  SELECT * FROM t2 WHERE b=10;

  SELECT * FROM t2 WHERE c=11;

  SELECT * FROM t2 WHERE d=12;

  SELECT * FROM t2 WHERE d='12';

  SELECT * FROM t2 WHERE a='9';

  DROP TABLE t2;
  CREATE VIRTUAL TABLE temp.t3 USING csv(
    data=
'1,2,3,4
5,6,7,8
9,10,11,12
13,14,15,16
',
    columns=4,
    schema=
      'CREATE TABLE t3(a PRIMARY KEY,b TEXT,c TEXT,d TEXT) WITHOUT ROWID',
    testflags=1
  );
  SELECT a FROM t3 WHERE b=6 OR c=7 OR d=12 ORDER BY +a;

  SELECT a FROM t3 WHERE +b=6 OR c=7 OR d=12 ORDER BY +a;

  CREATE VIRTUAL TABLE temp.trent USING csv(data='1');
  SELECT * FROM trent;

  CREATE VIRTUAL TABLE t5_1 USING csv(filename='csv01.csv');
  SELECT name FROM temp.pragma_table_info('t5_1');

  SELECT *, '|' FROM t5_1;

  DROP TABLE t5_1;
  CREATE VIRTUAL TABLE t5_1 USING csv(filename='csv01.csv', header);
  SELECT name FROM temp.pragma_table_info('t5_1');

  SELECT *, '|' FROM t5_1;

    CREATE VIRTUAL TABLE abc USING csv(filename='csv.data', header=true);
  
    SELECT count(*) FROM abc
  
    CREATE VIRTUAL TABLE abc USING csv(filename='csv.data', header=true);
  
    SELECT * FROM abc
  