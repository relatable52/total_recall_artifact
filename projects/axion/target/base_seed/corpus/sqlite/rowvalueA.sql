
  SELECT (1, 2) IN ( (3, 4), (5, 6), (1, 3) );

  SELECT (1, 2) IN ( (3, 4), (5, 6), (1, 2) );

  SELECT (1, 2) IN ( (3, 2) );

  SELECT (1, 2) IN ( (1, 2) );

  SELECT (1, 2) IN ( );

  SELECT (1, 2) NOT IN ( );
