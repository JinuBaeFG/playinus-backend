-- AlterTable
ALTER TABLE "ContestGroupMatchHistroy" ADD COLUMN     "matchNo" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentGroup" ALTER COLUMN "matchNo" DROP NOT NULL;
