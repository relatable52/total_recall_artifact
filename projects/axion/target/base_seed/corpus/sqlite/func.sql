
  SELECT octet_length(t1) FROM tbl1 ORDER BY t1;

  SELECT octet_length(12345);

  SELECT octet_length(NULL);

  SELECT octet_length(7.5);

  SELECT octet_length(x'30313233');

  WITH c(x) AS (VALUES(char(350,351,352,353,354)))
  SELECT length(x), octet_length(x) FROM c;

  WITH RECURSIVE c(x) AS (
     VALUES(1)
     UNION ALL
     SELECT x+1 FROM c WHERE x<1040
  )
  SELECT 
    count(*),
    sum(length(replace(printf('abc%.*cxyz',x,'m'),'m','nnnn'))-(6+x*4))
  FROM c;

  SELECT test_auxdata('constant') FROM t4;

  SELECT test_auxdata('constant') FROM t4;

  SELECT test_auxdata('constant') FROM t4;

  SELECT test_auxdata($V), $V FROM t4;

  SELECT test_auxdata($V), $V FROM t4;

  SELECT test_auxdata($V), $V FROM t4;

  SELECT trim('xyzzy',x'c0808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080');

  CREATE TABLE t29b(a,b,c,d,e,f,g,h,i);
  INSERT INTO t29b 
   VALUES(1, hex(randomblob(2000)), null, 0, 1, '', zeroblob(0),'x',x'01');
  SELECT typeof(c), typeof(d), typeof(e), typeof(f),
         typeof(g), typeof(h), typeof(i) FROM t29b;

  SELECT length(f), length(g), length(h), length(i) FROM t29b;

  SELECT quote(f), quote(g), quote(h), quote(i) FROM t29b;
SELECT unicode('$');SELECT unicode('\u00A2');SELECT unicode('\u20AC');$\u00A2\u20ACSELECT unicode(char($i))SELECT unicode(char($i))SELECT unicode(char($i)) 
  SELECT char(), length(char()), typeof(char()) 

  SELECT test_frombind(1,2,3,4);

  SELECT test_frombind(1,2,?,4);

  SELECT test_frombind(1,(?),4,?+7);

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a,b,c,e,f);
  INSERT INTO t1 VALUES(1,2.5,'xyz',x'e0c1b2a3',null);
  SELECT test_frombind(a,b,c,e,f,$xyz) FROM t1;

  SELECT test_frombind(a,b,c,e,f,$xyz+f) FROM t1;

  SELECT test_frombind(x.a,y.b,x.c,:123,y.e,x.f,$xyz+y.f) FROM t1 x, t1 y;

  SELECT * FROM (SELECT testdirectonly(15)) AS v33;

  WITH c(x) AS (SELECT testdirectonly(15))
  SELECT * FROM c;

  CREATE TABLE t33a(a,b);
  CREATE TABLE t33b(x,y);
  CREATE TRIGGER r1 AFTER INSERT ON t33a BEGIN
    INSERT INTO t33b(x,y) VALUES(testdirectonly(new.a),new.b);
  END;

  ALTER TABLE t33a RENAME COLUMN a TO aaa;
  SELECT sql FROM sqlite_master WHERE name='r1';

  CREATE TABLE t1(a INT CHECK(
     datetime( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
              10,11,12,13,14,15,16,17,18,19,
              20,21,22,23,24,25,26,27,28,29,
              30,31,32,33,34,35,36,37,38,39,
              40,41,42,43,44,45,46,47,48,a)
   )
  );
  INSERT INTO t1(a) VALUES(1),(2);
  SELECT * FROM t1;

  CREATE TABLE t1(x);
  SELECT coalesce(x, abs(-9223372036854775808)) FROM t1;

  SELECT coalesce(x, 'xyz' LIKE printf('%.1000000c','y')) FROM t1;

  CREATE TABLE t0(c0 CHECK(ABS(-9223372036854775808)));
  PRAGMA integrity_check;

  SELECT 123 -> 456

  SELECT 123 ->> 456
