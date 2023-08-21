-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_name_fkey";

-- AlterTable
ALTER TABLE "ContestTournamentHistory" ADD COLUMN     "contestTeamName" TEXT;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTeamName_fkey" FOREIGN KEY ("contestTeamName") REFERENCES "ContestTeam"("teamName") ON DELETE CASCADE ON UPDATE CASCADE;
