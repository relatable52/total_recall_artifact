
  WITH tx(timeval,datetime) AS (
     VALUES('2022-01-27 13:15:44','2022-01-27 13:15:44'),
           (2459607.05260275,'2022-01-27 13:15:44'),
           (1643289344,'2022-01-27 13:15:44')
  )
  SELECT datetime(timeval,'auto') == datetime FROM tx;

  WITH inc(x) AS (VALUES(-10) UNION ALL SELECT x+1 FROM inc WHERE x<100)
  SELECT count(*) FROM inc
  WHERE datetime('1970-01-01',format('%+d days',x))
     <> datetime(unixepoch('1970-01-01',format('%+d days',x)),'auto');
