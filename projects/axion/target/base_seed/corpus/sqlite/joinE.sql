
  SELECT a, b
  FROM t1 INNER JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 FULL JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 FULL JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

#  SELECT a, b
#  FROM t1 FULL JOIN t2 ON a IS NULL
#  ORDER BY coalesce(a,b,3);
# 
  SELECT a, b
  FROM t1 FULL JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

#   SELECT a, b
#   FROM t1 FULL JOIN t2 ON b IS NULL
#   ORDER BY coalesce(a,b,3);
# 
  SELECT a, b
  FROM t1 INNER JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 INNER JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 RIGHT JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 FULL JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

  SELECT a, b
  FROM t1 FULL JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);

#   SELECT a, b
#   FROM t1 FULL JOIN t2 ON a IS NULL
#   ORDER BY coalesce(a,b,3);
# 
  SELECT a, b
  FROM t1 FULL JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

#   SELECT a, b
#   FROM t1 FULL JOIN t2 ON b IS NULL
#   ORDER BY coalesce(a,b,3);
# 