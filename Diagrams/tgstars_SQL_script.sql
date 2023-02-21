-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/X6Jzf0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "tgstars" (
    "Vmag" FLOAT   NOT NULL,
    "Plx" FLOAT   NOT NULL,
    "e_Plx" FLOAT   NOT NULL,
    "B-V" FLOAT   NOT NULL,
    "Amag" FLOAT   NOT NULL,
    "TargetClass" INTEGER   NOT NULL,
    "StarNam" VARCHAR(20)   NOT NULL
);

