
  PRAGMA table_info(pragma_function_list)

  SELECT DISTINCT name, builtin
    FROM pragma_function_list WHERE name='upper' AND builtin

  SELECT DISTINCT name, builtin
    FROM pragma_function_list WHERE name LIKE 'exter%';

    PRAGMA table_info(pragma_module_list)
  
    SELECT * FROM pragma_module_list WHERE name='fts5'
  
  PRAGMA table_info(pragma_pragma_list)

  SELECT * FROM pragma_pragma_list WHERE name='pragma_list'
