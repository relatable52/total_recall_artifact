
  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 INNER JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 LEFT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 RIGHT JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 INNER JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 LEFT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 RIGHT JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 INNER JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 LEFT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 RIGHT JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 INNER JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 LEFT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 RIGHT JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1 FULL JOIN (
  t2 FULL JOIN (
  t3 FULL JOIN (
  t4 FULL JOIN t5 USING(a)
  ) USING(a)
  ) USING(a)
  ) USING(a)
  ORDER BY 1 NULLS FIRST;
