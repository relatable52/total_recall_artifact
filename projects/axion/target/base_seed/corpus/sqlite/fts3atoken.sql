
    CREATE VIRTUAL TABLE x1 USING fts3(name,TOKENIZE icu en_US);
    insert into x1 (name) values (NULL);
    insert into x1 (name) values (NULL);
    delete from x1;
  