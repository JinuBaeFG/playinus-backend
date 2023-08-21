-- AlterTable
ALTER TABLE "ContestGroupMatchHistroy" ADD COLUMN     "contestCourtId" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" ADD COLUMN     "contestCourtId" INTEGER;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestCourtId_fkey" FOREIGN KEY ("contestCourtId") REFERENCES "ContestCourt"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestCourtId_fkey" FOREIGN KEY ("contestCourtId") REFERENCES "ContestCourt"("id") ON DELETE SET NULL ON UPDATE CASCADE;
