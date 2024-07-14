-- Write your migrate up statements here

CREATE TABLE IF NOT EXISTS links (
  "id" UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
  "trip_id" UUID NOT NULL,
  "title" VARCHAR(255) NOT NULL,
  "url" VARCHAR(255) NOT NULL
)

---- create above / drop below ----

DROP TABLE IF EXISTS activities;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
