
BEGIN;
  ALTER DATABASE megauni_db OWNER TO db_owner ;
  ALTER DATABASE megauni_db WITH CONNECTION LIMIT = 5;
COMMIT;
