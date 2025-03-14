
  CREATE VIRTUAL TABLE x1 USING FTS4(a, b, c);
  INSERT INTO x1(docid,a,b,c) VALUES(0, 'K H D S T', 'V M N Y K', 'S Z N Q S');
  INSERT INTO x1(docid,a,b,c) VALUES(1, 'K N J L W', 'S Z W J Q', 'D U W S E');
  INSERT INTO x1(docid,a,b,c) VALUES(2, 'B P M O I', 'R P H W S', 'R J L L E');
  INSERT INTO x1(docid,a,b,c) VALUES(3, 'U R Q M L', 'M J K A V', 'Q W J T J');
  INSERT INTO x1(docid,a,b,c) VALUES(4, 'N J C Y N', 'R U D X V', 'B O U A Q');
  INSERT INTO x1(docid,a,b,c) VALUES(5, 'Q L X L U', 'I F N X S', 'U Q A N Y');
  INSERT INTO x1(docid,a,b,c) VALUES(6, 'M R G U T', 'U V I Q P', 'X Y D L S');
  INSERT INTO x1(docid,a,b,c) VALUES(7, 'D Y P O I', 'X J P K R', 'V O T H V');
  INSERT INTO x1(docid,a,b,c) VALUES(8, 'R Y D L R', 'U U E S J', 'N W L M R');
  INSERT INTO x1(docid,a,b,c) VALUES(9, 'Z P F N P', 'W A X D U', 'V A E Q A');
  INSERT INTO x1(docid,a,b,c) VALUES(10, 'Q I A Q M', 'N D K H C', 'A H T Q Z');
  INSERT INTO x1(docid,a,b,c) VALUES(11, 'T E R Q B', 'C I B C B', 'F Z U W R');
  INSERT INTO x1(docid,a,b,c) VALUES(12, 'E S V U W', 'T P F W H', 'A M D J Q');
  INSERT INTO x1(docid,a,b,c) VALUES(13, 'X S B X Y', 'U D N D P', 'X Z Y G F');
  INSERT INTO x1(docid,a,b,c) VALUES(14, 'K H A B L', 'S R C C Z', 'D W E H J');
  INSERT INTO x1(docid,a,b,c) VALUES(15, 'C E U C C', 'W F M N M', 'T Z U X T');
  INSERT INTO x1(docid,a,b,c) VALUES(16, 'Q G C G H', 'H N N B H', 'B Q I H Y');
  INSERT INTO x1(docid,a,b,c) VALUES(17, 'Q T S K B', 'W B D Y N', 'V J P E C');
  INSERT INTO x1(docid,a,b,c) VALUES(18, 'A J M O Q', 'L G Y Y A', 'G N M R N');
  INSERT INTO x1(docid,a,b,c) VALUES(19, 'T R Y P Y', 'N V Y B X', 'L Z T N T');

  CREATE VIRTUAL TABLE x2 USING FTS4(a, b, c, order=DESC);
  INSERT INTO x2(docid, a, b, c) SELECT docid, a, b, c FROM x1;
SELECT docid FROM x1 WHERE x1 MATCH $matchSELECT docid FROM x2 WHERE x2 MATCH $match 
    INSERT INTO x1(x1) VALUES('optimize');
    INSERT INTO x2(x2) VALUES('optimize');
  
    SELECT snippet(x1, '[', ']', '...') FROM x1 WHERE x1 MATCH $match
  
    SELECT snippet(x2, '[', ']', '...') FROM x2 WHERE x2 MATCH $match
  
    SELECT mit(matchinfo(x1, 'x')) FROM x1 WHERE x1 MATCH $match
  
    SELECT mit(matchinfo(x2, 'x')) FROM x2 WHERE x2 MATCH $match
  
  CREATE VIRTUAL TABLE x3 USING fts3;
  INSERT INTO x3 VALUES('A B C');
  INSERT INTO x3 VALUES('B A C');

  CREATE VIRTUAL TABLE x4 USING fts4;
  INSERT INTO x4 VALUES('A B C');
  INSERT INTO x4 VALUES('B A C');

  SELECT * FROM x3 WHERE x3 MATCH '^A';

  SELECT * FROM x4 WHERE x4 MATCH '^A';
