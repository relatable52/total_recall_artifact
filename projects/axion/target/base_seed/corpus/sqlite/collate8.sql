
  SELECT 'abc'==('ABC'||'') COLLATE nocase;
  SELECT 'abc'==('ABC'||'' COLLATE nocase);
  SELECT 'abc'==('ABC'||('' COLLATE nocase));
  SELECT 'abc'==('ABC'||upper('' COLLATE nocase));

  SELECT 'abc'==('ABC'||max('' COLLATE nocase,'' COLLATE binary));

  SELECT 'abc'==('ABC'||max('' COLLATE binary,'' COLLATE nocase));

  SELECT 'abc'==('ABC'||CASE WHEN 1-1=2 THEN '' COLLATE nocase
                                        ELSE '' COLLATE binary END);
  SELECT 'abc'==('ABC'||CASE WHEN 1+1=2 THEN '' COLLATE nocase
                                        ELSE '' COLLATE binary END);

  SELECT 'abc'==('ABC'||CASE WHEN 1=2 THEN '' COLLATE binary
                                      ELSE '' COLLATE nocase END);
