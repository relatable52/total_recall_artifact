
  CREATE TABLE composer(
    cid INTEGER PRIMARY KEY,
    cname TEXT
  );
  CREATE TABLE album(
    aid INTEGER PRIMARY KEY,
    aname TEXT
  );
  CREATE TABLE track(
    tid INTEGER PRIMARY KEY,
    cid INTEGER REFERENCES composer,
    aid INTEGER REFERENCES album,
    title TEXT
  );
  CREATE INDEX track_i1 ON track(cid);
  CREATE INDEX track_i2 ON track(aid);
  INSERT INTO composer VALUES(1, 'W. A. Mozart');
  INSERT INTO composer VALUES(2, 'Beethoven');
  INSERT INTO composer VALUES(3, 'Thomas Tallis');
  INSERT INTO composer VALUES(4, 'Joseph Hayden');
  INSERT INTO composer VALUES(5, 'Thomas Weelkes');
  INSERT INTO composer VALUES(6, 'J. S. Bach');
  INSERT INTO composer VALUES(7, 'Orlando Gibbons');
  INSERT INTO composer VALUES(8, 'Josquin des Prés');
  INSERT INTO composer VALUES(9, 'Byrd');
  INSERT INTO composer VALUES(10, 'Francis Poulenc');
  INSERT INTO composer VALUES(11, 'Mendelsshon');
  INSERT INTO composer VALUES(12, 'Zoltán Kodály');
  INSERT INTO composer VALUES(13, 'Handel');
  INSERT INTO album VALUES(100, 'Kodály: Missa Brevis');
  INSERT INTO album VALUES(101, 'Messiah');
  INSERT INTO album VALUES(102, 'Missa Brevis in D-, K.65');
  INSERT INTO album VALUES(103, 'The complete English anthems');
  INSERT INTO album VALUES(104, 'Mass in B Minor, BWV 232');
  INSERT INTO track VALUES(10005, 12, 100, 'Sanctus');
  INSERT INTO track VALUES(10007, 12, 100, 'Agnus Dei');
  INSERT INTO track VALUES(10115, 13, 101, 'Surely He Hath Borne Our Griefs');
  INSERT INTO track VALUES(10129, 13, 101, 'Since By Man Came Death');
  INSERT INTO track VALUES(10206, 1, 102, 'Agnus Dei');
  INSERT INTO track VALUES(10301, 3, 103, 'If Ye Love Me');
  INSERT INTO track VALUES(10402, 6, 104, 'Domine Deus');
  INSERT INTO track VALUES(10403, 6, 104, 'Qui tollis');

  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE unlikely(cname LIKE '%bach%')
     AND composer.cid=track.cid
     AND album.aid=track.aid;

  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE likelihood(cname LIKE '%bach%', 0.5)
     AND composer.cid=track.cid
     AND album.aid=track.aid;

  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE cname LIKE '%bach%'
     AND composer.cid=track.cid
     AND album.aid=track.aid;

  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE cname LIKE '%bach%'
     AND unlikely(composer.cid=track.cid)
     AND unlikely(album.aid=track.aid);

  CREATE TABLE a(a1 PRIMARY KEY, a2);
  CREATE TABLE b(b1 PRIMARY KEY, b2);

  CREATE TABLE t4(x);
  INSERT INTO t4 VALUES('right'),('wrong');
  SELECT DISTINCT x
   FROM (SELECT x FROM t4 GROUP BY x)
   WHERE x='right'
   ORDER BY x;

  CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(a, b);

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(i int, x, y, z);
  INSERT INTO t1 VALUES (1,1,1,1), (2,2,2,2), (3,3,3,3), (4,4,4,4);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(i int, bool char);
  INSERT INTO t2 VALUES(1,'T'), (2,'F');
  SELECT count(*) FROM t1 LEFT JOIN t2 ON t1.i=t2.i AND bool='T';
  SELECT count(*) FROM t1 LEFT JOIN t2 ON likely(t1.i=t2.i) AND bool='T';

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a, b, PRIMARY KEY(a,b));
  INSERT INTO t1 VALUES(9,1),(1,2);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(x, y, PRIMARY KEY(x,y));
  INSERT INTO t2 VALUES(3,3),(4,4);
  SELECT likely(a), x FROM t1, t2 ORDER BY 1, 2;

  SELECT unlikely(a), x FROM t1, t2 ORDER BY 1, 2;

  SELECT likelihood(a,0.5), x FROM t1, t2 ORDER BY 1, 2;

  SELECT coalesce(a,a), x FROM t1, t2 ORDER BY 1, 2;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0 (c0);
  INSERT INTO t0(c0) VALUES ('a');
  SELECT LIKELY(t0.rowid) <= '0' FROM t0;

  SELECT * FROM t0 WHERE LIKELY(t0.rowid) <= '0';

  SELECT (t0.rowid) <= '0' FROM t0;

  SELECT * FROM t0 WHERE (t0.rowid) <= '0';

  SELECT unlikely(t0.rowid) <= '0', likelihood(t0.rowid,0.5) <= '0' FROM t0;

  SELECT * FROM t0 WHERE unlikely(t0.rowid) <= '0';

  SELECT * FROM t0 WHERE likelihood(t0.rowid, 0.5) <= '0';

  SELECT unlikely(t0.rowid <= '0'),
         likely(t0.rowid <= '0'),
         likelihood(t0.rowid <= '0',0.5)
    FROM t0;

  SELECT * FROM t0 WHERE unlikely(t0.rowid <= '0');

  SELECT * FROM t0 WHERE likelihood(t0.rowid <= '0', 0.5);

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a, b FLOAT);
  INSERT INTO t1(a) VALUES(''),(NULL),('X'),(NULL);
  SELECT coalesce(max(quote(a)),10) FROM t1 GROUP BY a;

  CREATE TABLE a(b TEXT);  INSERT INTO a VALUES(0),(4),(9);
  CREATE TABLE c(d NUM);
  CREATE VIEW f(g, h) AS SELECT b, 0 FROM a UNION SELECT d, d FROM c;
  SELECT g = g FROM f GROUP BY h;

  CREATE TABLE t1(x PRIMARY KEY, y);
  INSERT INTO t1 VALUES('AAA', 'BBB');

  CREATE TABLE t2(z);
  INSERT INTO t2 VALUES('t2');

  CREATE TABLE t3(x PRIMARY KEY, y);
  INSERT INTO t3 VALUES('AAA', 'AAA');

  SELECT * FROM t1 JOIN t2 ON unlikely(x=y) AND y='AAA'

  SELECT * FROM t1 JOIN t2 ON likely(x=y) AND y='AAA'

  SELECT * FROM t1 JOIN t2 ON x=y AND y='AAA'

  SELECT * FROM t3 JOIN t2 ON unlikely(x=y) AND y='AAA'

  SELECT * FROM t3 JOIN t2 ON likely(x=y) AND y='AAA'

  SELECT * FROM t3 JOIN t2 ON x=y AND y='AAA'

  CREATE TABLE t1(a REAL);
  INSERT INTO t1(a) VALUES(123);
  CREATE INDEX t1x1 ON t1(likely(a));
  SELECT typeof(likely(a)) FROM t1 NOT INDEXED;
  SELECT typeof(likely(a)) FROM t1 INDEXED BY t1x1;

  CREATE INDEX t1x2 ON t1(abs(a));
  SELECT typeof(abs(a)) FROM t1 NOT INDEXED;
  SELECT typeof(abs(a)) FROM t1 INDEXED BY t1x2;
