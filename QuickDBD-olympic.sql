-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/axsMbA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "athlete" (
    "Athlete_ID" INTEGER   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Age" INT   NOT NULL,
    "Team" VARCHAR   NOT NULL,
    "NOC" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Season" VARCHAR   NOT NULL,
    "City" VARCHAR   NOT NULL,
    "Sport" VARCHAR   NOT NULL,
    "Event" VARCHAR   NOT NULL,
    "Medal" VARCHAR   NOT NULL,
    "Age_Ranges" VARCHAR   NOT NULL,
    CONSTRAINT "pk_athlete" PRIMARY KEY (
        "Athlete_ID"
     )
);

CREATE TABLE "noc" (
    "NOC" VARCHAR   NOT NULL,
    "region" VARCHAR   NOT NULL,
    CONSTRAINT "pk_noc" PRIMARY KEY (
        "NOC"
     )
);

ALTER TABLE "athlete" ADD CONSTRAINT "fk_athlete_NOC" FOREIGN KEY("NOC")
REFERENCES "noc" ("NOC");

