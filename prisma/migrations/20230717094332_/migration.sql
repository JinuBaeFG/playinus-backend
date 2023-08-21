/*
  Warnings:

  - A unique constraint covering the columns `[contestTeamId,opponentTeamId]` on the table `ContestTournamentHistory` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestTournamentHistory_contestTeamId_opponentTeamId_key" ON "ContestTournamentHistory"("contestTeamId", "opponentTeamId");
