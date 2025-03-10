
  SELECT ix FROM qpvtab WHERE vn='sqlite3_vtab_distinct';

  SELECT DISTINCT ix FROM qpvtab WHERE vn='sqlite3_vtab_distinct';

  SELECT distinct vn, ix FROM qpvtab(3)
   WHERE +vn IN ('sqlite3_vtab_distinct','nOrderBy');

  SELECT vn, ix FROM qpvtab
   GROUP BY vn
  HAVING vn='sqlite3_vtab_distinct';
