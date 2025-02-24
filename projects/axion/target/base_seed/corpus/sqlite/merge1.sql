
  WITH data(v) AS (
    SELECT value FROM generate_series(1,35,3)
    UNION ALL
    SELECT value FROM generate_series(10,30,4)
    UNION ALL
    SELECT value FROM generate_series(20,50,5)
    UNION ALL
    SELECT value FROM generate_series(30,60,6)
    UNION ALL
    SELECT value FROM generate_series(1,50,7)
    UNION ALL
    SELECT value FROM generate_series(10,80,8)
  )
  SELECT v FROM data ORDER BY v;

  WITH data(v) AS (
    SELECT value FROM generate_series(1,35,3)
    UNION ALL
    SELECT value FROM generate_series(10,30,4)
    UNION ALL
    SELECT value FROM generate_series(20,50,5)
    UNION ALL
    SELECT value FROM generate_series(30,60,6)
    UNION ALL
    SELECT value FROM generate_series(1,50,7)
    UNION ALL
    SELECT value FROM generate_series(10,80,8)
  )
  SELECT v FROM data ORDER BY v;
