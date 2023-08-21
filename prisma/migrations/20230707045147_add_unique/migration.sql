/*
  Warnings:

  - A unique constraint covering the columns `[contestId]` on the table `ContestTeam` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestTeam_contestId_key" ON "ContestTeam"("contestId");
