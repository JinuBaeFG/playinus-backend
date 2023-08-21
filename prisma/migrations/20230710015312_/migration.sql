/*
  Warnings:

  - A unique constraint covering the columns `[contestMatchGroupId,contestTeamId]` on the table `ContestGroupMatchResult` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchResult_contestMatchGroupId_contestTeamId_key" ON "ContestGroupMatchResult"("contestMatchGroupId", "contestTeamId");
