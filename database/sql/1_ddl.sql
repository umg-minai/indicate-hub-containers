CREATE TYPE indicate_qi.aggregation_kind AS ENUM('weekly', 'monthly', 'yearly');

CREATE TABLE indicate_qi.aggregated_results (
  result_id            INTEGER                      NOT NULL,
  provider_id          varchar(36)                  NOT NULL, -- 16 byte UUID with 4 dashes
  indicator_concept_id INTEGER                      NOT NULL,
  aggregation_kind     indicate_qi.aggregation_kind NOT NULL,
  period_start         TIMESTAMP                    NOT NULL,
  average_value        NUMERIC                      NOT NULL,
  observation_count    INTEGER                      NOT NULL,
  upload_time          TIMESTAMP                    NOT NULL
);
