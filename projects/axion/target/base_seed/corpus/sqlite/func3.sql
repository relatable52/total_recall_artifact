
  SELECT likelihood(9223372036854775807, 0.5);

  SELECT likelihood(-9223372036854775808, 0.5);

  SELECT likelihood(14.125, 0.5);

  SELECT likelihood(NULL, 0.5);

  SELECT likelihood('test-string', 0.5);

  SELECT quote(likelihood(x'010203000405', 0.5));

  SELECT likelihood(123, 1.0), likelihood(456, 0.0);

  SELECT unlikely(9223372036854775807);

  SELECT unlikely(-9223372036854775808);

  SELECT unlikely(14.125);

  SELECT unlikely(NULL);

  SELECT unlikely('test-string');

  SELECT quote(unlikely(x'010203000405'));

  SELECT likely(CAST(1 AS INT))=='1';

  SELECT unlikely(CAST(1 AS INT))=='1';

  SELECT likelihood(CAST(1 AS INT),0.5)=='1';

  SELECT likely(9223372036854775807);

  SELECT likely(-9223372036854775808);

  SELECT likely(14.125);

  SELECT likely(NULL);

  SELECT likely('test-string');

  SELECT quote(likely(x'010203000405'));
