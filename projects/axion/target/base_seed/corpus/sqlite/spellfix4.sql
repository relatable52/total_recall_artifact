
  CREATE TABLE cost1(iLang, cFrom, cTo, iCost);
  INSERT INTO cost1 VALUES
    (0, '', '?',  97),
    (0, '?', '',  98),
    (0, '?', '?', 99),
    (0, 'm', 'n', 50),
    (0, 'n', 'm', 50)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('anchor','amchor');

  SELECT editdist3('anchor','anchoxr');

  SELECT editdist3('anchor','xanchor');

  SELECT editdist3('anchor','anchorx');

  SELECT editdist3('anchor','anchr');

  SELECT editdist3('anchor','ancho');

  SELECT editdist3('anchor','nchor');

  SELECT editdist3('anchor','anchur');

  SELECT editdist3('anchor','onchor');

  SELECT editdist3('anchor','anchot');

  SELECT editdist3('anchor','omchor');

  INSERT INTO cost1 VALUES
    (0, 'a', 'ä', 5),
    (0, 'ss', 'ß', 8)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('strasse','straße');
  SELECT editdist3('straße','strasse');

  SELECT editdist3('baume','bäume');

  SELECT editdist3('baum','bäume');

  INSERT INTO cost1 VALUES
    (0, 'ä', 'a', 5),
    (0, 'ß', 'ss', 8)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('strasse','straße');
  SELECT editdist3('straße','strasse');

  DELETE FROM cost1;
  INSERT INTO cost1 VALUES
    (0, '', '?',  97),
    (0, '?', '',  98),
    (0, '?', '?', 99),
    (0, 'a', 'e', 50),
    (0, 'a', 'i', 70),
    (0, 'a', 'o', 75),
    (0, 'a', 'u', 81),
    (0, 'e', 'a', 50),
    (0, 'e', 'i', 52),
    (0, 'e', 'o', 72),
    (0, 'e', 'u', 82),
    (0, 'i', 'a', 70),
    (0, 'i', 'e', 52),
    (0, 'i', 'o', 75),
    (0, 'i', 'u', 83),
    (0, 'o', 'a', 75),
    (0, 'o', 'e', 72),
    (0, 'o', 'i', 75),
    (0, 'o', 'u', 40),
    (0, 'u', 'a', 81),
    (0, 'u', 'e', 82),
    (0, 'u', 'i', 83),
    (0, 'u', 'o', 40),
    (0, 'm', 'n', 45),
    (0, 'n', 'm', 45)
  ;
  CREATE TABLE words(x TEXT);
  INSERT INTO words VALUES
   ('abraham'),
   ('action'),
   ('africa'),
   ('aladdin'),
   ('alert'),
   ('alien'),
   ('amazon'),
   ('analog'),
   ('animal'),
   ('apollo'),
   ('archive'),
   ('arnold'),
   ('aspirin'),
   ('august'),
   ('average'),
   ('bahama'),
   ('bambino'),
   ('barcode'),
   ('bazooka'),
   ('belgium'),
   ('between'),
   ('biology'),
   ('blonde'),
   ('border'),
   ('brave'),
   ('british'),
   ('bucket'),
   ('button'),
   ('caesar'),
   ('camilla'),
   ('cannon'),
   ('caramel'),
   ('carpet'),
   ('catalog'),
   ('century'),
   ('chaos'),
   ('chef'),
   ('china'),
   ('circus'),
   ('classic'),
   ('clinic'),
   ('coconut'),
   ('combine'),
   ('complex'),
   ('congo'),
   ('convert'),
   ('cosmos'),
   ('crack'),
   ('crown'),
   ('cyclone'),
   ('deal'),
   ('delete'),
   ('denver'),
   ('detail'),
   ('diana'),
   ('direct'),
   ('dolby'),
   ('double'),
   ('dublin'),
   ('echo'),
   ('edition'),
   ('electra'),
   ('emotion'),
   ('enjoy'),
   ('escape'),
   ('everest'),
   ('exile'),
   ('express'),
   ('family'),
   ('ferrari'),
   ('filter'),
   ('fish'),
   ('florida'),
   ('ford'),
   ('forum'),
   ('frank'),
   ('frozen'),
   ('gallery'),
   ('garlic'),
   ('geneva'),
   ('gibson'),
   ('gloria'),
   ('gordon'),
   ('gravity'),
   ('ground'),
   ('habitat'),
   ('harlem'),
   ('hazard'),
   ('herbert'),
   ('hobby'),
   ('house'),
   ('icon'),
   ('immune'),
   ('india'),
   ('inside'),
   ('isotope'),
   ('jamaica'),
   ('jazz'),
   ('joker'),
   ('juliet'),
   ('jupiter'),
   ('kevin'),
   ('korea'),
   ('latin'),
   ('legal'),
   ('lexicon'),
   ('limbo'),
   ('lithium'),
   ('logo'),
   ('lucas'),
   ('madrid'),
   ('major'),
   ('manual'),
   ('mars'),
   ('maximum'),
   ('medical'),
   ('mental'),
   ('meter'),
   ('miguel'),
   ('mimosa'),
   ('miranda'),
   ('modern'),
   ('money'),
   ('morgan'),
   ('motor'),
   ('mystic'),
   ('nebula'),
   ('network'),
   ('nice'),
   ('nitro'),
   ('norway'),
   ('nurse'),
   ('octavia'),
   ('olympic'),
   ('opus'),
   ('orient'),
   ('othello'),
   ('pacific'),
   ('panama'),
   ('paper'),
   ('parking'),
   ('pasta'),
   ('paul'),
   ('people'),
   ('permit'),
   ('phrase'),
   ('pilgrim'),
   ('planet'),
   ('pocket'),
   ('police'),
   ('popular'),
   ('prefer'),
   ('presto'),
   ('private'),
   ('project'),
   ('proxy'),
   ('python'),
   ('quota'),
   ('rainbow'),
   ('raymond'),
   ('region'),
   ('report'),
   ('reward'),
   ('risk'),
   ('robot'),
   ('rose'),
   ('russian'),
   ('sailor'),
   ('salt'),
   ('saturn'),
   ('scorpio'),
   ('second'),
   ('seminar'),
   ('shadow'),
   ('shave'),
   ('shock'),
   ('silence'),
   ('sinatra'),
   ('sleep'),
   ('social'),
   ('sonata'),
   ('spain'),
   ('sphere'),
   ('spray'),
   ('state'),
   ('stone'),
   ('strong'),
   ('sugar'),
   ('supreme'),
   ('swing'),
   ('talent'),
   ('telecom'),
   ('thermos'),
   ('tina'),
   ('tommy'),
   ('torso'),
   ('trade'),
   ('trick'),
   ('tropic'),
   ('turtle'),
   ('uniform'),
   ('user'),
   ('vega'),
   ('vertigo'),
   ('village'),
   ('visible'),
   ('vocal'),
   ('voyage'),
   ('weekend'),
   ('winter'),
   ('year'),
   ('zipper')
  ;
  SELECT editdist3('cost1');

  SELECT editdist3(a.x,b.x), a.x, b.x
    FROM words a, words b
   WHERE a.x<b.x
   ORDER BY 1, 2
   LIMIT 20

  SELECT md5sum(ed||'/'||sx||'/'||sy||',') FROM (
      SELECT editdist3(a.x,b.x) AS ed, a.x AS sx, b.x AS sy
        FROM words a, words b
       WHERE a.x<b.x
       ORDER BY 1, 2
  )
