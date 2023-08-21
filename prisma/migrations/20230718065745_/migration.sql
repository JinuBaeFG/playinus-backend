/*
  Warnings:

  - You are about to drop the column `matchNo` on the `ContestTournamentHistory` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "ContestTournamentHistory_opponentTeamId_key";

-- AlterTable
ALTER TABLE "ContestTournamentGroup" ADD COLUMN     "matchNo" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP COLUMN "matchNo";
