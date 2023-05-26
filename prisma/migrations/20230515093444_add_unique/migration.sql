/*
  Warnings:

  - A unique constraint covering the columns `[discription,awardDate]` on the table `FacilityInfo` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "FacilityInfo_discription_awardDate_key" ON "FacilityInfo"("discription", "awardDate");
