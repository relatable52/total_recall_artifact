
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d NOT NULL);

  CREATE TABLE t1(a, b, c); 
  CREATE TABLE t2(a, b, c, PRIMARY KEY(a, b, c)) WITHOUT ROWID;
