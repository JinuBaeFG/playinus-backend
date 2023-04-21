/*
  Warnings:

  - Made the column `ImagePath` on table `SportsEvent` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "SportsEvent" ALTER COLUMN "ImagePath" SET NOT NULL;
