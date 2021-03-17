/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */


CREATE TABLE project (
    -- d 8
    created_at TIMESTAMPTZ,
    -- d 8
    updated_at TIMESTAMPTZ,
    -- d 8
    author_id BIGINT NOT NULL,
    -- i 4
    id SERIAL PRIMARY KEY,
    -- i 4
    project_id INTEGER NOT NULL UNIQUE,
    -- i 4
    target_id INTEGER NOT NULL,
    -- i 2
    target_type VARCHAR(2) NOT NULL,
    -- s 2
    action SMALLINT NOT NULL,
    -- i 256
    title VARCHAR(256),
    -- i -1
    data TEXT
);
