
  CREATE VIEW "new view" AS SELECT * FROM t1 AS x, t1 AS y;
  SELECT * FROM "new view";
;
  SELECT * FROM sqlite_master WHERE name = 'new view';

  DROP VIEW "new view";
  SELECT * FROM sqlite_master WHERE name = 'new view';
b tempb mainb mainb auxb auxb aux