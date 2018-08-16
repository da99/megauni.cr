
SET ROLE db_owner;

CREATE TYPE privacy_level AS ENUM (
  'me_only',
  'private', -- as in: This is a private club.
  'public'   -- as in: world-readable
);

COMMIT;

