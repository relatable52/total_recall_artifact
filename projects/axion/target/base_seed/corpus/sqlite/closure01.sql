
  BEGIN;
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y INTEGER);
  WITH RECURSIVE
    cnt(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM cnt LIMIT 131072)
  INSERT INTO t1(x, y) SELECT i, nullif(i,1)/2 FROM cnt;
  CREATE INDEX t1y ON t1(y);
  COMMIT;
  CREATE VIRTUAL TABLE cx 
   USING transitive_closure(tablename=t1, idcolumn=x, parentcolumn=y);

  SELECT id, depth, root, tablename, idcolumn, parentcolumn FROM cx
   WHERE root=16384
     AND depth=1
   ORDER BY id;

  SELECT count(*), depth FROM cx WHERE root=1 AND depth<=5
   GROUP BY depth ORDER BY 1;

  SELECT count(*), depth FROM cx WHERE root=1 AND depth=5
   GROUP BY depth ORDER BY 1;

  SELECT count(*), depth FROM cx WHERE root=1 AND depth BETWEEN 3 AND 5
   GROUP BY depth ORDER BY 1;

  SELECT count(*), min(id), max(id) FROM c2 WHERE root=1;

  SELECT id FROM c2 WHERE root=10;

  SELECT id FROM c2 WHERE root=12;

  SELECT id FROM c2 WHERE root IN (10,12) ORDER BY id;

  SELECT id FROM c2 WHERE root IN (10,12) ORDER BY +id;

  CREATE VIRTUAL TABLE c2up USING transitive_closure(
    tablename = t2,
    idcolumn = y,
    parentcolumn = x
  );
  SELECT id FROM c2up WHERE root=20;

  SELECT id FROM cx
   WHERE root=20
     AND tablename='t2'
     AND idcolumn='y'
     AND parentcolumn='x';

  SELECT DISTINCT id FROM c2
   WHERE root IN (SELECT id FROM c2up
                   WHERE root=20 AND depth<=2)
   ORDER BY id;

  SELECT id FROM c2
   WHERE root=(SELECT id FROM c2up
               WHERE root=20 AND depth=2)
     AND depth=2
  EXCEPT
  SELECT id FROM c2
   WHERE root=(SELECT id FROM c2up
               WHERE root=20 AND depth=1)
     AND depth<=1
   ORDER BY id;

  CREATE VIRTUAL TABLE temp.closure USING transitive_closure;
  SELECT id FROM closure
   WHERE root=1
     AND depth=3
     AND tablename='t1'
     AND idcolumn='x'
     AND parentcolumn='y'
  ORDER BY id;

  CREATE TABLE t4 (
    id INTEGER PRIMARY KEY, 
    name TEXT NOT NULL,
    parent_id INTEGER
  );
  CREATE VIRTUAL TABLE vt4 USING transitive_closure (
    idcolumn=id, parentcolumn=parent_id, tablename=t4
  );

  SELECT * FROM t4, vt4 WHERE t4.id = vt4.root AND vt4.id=4 AND vt4.depth=2;
