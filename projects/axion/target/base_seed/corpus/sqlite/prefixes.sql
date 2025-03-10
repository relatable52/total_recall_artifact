 SELECT prefix_length($zLeft, $zRight) 
  CREATE TABLE t1(k TEXT UNIQUE, v INTEGER);
  INSERT INTO t1 VALUES
    ('aback', 1),
    ('abaft', 2),
    ('abandon', 3),
    ('abandoned', 4),
    ('abandoning', 5),
    ('abandonment', 6),
    ('abandons', 7),
    ('abase', 8),
    ('abased', 9),
    ('abasement', 10),
    ('abasements', 11),
    ('abases', 12),
    ('abash', 13),
    ('abashed', 14),
    ('abashes', 15),
    ('abashing', 16),
    ('abasing', 17),
    ('abate', 18),
    ('abated', 19),
    ('abatement', 20),
    ('abatements', 21);

    WITH finder(str) AS (
      SELECT (SELECT max(k) FROM t1 WHERE k<=$INPUT)
        UNION ALL
        SELECT (
          SELECT max(k) FROM t1 
          WHERE k<=substr($INPUT, 1, prefix_length(finder.str, $INPUT))
        ) FROM finder WHERE length(finder.str)>0
      )
    SELECT str FROM finder WHERE length(str)==prefix_length(str, $INPUT) LIMIT 1
  