/*
  Warnings:

  - You are about to drop the column `contestTeamName` on the `ContestTournamentHistory` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestTeamName_fkey";

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP COLUMN "contestTeamName",
ADD COLUMN     "name" TEXT;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_name_fkey" FOREIGN KEY ("name") REFERENCES "ContestTeam"("teamName") ON DELETE CASCADE ON UPDATE CASCADE;
