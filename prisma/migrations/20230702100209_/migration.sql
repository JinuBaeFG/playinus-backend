/*
  Warnings:

  - You are about to drop the column `opponetTeamId` on the `ContestGroupMatchHistroy` table. All the data in the column will be lost.
  - You are about to drop the column `opponetTeamId` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[opponentTeamId]` on the table `ContestGroupMatchHistroy` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[opponentTeamId]` on the table `ContestTournamentHistory` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_opponetTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_opponetTeamId_fkey";

-- DropIndex
DROP INDEX "ContestGroupMatchHistroy_opponetTeamId_key";

-- DropIndex
DROP INDEX "ContestTournamentHistory_opponetTeamId_key";

-- AlterTable
ALTER TABLE "ContestGroupMatchHistroy" DROP COLUMN "opponetTeamId",
ADD COLUMN     "opponentTeamId" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP COLUMN "opponetTeamId",
ADD COLUMN     "opponentTeamId" INTEGER;

-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistroy_opponentTeamId_key" ON "ContestGroupMatchHistroy"("opponentTeamId");

-- CreateIndex
CREATE UNIQUE INDEX "ContestTournamentHistory_opponentTeamId_key" ON "ContestTournamentHistory"("opponentTeamId");

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;
