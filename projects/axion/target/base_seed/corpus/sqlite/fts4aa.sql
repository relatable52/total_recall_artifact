
  CREATE VIRTUAL TABLE t1 USING fts4(a, b, c, d, e,f,g,h,i,j,k,l,m,n,o,p,q,r);
  INSERT INTO t1 VALUES('X Y', '2', '3', '4', '5', '6', '7', '8', '9', '0',
                        'a','b','c','d','e','f','g','h');
  UPDATE t1_docsize SET size=x'88' WHERE docid=1;

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(a,b,c,d);
  INSERT INTO t1 VALUES('one two','three four','five six','seven eight');
