-- AlterTable
ALTER TABLE "ContestTeam" ADD COLUMN     "contestId" INTEGER;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("id") ON DELETE SET NULL ON UPDATE CASCADE;
