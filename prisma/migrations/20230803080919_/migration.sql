-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestId_fkey";

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE SET NULL ON UPDATE CASCADE;
