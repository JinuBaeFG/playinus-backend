/*
  Warnings:

  - You are about to drop the column `addAddr` on the `Facility` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[name]` on the table `FacilityTag` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Facility" DROP COLUMN "addAddr";

-- CreateIndex
CREATE UNIQUE INDEX "FacilityTag_name_key" ON "FacilityTag"("name");
