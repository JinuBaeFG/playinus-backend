/*
  Warnings:

  - The `areaLatitude` column on the `Facility` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `areaLongitude` column on the `Facility` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Facility" DROP COLUMN "areaLatitude",
ADD COLUMN     "areaLatitude" DOUBLE PRECISION,
DROP COLUMN "areaLongitude",
ADD COLUMN     "areaLongitude" DOUBLE PRECISION;
