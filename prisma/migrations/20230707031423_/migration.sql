/*
  Warnings:

  - A unique constraint covering the columns `[contestTeamId,opponentTeamId]` on the table `ContestGroupMatchHistroy` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "ContestGroupMatchHistroy_contestTeamId_opponentTeamId_idx";

-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistroy_contestTeamId_opponentTeamId_key" ON "ContestGroupMatchHistroy"("contestTeamId", "opponentTeamId");
