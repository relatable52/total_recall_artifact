
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL LEFT JOIN t5 NATURAL LEFT JOIN t6
     ORDER BY 1;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL LEFT JOIN t5 NATURAL LEFT JOIN t6
     ORDER BY id;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 LEFT JOIN t5 USING(id) LEFT JOIN t6 USING(id)
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t5 NATURAL RIGHT JOIN t4 NATURAL LEFT JOIN t6
     ORDER BY 1;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t5 NATURAL RIGHT JOIN t4 NATURAL LEFT JOIN t6
     ORDER BY id;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL RIGHT JOIN t5 NATURAL RIGHT JOIN t6
     ORDER BY 1;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL RIGHT JOIN t5 NATURAL RIGHT JOIN t6
     ORDER BY id;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL FULL JOIN t5 NATURAL FULL JOIN t6
     ORDER BY 1;
  
    SELECT *, t4.id, t5.id, t6.id
      FROM t4 NATURAL FULL JOIN t5 NATURAL FULL JOIN t6
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t4 NATURAL FULL JOIN t6 NATURAL FULL JOIN t5
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t5 NATURAL FULL JOIN t4 NATURAL FULL JOIN t6
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t5 NATURAL FULL JOIN t6 NATURAL FULL JOIN t4
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t6 NATURAL FULL JOIN t4 NATURAL FULL JOIN t5
     ORDER BY id;
  
    SELECT id, x, y, z, t4.id, t5.id, t6.id
      FROM t6 NATURAL FULL JOIN t5 NATURAL FULL JOIN t4
     ORDER BY id;
  
    SELECT id, w, x, y, z
      FROM t3 FULL JOIN t4 USING(id)
              NATURAL FULL JOIN t5
              FULL JOIN t6 USING(id)
      ORDER BY 1;
  
    SELECT id, w, x, y, z
       FROM t3 JOIN dual AS d1 ON true
               FULL JOIN t4 USING(id)
               JOIN dual AS d2 ON true
               NATURAL FULL JOIN t5
               JOIN dual AS d3 ON true
               FULL JOIN t6 USING(id)
               CROSS JOIN dual AS d4
      ORDER BY 1;
  
    SELECT id, w, x, y, z
       FROM t3 JOIN dual AS d1 ON true
               FULL JOIN t4 USING(id)
               JOIN dual AS d2 ON true
               NATURAL FULL JOIN t5
               JOIN dual AS d3 ON true
               FULL JOIN t6 USING(id)
               CROSS JOIN dual AS d4
      WHERE x<>'bob' OR x IS NULL
      ORDER BY 1;
  
    WITH t7(id,a) AS MATERIALIZED (SELECT * FROM t4 WHERE false)
    SELECT *
      FROM t7 
           JOIN t7 AS t7b USING(id)
           FULL JOIN t3 USING(id);
  
    SELECT *
      FROM (t3 NATURAL FULL JOIN t4)
           NATURAL FULL JOIN
           (t5 NATURAL FULL JOIN t6)
    ORDER BY 1;
  
    SELECT *
      FROM t3 NATURAL FULL JOIN 
           (t4 NATURAL FULL JOIN
            (t5 NATURAL FULL JOIN t6))
    ORDER BY 1;
  
    SELECT *
      FROM t3 FULL JOIN (
                t4 FULL JOIN (
                    t5 FULL JOIN t6 USING (id)
                ) USING(id)
           ) USING(id)
    ORDER BY 1;
  
    SELECT *
      FROM t3 FULL JOIN (
                t4 FULL JOIN (
                    t5 FULL JOIN t6 USING (id)
                ) USING(id)
           ) USING(id)
    ORDER BY 1;
  
    SELECT *
      FROM t3 FULL JOIN (
               t4 FULL JOIN (
                   t5 FULL JOIN t6 USING(id)
               ) USING(id)
           ) AS j1 ON j1.id=t3.id
     ORDER BY coalesce(t3.id,j1.id);
  
    SELECT *
      FROM t3 FULL JOIN (
                t4 RIGHT JOIN (
                    t5 FULL JOIN t6 USING(id)
                ) USING(id)
           ) AS j1 ON j1.id=t3.id
     ORDER BY coalesce(t3.id,j1.id);
  
    SELECT *
      FROM t3 FULL JOIN (
                t4 LEFT JOIN (
                    t5 FULL JOIN t6 USING(id)
                ) USING(id)
           ) AS j1 ON j1.id=t3.id
     ORDER BY coalesce(t3.id,j1.id);
  
    WITH t56(id,y,z) AS (SELECT * FROM t5 FULL JOIN t6 USING(id) LIMIT 50)
    SELECT id,x,y,z FROM t4 JOIN t56 USING(id)
    ORDER BY 1;
  
    SELECT id,x,y,z
      FROM t4 INNER JOIN (t5 FULL JOIN t6 USING(id)) USING(id)
     ORDER BY 1;
  
    SELECT id,x,y,z
      FROM t4 FULL JOIN t5 USING(id) INNER JOIN t6 USING(id)
     ORDER BY 1;
  
    WITH t45(id,x,y) AS (SELECT * FROM t4 FULL JOIN t5 USING(id) LIMIT 50)
    SELECT id,x,y,z FROM t45 JOIN t6 USING(id)
    ORDER BY 1;
  