
  CREATE VIRTUAL TABLE t1 USING tcl("vtab_cmd 0");

  CREATE TABLE ttt(a, b, c);

  INSERT INTO ttt VALUES(1, 'two',   'three');
  INSERT INTO ttt VALUES(2, 'one',   'two');
  INSERT INTO ttt VALUES(3, 'three', 'one');
  INSERT INTO ttt VALUES(4, 'y',     'one');
  INSERT INTO ttt VALUES(5, 'x',     'two');
  INSERT INTO ttt VALUES(6, 'y',     'three');
 
    SELECT rowid FROM t1 WHERE c LIKE 'o%'
   
    SELECT rowid FROM t1 WHERE c LIKE 'o%' OR b='y'
   
    SELECT rowid FROM t1 WHERE c = 'three' OR c LIKE 'o%'
  
    CREATE TABLE t2(x TEXT COLLATE nocase, y TEXT);
    CREATE INDEX t2x ON t2(x COLLATE nocase);
    CREATE INDEX t2y ON t2(y);
   CREATE VIRTUAL TABLE t3 USING tcl('vvv_command')  CREATE VIRTUAL TABLE t4 USING tcl('yyy_command') 