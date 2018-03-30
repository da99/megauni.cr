
CREATE TABLE IF NOT EXISTS "message_type" (
  id            BIGSERIAL   PRIMARY KEY,
  owner_id      BIGINT      NOT NULL, -- refers to screen_name id
  owner_type_id SMALLINT    NOT NULL, -- type_id('Member') || type_id('Screen_Name')
  name          VARCHAR(30) NOT NULL CHECK(name = message_type_canonical(name)),
  display_name  VARCHAR(30) NOT NULL CHECK(name = message_type_canonical(name) AND UPPER(display_name) = name),
  created_at    timestamptz NOT NULL DEFAULT NOW(),

  UNIQUE (owner_id, name)
);
