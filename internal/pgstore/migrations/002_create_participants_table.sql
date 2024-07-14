-- Write your migrate up statements here

CREATE TABLE IF NOT EXISTS participants (
  "id" UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
  "trip_id" UUID NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "is_confirmed" BOOLEAN NOT NULL DEFAULT FALSE
)

---- create above / drop below ----

DROP TABLE IF EXISTS participants;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
