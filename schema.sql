-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/axsMbA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE "athlete" (
    "athlete_id" INTEGER   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "age" INT,
    "team" VARCHAR   NOT NULL,
    "noc_id" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "season" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "sport" VARCHAR   NOT NULL,
    "event" VARCHAR   NOT NULL,
    "medal" VARCHAR   NOT NULL,
    "age_ranges" VARCHAR
);

CREATE TABLE "noc" (
    "noc_id" VARCHAR   NOT NULL,
    "region" VARCHAR
);

