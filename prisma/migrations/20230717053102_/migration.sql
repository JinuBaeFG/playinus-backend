-- AlterTable
ALTER TABLE "ContestTierGroup" ADD COLUMN     "startRound" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" ALTER COLUMN "status" SET DEFAULT 'NO_PARTY';
