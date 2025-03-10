
    CREATE TABLE t0(xyz INTEGER);
    INSERT INTO t0(xyz) VALUES(456);
    CREATE VIEW v2(a, B) AS 
        SELECT 'a', 'B' COLLATE NOCASE FROM t0;
    CREATE TABLE t2(a, B COLLATE NOCASE);
    INSERT INTO t2 VALUES('a', 'B');
    CREATE VIEW v3(a, B) AS
        SELECT 'a' COLLATE BINARY, 'B' COLLATE NOCASE FROM t0;

    CREATE VIEW v4(a, B) AS
        SELECT 'a', +CAST('B' COLLATE NOCASE AS TEXT) FROM t0;

    CREATE VIEW v5(a, B) AS
        SELECT 'a', ('B' COLLATE NOCASE) || '' FROM t0;
   SELECT a   >= B FROM t2;          SELECT 'a' >= 'B' COLLATE NOCASE  SELECT a   >= B FROM v2           SELECT a   >= B FROM v3           SELECT a   >= B FROM v4           SELECT a   >= B FROM v5           SELECT B   < a FROM t2            SELECT 'B' COLLATE NOCASE < 'a'   SELECT B   < a FROM v2            SELECT B   < a FROM v3            SELECT a  < B FROM v4            SELECT a  < B FROM v5           
    CREATE TABLE t5(a, b COLLATE NOCASE);
    INSERT INTO t5 VALUES(1, 'XYZ');
  
    SELECT xyz==b FROM ( SELECT a, 'xyz' AS xyz FROM t5 ), t5;
  
    SELECT 'xyz'==b FROM ( SELECT a, 'xyz' AS xyz FROM t5 ), t5;
  
    DROP TABLE t0;
    DROP VIEW v2;

    CREATE TABLE t0(c0);
    INSERT INTO t0(c0) VALUES('');
    CREATE VIEW v2(c0, c1) AS 
        SELECT 'B' COLLATE NOCASE, 'a' FROM t0 ORDER BY t0.c0;
    SELECT SUM(count) FROM (
      SELECT v2.c1 BETWEEN v2.c0 AND v2.c1 as count FROM v2
    );
  
    SELECT v2.c1 BETWEEN v2.c0 AND v2.c1 as count FROM v2;
  