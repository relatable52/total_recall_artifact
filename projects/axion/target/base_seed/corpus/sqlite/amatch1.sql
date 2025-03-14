
    CREATE TABLE costs(iLang, cFrom, cTo, Cost);
    INSERT INTO costs VALUES(0, '', '?', 100);
    INSERT INTO costs VALUES(0, '?', '', 100);
    INSERT INTO costs VALUES(0, '?', '?', 150);
    CREATE TABLE vocab(w TEXT UNIQUE);
    INSERT OR IGNORE INTO vocab SELECT term FROM t1aux;
    CREATE VIRTUAL TABLE t2 USING approximate_match(
      vocabulary_table=t1aux,
      vocabulary_word=term,
      edit_distances=costs
    );
    CREATE VIRTUAL TABLE t3 USING approximate_match(
      vocabulary_table=vocab,
      vocabulary_word=w,
      edit_distances=costs
    );
    CREATE VIRTUAL TABLE t4 USING approximate_match(
        vocabulary_table=vtemp,
        vocabulary_word=w,
        edit_distances=costs
      );

      SELECT word, distance FROM t2
       WHERE word MATCH 'josxph' AND distance<300;
  
      SELECT word, distance FROM t3
       WHERE word MATCH 'josxph' AND distance<300;
  
      CREATE TEMP TABLE vtemp(w TEXT UNIQUE);
      INSERT OR IGNORE INTO vtemp SELECT term FROM t1aux;
  
      SELECT word, distance FROM t4
       WHERE word MATCH 'josxph' AND distance<300;
  
    SELECT word, distance FROM t2
     WHERE word MATCH 'joxxph' AND distance<=300;

    SELECT word, distance FROM t3
     WHERE word MATCH 'joxxph' AND distance<=300;

    SELECT word, distance FROM t2
     WHERE word MATCH 'joxxph' AND distance<300;

    SELECT word, distance FROM t3
     WHERE word MATCH 'joxxph' AND distance<300;
