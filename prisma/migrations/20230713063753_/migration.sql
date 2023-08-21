-- AlterTable
ALTER TABLE "ContestGroupMatchHistory" ADD COLUMN     "matchTimeHour" TEXT,
ADD COLUMN     "matchTimeMin" TEXT;

-- AlterTable
ALTER TABLE "ContestTournamentGroup" ADD COLUMN     "startTimeHour" TEXT,
ADD COLUMN     "startTimeMin" TEXT;
