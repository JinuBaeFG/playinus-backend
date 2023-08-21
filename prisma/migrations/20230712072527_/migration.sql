-- AlterTable
ALTER TABLE "ContestTournamentHistory" ADD COLUMN     "contestTierGroupId" TEXT;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;
