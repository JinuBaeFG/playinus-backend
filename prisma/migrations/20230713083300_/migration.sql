/*
  Warnings:

  - A unique constraint covering the columns `[teamName,contestId]` on the table `ContestTeam` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "ContestTeam_contestId_key";

-- CreateIndex
CREATE UNIQUE INDEX "ContestTeam_teamName_contestId_key" ON "ContestTeam"("teamName", "contestId");
