-- AlterTable
ALTER TABLE "ContestTournamentGroup" ADD COLUMN     "contestMatchGroupId" TEXT;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" ADD COLUMN     "contestMatchGroupId" TEXT,
ALTER COLUMN "isWinner" SET DEFAULT false;

-- AddForeignKey
ALTER TABLE "ContestTournamentGroup" ADD CONSTRAINT "ContestTournamentGroup_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
