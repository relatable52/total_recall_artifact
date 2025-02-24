
  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 INNER JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 LEFT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IS NOT DISTINCT FROM t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b IS NOT DISTINCT FROM t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 RIGHT JOIN t2 ON t1.b IN (t2.b,-2,-3) AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  INNER JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  INNER JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  INNER JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  LEFT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  LEFT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  LEFT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  RIGHT JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c IS NOT DISTINCT FROM t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  RIGHT JOIN t3 ON t1.c IS NOT DISTINCT FROM t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  RIGHT JOIN t3 ON t1.c IN (-4,t3.c,-5) AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  INNER JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  INNER JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  INNER JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  LEFT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  LEFT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  LEFT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  RIGHT JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  RIGHT JOIN t4 ON t1.d IS NOT DISTINCT FROM t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  RIGHT JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d IS NOT DISTINCT FROM t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE (t2.x>0 OR t2.x IS NULL)
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON true
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t1.b=t2.b AND t2.x>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t3.y>0 OR t3.y IS NULL
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z IS NULL OR t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t4.z>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d AND t4.z>0
  WHERE t2.x>0 AND t3.y>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b=t2.b
  FULL JOIN t3 ON t1.c=t3.c
  FULL JOIN t4 ON t1.d=t4.d
  WHERE t2.x>0 AND t3.y>0 AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t1.b = t2.b AND t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t3.y>0
  FULL JOIN t4 ON t1.d = t4.d AND t4.z>0
  WHERE t1.b = t2.b AND t1.c = t3.c
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  SELECT t1.*, t2.*, t3.*, t4.*
  FROM t1 FULL JOIN t2 ON t2.x>0
  FULL JOIN t3 ON t1.c = t3.c AND t3.y>0
  FULL JOIN t4 ON t4.z>0
  WHERE t1.b = t2.b AND t1.d = t4.d
  ORDER BY coalesce(t1.a,t2.b,t3.c,t4.d,0);

  CREATE VIEW v1 AS
    SELECT *
    FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
    RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
    LEFT JOIN t4 ON t1.d=t4.d AND t4.z>0;
  CREATE TRIGGER v1r1 INSTEAD OF UPDATE OF c ON v1 BEGIN
    UPDATE t1 SET c=new.c WHERE (a,b,c,d) IS (old.a,old.b,old.c,old.d);
    UPDATE t3 SET c=new.c WHERE (c,y) IS (old.c,old.y);
  END;
  SELECT * FROM v1 WHERE y BETWEEN 30 AND 40 ORDER BY y;

  BEGIN;
  UPDATE v1 SET c=c+1000 WHERE y BETWEEN 30 and 40;
  SELECT * FROM v1 WHERE y BETWEEN 30 AND 40 ORDER BY y;
  ROLLBACK;
