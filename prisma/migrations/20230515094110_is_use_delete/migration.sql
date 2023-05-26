/*
  Warnings:

  - You are about to drop the column `isCustom` on the `FacilityTag` table. All the data in the column will be lost.
  - You are about to drop the column `isUse` on the `FacilityTag` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "FacilityTag" DROP COLUMN "isCustom",
DROP COLUMN "isUse",
ALTER COLUMN "imagePath" DROP NOT NULL;
