
  SELECT printf('%.*g',2147483647,0.01);

  SELECT format('%!.20g', 13.0);

  SELECT format('%.3e', 199990000.0);

  SELECT format('%.3f', 199990000.0);

  SELECT format('%.3g', 199990000.0);

  SELECT format('%.4e', 199990000.0);

  SELECT format('%.4f', 199990000.0);

  SELECT format('%.4g', 199990000.0);

  SELECT format('%.5e', 199990000.0);

  SELECT format('%.5f', 199990000.0);

  SELECT format('%.5g', 199990000.0);

  SELECT format('%.30f',1.0000000000000000076e-50);

  SELECT length( format('%,.249f', -5.0e-300) );
