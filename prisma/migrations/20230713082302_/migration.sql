/*
  Warnings:

  - You are about to drop the column `contestTeamName` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - You are about to drop the column `opponentTeamName` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[opponentTeamId]` on the table `ContestTournamentHistory` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestTeamName_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_opponentTeamName_fkey";

-- DropIndex
DROP INDEX "ContestTeam_teamName_key";

-- DropIndex
DROP INDEX "ContestTournamentHistory_opponentTeamName_key";

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP COLUMN "contestTeamName",
DROP COLUMN "opponentTeamName",
ADD COLUMN     "contestTeamId" TEXT,
ADD COLUMN     "opponentTeamId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "ContestTournamentHistory_opponentTeamId_key" ON "ContestTournamentHistory"("opponentTeamId");

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;
