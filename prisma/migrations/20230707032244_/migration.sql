/*
  Warnings:

  - A unique constraint covering the columns `[contestTeamId]` on the table `ContestGroupMatchHistroy` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[opponentTeamId]` on the table `ContestGroupMatchHistroy` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistroy_contestTeamId_key" ON "ContestGroupMatchHistroy"("contestTeamId");

-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistroy_opponentTeamId_key" ON "ContestGroupMatchHistroy"("opponentTeamId");
