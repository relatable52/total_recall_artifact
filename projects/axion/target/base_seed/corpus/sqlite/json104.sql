
  SELECT json_patch('{
       "a": "b",
       "c": {
         "d": "e",
         "f": "g"
       
  SELECT json_patch('{
       "a": "b",
       "c": {
         "d": "e",
         "f": "g"
       
  SELECT json_patch('{
       a: "b",
       c: {
         d: "e",
         f: "g"
       
  SELECT json_patch('{
       a: "b",
       c: {
         d: "e",
         f: "g"
       
  SELECT json_patch('{
       "title": "Goodbye!",
       "author" : {
         "givenName" : "John",
         "familyName" : "Doe"
       
  SELECT json_patch('[1,2,3]','{"x":null
  SELECT json_patch('[1,2,3]','{"x":null,"y":1,"z":null
  SELECT json_patch('{
  SELECT json_patch('{
  SELECT json_patch('{
  SELECT json_patch('{"a":"b"
  SELECT coalesce(json_patch(null,'{"a":"c"
  SELECT json_patch('{"a":"b"
  SELECT json_patch('{"a":"b"
  SELECT json_patch('{"a":"b","b":"c"
  SELECT json_patch('{"a":["b"]
  SELECT json_patch('{"a":"c"
  SELECT json_patch('{"a":{"b":"c"
  SELECT json_patch('{"a":[{"b":"c"
  SELECT json_patch('["a","b"]','["c","d"]');

  SELECT json_patch('{"a":"b"
  SELECT json_patch('{"a":"foo"
  SELECT coalesce(json_patch('{"a":"foo"
  SELECT json_patch('{"a":"foo"
  SELECT json_patch('{"e":null
  SELECT json_patch('[1,2]','{"a":"b","c":null
  SELECT json_patch('{
  SELECT json_patch('{"x":{"one":1
  CREATE TABLE obj(x);
  INSERT INTO obj VALUES('{"a":1,"b":2
  UPDATE obj SET x = json_insert(x, '$.c', 3);
  SELECT * FROM obj;

  SELECT json_extract(x, '$.b') FROM obj;
  SELECT json_extract(x, '$."b"') FROM obj;

  UPDATE obj SET x = json_set(x, '$."b"', 555);
  SELECT json_extract(x, '$.b') FROM obj;
  SELECT json_extract(x, '$."b"') FROM obj;

  UPDATE obj SET x = json_set(x, '$."d"', 4);
  SELECT json_extract(x, '$."d"') FROM obj;
